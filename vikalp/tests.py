from django.test import TestCase
from django.core.urlresolvers import reverse
from models import Article
from random import randint

class ArticleTest(TestCase):
    def create_article(self,title = "Test Title",content="Test Content",promoted = "t",user_id = randint(1,100), description = "Test Description"):
        return Article.objects.create(title=title,content=content,promoted=promoted, user_id = user_id, description = description)

    def setUp(self):
        self.article = self.create_article()
        url = reverse("vikalp.views.promoted_article_on_homepage")
        self.response = self.client.get(url)

    def test_article_model_creation(self):
        self.assertTrue(isinstance(self.article, Article))

    def test_article_returned_url(self):
        self.assertEqual("/blog/" + (self.article.title.lower()).replace(" ","-") + "/",self.article.get_absolute_url())

    def test_promoted_article_response(self):
        self.assertEqual(self.response.status_code, 200)

    def test_promoted_article_view_title(self):
        self.assertIn(self.article.title, self.response.content)

    def test_promoted_article_view_description(self):
        self.assertIn(self.article.description, self.response.content)

    def test_promoted_article_view_auto_generated_description(self):
        self.assertIn(self.article.description_from_content(), self.response.content)
