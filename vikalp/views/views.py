import json
import os
from urlparse import urlparse, urljoin
from django.contrib.admin.views.decorators import staff_member_required
from django.contrib.staticfiles import finders
from django.forms import forms
from django.http import HttpResponse
from django.shortcuts import render
from django.template import RequestContext
from mezzanine.conf import settings
from mezzanine.core.models import Displayable
from mezzanine.generic import get_model
from vikalp.service.article_service import ArticleService
from vikalp.service.page_service import PageService
from django.utils.translation import ugettext_lazy as _
from gmapi import maps
from gmapi.forms.widgets import GoogleMap




MODEL_NAME = "article"
APP_NAME = "vikalp"

articleService = ArticleService()
pageService = PageService()


@staff_member_required
def static_proxy(request):
    url = request.GET["u"]
    url = url.split('/static/')
    host = url[0]
    url = ''.join(url[1:])
    response = ""
    mimetype = ""
    path = finders.find(url)
    if path:
        if isinstance(path, (list, tuple)):
            path = path[0]
        if url.endswith(".htm"):
            static_url = settings.STATIC_URL + os.path.split(url)[0] + "/"
            if not urlparse(static_url).scheme:
                static_url = urljoin(host, static_url)
            base_tag = "<base href='%s'>" % static_url
            mimetype = "text/html"
            with open(path, "r") as f:
                response = f.read().replace("<head>", "<head>" + base_tag)
        else:
            mimetype = "application/octet-stream"
            with open(path, "rb") as f:
                response = f.read()
    return HttpResponse(response, mimetype=mimetype)


def search(request, template="search_results.html"):
    """
    Display search results. Takes an optional "contenttype" GET parameter
    in the form "app-name.ModelName" to limit search results to a single model.
    """
    settings.use_editable()
    query = request.GET.get("q", "")
    # page = request.GET.get("page", 1)
    page_template = "search_results_page.html"
    # per_page = settings.SEARCH_PER_PAGE
    # max_paging_links = settings.MAX_PAGING_LINKS
    try:
        search_model = get_model(*request.GET.get("type", "").split(".", 1))
        if not issubclass(search_model, Displayable):
            raise TypeError
    except TypeError:
        search_model = Displayable
        search_type = _("Everything")
    else:
        search_type = search_model._meta.verbose_name_plural.capitalize()
    results = search_model.objects.search(query, for_user=request.user)
    if request.is_ajax():
        template = page_template
    context = {"query": query, "results": results,
               "search_type": search_type, "page_template": page_template}
    return render(request, template, context, context_instance=RequestContext(request))


class MapForm(forms.Form):
    map = forms.Field(widget=GoogleMap(attrs={'width': 510, 'height': 510}))


class ArticleMap:
    def __init__(self, latLng, infos=None):
        self.gmap = maps.Map(opts={
            'center': latLng,
            'mapTypeId': maps.MapTypeId.ROADMAP,
            'zoom': 5,
            'mapTypeControlOptions': {
                'style': maps.MapTypeControlStyle.DEFAULT
            },
        })
        if(infos):
            self.infos = map(self.get_info, infos)

    def get_marker(self, articleMarker):
        return articleMarker.marker

    def get_info(self, ArticleInfo):
        return ArticleInfo.info

    def open_window(self, info, marker):
        info.open(self.gmap, marker)

    def assign_markers(self, articleMarkers):
        self.markers = map(self.get_marker, articleMarkers)

    def add_window_to_markers(self):
        map(self.open_window, self.infos, self.markers)


class ArticleMarker:
    def __init__(self, latLong, map):
        self.marker = maps.Marker(opts={
            'map': map,
            'position': latLong,
        })
        maps.event.addListener(self.marker, 'click', 'myobj.markerOver')


class ArticleInfo:
    def __init__(self, content):
        self.info = maps.InfoWindow({
            'content': content,
            'disableAutoPan': True
        })


def create_article_info(content):
    return ArticleInfo(content)


def create_article_marker(latLong, gmap):
    return ArticleMarker(latLong, gmap)


def get_article_link(article):
    return "<a href=%s>%s</a>" % (article.get_absolute_url(), article.title)


def get_article_lat_long(article):
    return maps.LatLng(article.lattitude, article.longitude)

def google_map(request, template="map.html"):
    center_lag_lng = maps.LatLng(22.0941427, 75.4569642)
    articles = articleService.get_articles_with_lat_long()
    if(articles):
        contentList = map(get_article_link, articles)
        articleInfos = map(create_article_info, contentList)
        latLongList = map(get_article_lat_long, articles)
        article_map = ArticleMap(center_lag_lng, articleInfos)
        articleMarkers = map(create_article_marker, latLongList, [article_map.gmap])
        article_map.assign_markers(articleMarkers)
        article_map.add_window_to_markers()
    else:
        article_map = ArticleMap(center_lag_lng)
    context = {'form': MapForm(initial={'map': article_map.gmap})}
    return render(request, template, context)