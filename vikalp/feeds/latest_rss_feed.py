from django.contrib.syndication.views import Feed
from django.utils.feedgenerator import Rss201rev2Feed
from mezzanine.core.models import CONTENT_STATUS_PUBLISHED
from django.contrib.sites.models import Site
import pytz, datetime
from vikalp.models import Article


class ExtendedRssFeed(Rss201rev2Feed):
    mime_type = 'application/xml'

    def root_attributes(self):
        attrs = super(ExtendedRssFeed, self).root_attributes()
        attrs['xmlns:article'] = "http://" + Site.objects.get_current() + "/article"
        return attrs

    def add_item_elements(self, handler, item):
        super(ExtendedRssFeed, self).add_item_elements(handler, item)
        handler.addQuickElement('article:category', item['category'])


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

    def item_extra_kwargs(self, item):
        article_category = item.article_categories.filter()[:1]
        if article_category:
            category = article_category.get().title
        else:
            category = "Uncategorised"
        return {'category': category}
