from django.test import TestCase
from mezzanine.blog.views import User
from mezzanine.conf import settings
from models import Article, ArticleCategory
from vikalp.views.article_list_view import ArticleList
from vikalp.views.category_page_view import CategoryPage
from vikalp.views.home_page_view import HomePage
from random import randint
from vikalp.local_settings import BLOG_SLUG, DEBUG, STATIC_URL, MEDIA_URL, TEMPLATE_DIRS, STATIC_ROOT, JQUERY_FILENAME, SITE_TAGLINE
from django.test import RequestFactory
from vikalp.service.article_service import ArticleService
from settings import SITE_TITLE
from vikalp.views.policy_edits_view import PolicyEdits, get_title


homePage = HomePage()
categoryPage = CategoryPage()
articleList = ArticleList()
policyEdits = PolicyEdits()


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
        self.assertEquals("Alternatives Forum!", SITE_TAGLINE)


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
        self.response = homePage.promoted_article_on_homepage(self.request)


    def test_article_view_title(self):
        self.assertIn("Home", self.response.content)

    def test_only_2_articles_displayed_on_homepage(self):
        self.assertNotIn(self.article1.title, self.response.content)
        self.assertNotIn(self.article2.title, self.response.content)
        self.assertIn(self.article3.title, self.response.content)
        self.assertIn(self.article4.title, self.response.content)

    def test_for_context_creation(self):
        self.context = homePage.get_context_for_promoted_articles([self.article1, self.article2], None, None)
        self.assertEquals(self.context['promoted_articles'], [self.article1, self.article2])


class ArticleServiceTest(TestCase):
    def create_article(self, title="Test Title", content="Test Content", promoted="t", user_id=randint(1, 100),
                       description="Test Description"):
        return Article.objects.create(title=title, content=content, promoted=promoted, user_id=user_id,
                                      description=description)

    def create_categories(self, title="category1"):
        return ArticleCategory.objects.create(title=title)

    def setUp(self):
        for i in range(1, 5):
            self.create_article(title="Title%s" % i)
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
        self.assertEquals(self.promoted_article_list.__len__(), 2)

    def test_get_policy_edits_category(self):
        self.create_categories(title="Policy Edits")
        category = self.articleService.get_policy_edit_category()
        self.assertIn("policy", reduce(get_title, category).title.lower())


class ArticleCategoryViewTest(TestCase):
    def setUp(self):
        self.factory = RequestFactory()
        self.request = self.factory.get('article/category/')
        self.request.user = User.objects.create_user(username='jacob', email='jacob', password='top_secret')
        self.response = categoryPage.category_list(self.request)

    def test_response_code(self):
        self.assertEquals(200, self.response.status_code)


class ArticleCategoryServiceTest(TestCase):
    def create_article(self, title="Test Title", content="Test Content", promoted="t", user_id=randint(1, 100),
                       description="Test Description"):
        return Article.objects.create(title=title, content=content, promoted=promoted, user_id=user_id,
                                      description=description)

    def create_categories(self, title="category1"):
        return ArticleCategory.objects.create(title=title)

    def add_categories(self, article):
        for article_category in self.article_categories:                               #REMOVE THIS
            article.article_categories.add(article_category)
        return article

    def setUp(self):
        self.articles = []
        self.article_categories = []
        for i in range(1, 5):
            self.articles.append(self.create_article(title="Title%s" % i, promoted='f'))
            self.article_categories.append(self.create_categories(title="category%s" % i))
        self.article_without_categories = self.create_article(title="No Category Article", promoted='f')
        self.articles = map(self.add_categories, self.articles)
        self.articleService = ArticleService()
        self.categories = self.articleService.get_all_article_categories()
        self.article_in_category = self.articleService.get_all_articles_in_category(self.article_categories[0])

    def test_get_all_categories(self):
        self.assertEquals(4, len(self.categories))

    def test_get_articles_in_category(self):
        self.assertEquals(4, len(self.article_in_category))

    def test_no_articles_returned_when_no_category_is_assigned(self):
        self.assertNotIn(self.article_without_categories, self.article_in_category)


class ArticleListTest(TestCase):
    def create_article(self, title="Test Title", content="Test Content", promoted="t", user_id=randint(1, 100),
                       description="Test Description"):
        return Article.objects.create(title=title, content=content, promoted=promoted, user_id=user_id,
                                      description=description)

    def setUp(self):
        self.articles = []
        for i in range(1, 21):
            self.articles.append(self.create_article(title="Title%s" % i, promoted='f'))
        self.factory = RequestFactory()
        self.request = self.factory.get('article/')
        self.request.user = User.objects.create_user(username='jacob', email='jacob', password='top_secret')

    def test_pagination(self):
        articles = articleList.paginate_article_list(articles=self.articles, request=self.request)
        self.assertEquals(settings.BLOG_POST_PER_PAGE, len(articles))

    def test_for_context_creation(self):
        self.context = articleList.get_context_for_article_list(self.articles)
        self.assertEquals(self.context['articles'], self.articles)


class PolicyEditsViewTest(TestCase):
    def setUp(self):
        self.factory = RequestFactory()
        self.request = self.factory.get('policy-edits')
        self.request.user = User.objects.create_user(username='jacob', email='jacob', password='top_secret')
        self.response = policyEdits.policy_edit_list(self.request)

    def test_response_code(self):
        self.assertEquals(200, self.response.status_code)
