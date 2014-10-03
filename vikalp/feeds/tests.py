import datetime
import pytz
from random import randint
from datetime import timedelta

from django.test import TestCase
from mezzanine.core.models import CONTENT_STATUS_PUBLISHED
from mezzanine.core.models import CONTENT_STATUS_DRAFT

from vikalp.feeds.latest_rss_feed import LatestFeeds
from vikalp.models import Article, ArticleCategory


class FeedsTest(TestCase):
    def create_article(self, title="Test Title", content="Test Content", promoted="t", user_id=randint(1, 100),
                       description="Test Description", status=CONTENT_STATUS_PUBLISHED,
                       publish_date=datetime.datetime.utcnow().replace(tzinfo=pytz.utc)):
        article = Article.objects.create(title=title, content=content, promoted=promoted, user_id=user_id,
                                         description=description, status=status, publish_date=publish_date)
        article.article_categories.add(ArticleCategory.objects.create(title="Test Category"))
        return article

    def test_rss_feed_excludes_draft(self):
        self.create_article(status=CONTENT_STATUS_DRAFT)
        rss_feed = LatestFeeds().items()
        self.assertEqual(0, len(rss_feed), "Draft Should be excluded from RSS Feeds")

    def test_rss_feed_includes_currently_published_articles(self):
        current_time = datetime.datetime.utcnow().replace(tzinfo=pytz.utc)
        published_article = self.create_article(title='Published Article', publish_date=current_time,
                                                status=CONTENT_STATUS_PUBLISHED)
        feeds__items = LatestFeeds().items()
        self.assertTrue(any([article == published_article for article in feeds__items]),
                        "Published article should be present in RSS Feed")

    def test_rss_feed_excludes_future_article(self):
        current_time = datetime.datetime.utcnow().replace(tzinfo=pytz.utc)
        future_time = current_time + timedelta(days=2)
        future_article = self.create_article(title='Future Article', publish_date=future_time)
        feeds__items = LatestFeeds().items()
        self.assertFalse(any([article == future_article for article in feeds__items]),
                         "Articles not yet published should not be in RSS Feed")

    def test_feed_excludes_article_without_categories(self):
        article = self.create_article()
        article.article_categories.clear()
        rss_feed = LatestFeeds().items()
        self.assertEqual(0, len(rss_feed))

    def test_recent_article_in_feed(self):
        inserted_article = self.create_article(title="Test RSS Feed Article")
        recent_articles = Article.objects.filter()
        most_recent_article = recent_articles.order_by('-publish_date')[0]
        self.assertEqual(most_recent_article, inserted_article,
                         "The recent article should be the last inserted article")
