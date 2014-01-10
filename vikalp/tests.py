from django.test import TestCase
from django.core.urlresolvers import reverse
from mezzanine.blog.views import User
from models import Article
from vikalp.views import promoted_article_on_homepage, get_context_for_promoted_articles, get_model_content_type
from random import randint
from vikalp.local_settings import BLOG_SLUG, DEBUG, STATIC_URL, MEDIA_URL, TEMPLATE_DIRS, STATIC_ROOT, JQUERY_FILENAME, SITE_TITLE, SITE_TAGLINE
from django.test import RequestFactory
from vikalp.service.article_service import ArticleService
from mezzanine.blog.models import BlogCategory
import unittest
from settings import SITE_TITLE
from selenium import webdriver

class ArticleTest(TestCase):
    def create_article(self, title="Test Title", content="Test Content", promoted="t", user_id=randint(1, 100),
                       description="Test Description"):
        return Article.objects.create(title=title, content=content, promoted=promoted, user_id=user_id,
                                      description=description)

    def setUp(self):
        self.article = self.create_article()
        url = reverse("vikalp.views.promoted_article_on_homepage")
        self.response = self.client.get(url)

    def test_article_model_creation(self):
        self.assertTrue(isinstance(self.article, Article))

    def test_article_returned_url(self):
        self.assertEqual("/article/" + (self.article.title.lower()).replace(" ", "-") + "/",
                         self.article.get_absolute_url())

    def test_promoted_article_response(self):
        self.assertEqual(200, self.response.status_code)

    def test_promoted_article_view_title(self):
        self.assertIn(self.article.title, self.response.content)

    def test_promoted_article_view_description(self):
        self.assertIn(self.article.description, self.response.content)


class SettingsTest(TestCase):
    def test_article_slug(self):
        self.assertEquals(BLOG_SLUG, "article")

    def test_debug_true(self):
        self.assertTrue(DEBUG)

    def test_static_url(self):
        self.assertEquals(STATIC_URL, "/static/")

    def test_media_url(self):
        self.assertEquals(MEDIA_URL, "/static/media/")

    def test_template_dir(self):
        self.assertIn("templates", TEMPLATE_DIRS[0])

    def test_static_root(self):
        self.assertIn("static", STATIC_ROOT)

    def test_jquery_file_name(self):
        self.assertEquals("jquery-1.10.2.js", JQUERY_FILENAME)

    def test_check_site_title_tagline(self):
        self.assertEquals("Vikalp", SITE_TITLE)
        self.assertEquals("Alternatives website", SITE_TAGLINE)


class PromotedArticleViewTest(TestCase):
    def create_article(self, title="Test Title", content="Test Content", promoted="t", user_id=randint(1, 100),
                       description="Test Description"):
        return Article.objects.create(title=title, content=content, promoted=promoted, user_id=user_id,
                                      description=description)

    def setUp(self):
        self.article1 = self.create_article("Title1")
        self.article2 = self.create_article("Title2")
        self.article3 = self.create_article("Title3")
        self.article4 = self.create_article("Title4")
        self.factory = RequestFactory()
        self.request = self.factory.get('/')
        self.request.user = User.objects.create_user(username='jacob', email='jacob', password='top_secret')
        self.response = promoted_article_on_homepage(self.request)


    def test_article_view_title(self):
        self.assertIn("Home", self.response.content)

    def test_article_view_site_title(self):
        self.assertIn(SITE_TITLE, self.response.content)

    def test_article_view_site_tagline(self):
        self.assertIn(SITE_TAGLINE, self.response.content)

    def test_only_3_articles_displayed_on_homepage(self):
        self.assertNotIn(self.article1.title, self.response.content)
        self.assertIn(self.article2.title, self.response.content)
        self.assertIn(self.article3.title, self.response.content)
        self.assertIn(self.article4.title, self.response.content)

    def test_for_context_creation(self):
        self.context = get_context_for_promoted_articles([self.article1, self.article2])
        self.assertEquals(self.context['promoted_articles'], [self.article1, self.article2])


class ArticleServiceTest(TestCase):
    def create_article(self, title="Test Title", content="Test Content", promoted="t", user_id=randint(1, 100),
                       description="Test Description"):
        return Article.objects.create(title=title, content=content, promoted=promoted, user_id=user_id,
                                      description=description)

    def setUp(self):
        for i in range(1,5):
            self.create_article(title="Title%s" % i )
        self.articleService = ArticleService()
        self.promoted_article_list = self.articleService.get_promoted_articles()

    def get_promoted_field_from_article_list(self):
        return lambda x: x.promoted

    def iterate_promoted_article_list(self):
        return iter(self.articleService.get_promoted_articles())

    def get_list_of_promoted_fields_from_article_model_list(self):
        return map(self.get_promoted_field_from_article_list(), self.iterate_promoted_article_list())

    def test_promoted_articles_fetched_only(self):
        filter(self.assertTrue, self.get_list_of_promoted_fields_from_article_model_list())

    def test_promoted_articles_count_is_3(self):
        self.assertEquals(self.promoted_article_list.__len__(),3)

class CategoryViewTest(TestCase):

    def setUp(self):
        self.url = reverse("vikalp.views.category_list")
        self.response = self.client.get(self.url)

    def test_view_reverse_url(self):
        self.assertEquals("/stories/",self.url)

    def test_response_code(self):
        self.assertEquals(200, self.response.status_code)


class CategoryServiceTest(TestCase):
    def create_article(self, title="Test Title", content="Test Content", promoted="t", user_id=randint(1, 100),
                       description="Test Description"):
        return Article.objects.create(title=title, content=content, promoted=promoted, user_id=user_id,
                                  description=description)

    def create_categories(self, title="category1"):
        return BlogCategory.objects.create(title=title)

    def setUp(self):
        for i in range(1,5):
            self.create_article(title="Title%s" % i , promoted='f')
            self.create_categories(title="category%s" % i)

        self.articleService = ArticleService()
        self.article_list = self.articleService.get_all_articles()
        self.categories = self.articleService.get_all_article_categories()

    def test_all_articles_fetch(self):
        filter(self.assertTrue, self.article_list)
        self.assertEquals(4, len(self.article_list))

    def test_get_all_categories(self):
        self.assertEquals(4,len(self.categories))