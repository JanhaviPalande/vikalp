from django.contrib.syndication.views import Feed
from django.utils.feedgenerator import Rss201rev2Feed
from mezzanine.core.models import CONTENT_STATUS_PUBLISHED
import pytz
from vikalp.models import Article
import datetime


class ExtendedRssFeed(Rss201rev2Feed):
    mime_type = 'application/xml'


class LatestFeeds(Feed):

    feed_type = ExtendedRssFeed
    title = "Vikalp Sangam Recent Articles"
    link = "/feeds"
    description = "Updates in Vikalp Sangam"
    author = 'Vikalp Sangam'

    def items(self):
        articles_to_fetch = 15
        all_articles = Article.objects.filter(add_to_carousel=False, status=CONTENT_STATUS_PUBLISHED)
        published_articles = all_articles.filter(publish_date__lt=datetime.datetime.utcnow().replace(tzinfo=pytz.utc))
        return published_articles.order_by('-publish_date')[:articles_to_fetch]

    def item_title(self, item):
        return item.title

    def item_description(self, item):
        return item.description
