import re
from django.forms import forms
from django.shortcuts import render
from gmapi import maps
from gmapi.forms.widgets import GoogleMap
from vikalp.service.article_service import ArticleService


articleService = ArticleService()


class MapForm(forms.Form):
    map = forms.Field(widget=GoogleMap(attrs={'width': 500, 'height': 500}))


class MapFormForSideBar(forms.Form):
    map = forms.Field(widget=GoogleMap(attrs={'width': 285, 'height': 300}))


class ArticleMap:
    def __init__(self, latLng, infos=None, in_side_bar=False):
        if in_side_bar:
            self.gmap = maps.Map(opts={
                'center': latLng,
                'mapTypeId': maps.MapTypeId.ROADMAP,
                'zoom': 4,
                'scrollwheel': False,
                'zoomControl': False,
                'draggable': False,
                'mapTypeControlOptions': {
                    'style': maps.MapTypeControlStyle.DEFAULT
                },
            })
        else:
            self.gmap = maps.Map(opts={
                'center': latLng,
                'mapTypeId': maps.MapTypeId.ROADMAP,
                'zoom': 4,
                'mapTypeControlOptions': {
                    'style': maps.MapTypeControlStyle.DEFAULT
                },
            })
        if (infos):
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
    return maps.LatLng(article.latitude, article.longitude)


def get_article_map(in_side_bar=False):
    center_lag_lng = maps.LatLng(21.1610858, 79.0725102)
    articles = articleService.get_articles_with_lat_long()
    if (articles):
        contentList = map(get_article_link, articles)
        articleInfos = map(create_article_info, contentList)
        latLongList = map(get_article_lat_long, articles)
        if in_side_bar:
            article_map = ArticleMap(center_lag_lng, articleInfos, True)
        else:
            article_map = ArticleMap(center_lag_lng, articleInfos)
        articleMarkers = map(create_article_marker, latLongList, [article_map.gmap])
        article_map.assign_markers(articleMarkers)
        article_map.add_window_to_markers()
    else:
        if in_side_bar:
            article_map = ArticleMap(center_lag_lng, True)
        else:
            article_map = ArticleMap(center_lag_lng)
    return article_map.gmap


def google_map(request, template="map.html"):
    article_map = get_article_map()
    map_page = "map_page.html"
    context = {'form': MapForm(initial={'map': article_map}), 'map_page': map_page}
    return render(request, template, context)
