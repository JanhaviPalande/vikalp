from random import randint
import datetime
from datetime import timedelta
from django.test import TestCase
from django.test import Client
from mezzanine.core.models import CONTENT_STATUS_DRAFT, CONTENT_STATUS_PUBLISHED
import pytz
from vikalp.feeds.latest_rss_feed import LatestFeeds
from vikalp.models import Article


class NewsletterTest(TestCase):
    def create_article(self, title="Test Title", content="Test Content", promoted="t", user_id=randint(1, 100),
                       description="Test Description", status=CONTENT_STATUS_PUBLISHED,
                       publish_date=datetime.datetime.utcnow().replace(tzinfo=pytz.utc)):
        return Article.objects.create(title=title, content=content, promoted=promoted, user_id=user_id,
                                      description=description, status=status, publish_date=publish_date)

    def test_subscribe_page_response(self):
        response = Client().get('/newsletter/subscribe')
        error_message = "Expected 200 Status Code from Response"
        self.assertEquals(200, response.status_code, error_message)

    def test_rss_feed_excludes_draft(self):
        self.create_article(status=CONTENT_STATUS_DRAFT)
        rss_feed = LatestFeeds().items()
        self.assertFalse(rss_feed.exists())

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
