from django.forms import forms
from django.shortcuts import render
from gmapi import maps
from gmapi.forms.widgets import GoogleMap
from vikalp.service.article_service import ArticleService


articleService = ArticleService()


class MapForm(forms.Form):
    map = forms.Field(widget=GoogleMap(attrs={'width': 500, 'height': 500, 'nojquery': True}))


class MapFormForSideBar(forms.Form):
    map = forms.Field(widget=GoogleMap(attrs={'width': 285, 'height': 300, 'nojquery': True}))


class ArticleMap:
    def __init__(self, latLng, infos=None, in_side_bar=False):
        self.gmap = maps.Map(opts={
            'center': latLng,
            'mapTypeId': maps.MapTypeId.ROADMAP,
            'zoom': 4,
            'scrollwheel': not in_side_bar,
            'zoomControl': not in_side_bar,
            'draggable': not in_side_bar,
            'mapTypeControlOptions': {
                'style': maps.MapTypeControlStyle.DEFAULT
            },
        })

        if infos:
            self.infos = map(self.get_info, infos)

    def get_marker(self, article_marker):
        return article_marker.marker

    def get_info(self, article_info):
        return article_info.info

    def open_window(self, info, marker):
        info.open(self.gmap, marker)

    def assign_markers(self, article_markers):
        self.markers = map(self.get_marker, article_markers)

    def add_window_to_markers(self):
        map(self.open_window, self.infos, self.markers)


class ArticleMarker:
    def __init__(self, lat_long, map):
        self.marker = maps.Marker(opts={
            'map': map,
            'position': lat_long,
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


def create_article_marker(lat_long, gmap):
    return ArticleMarker(lat_long, gmap)


def get_article_link(article):
    return "<a href=%s>%s</a>" % (article.get_absolute_url(), article.title)


def get_article_lat_long(article):
    return maps.LatLng(article.latitude, article.longitude)


def get_article_map(in_side_bar=False):
    center_lat_long = maps.LatLng(21.1610858, 79.0725102)
    articles = articleService.get_articles_with_lat_long()
    if articles:
        content_list = map(get_article_link, articles)
        articles_info = map(create_article_info, content_list)
        lat_long_list = map(get_article_lat_long, articles)
        article_map = ArticleMap(center_lat_long, infos=articles_info, in_side_bar=in_side_bar)
        article_markers = map(create_article_marker, lat_long_list, [article_map.gmap])
        article_map.assign_markers(article_markers)
        article_map.add_window_to_markers()
    else:
        article_map = ArticleMap(center_lat_long, in_side_bar=in_side_bar)
    return article_map.gmap


def google_map(request, template="map.html"):
    article_map = get_article_map()
    map_page = "map_page.html"
    context = {'form': MapForm(initial={'map': article_map}), 'map_page': map_page}
    return render(request, template, context)
