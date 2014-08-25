from django.contrib.syndication.views import Feed
from django.utils.feedgenerator import Rss201rev2Feed
from vikalp.models import Article


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
        recent_articles = Article.objects
        return recent_articles.order_by('-publish_date')[:articles_to_fetch]

    def item_title(self, item):
        return item.title

    def item_description(self, item):
        return item.description
