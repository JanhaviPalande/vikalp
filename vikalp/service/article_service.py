from mezzanine.blog.models import BlogCategory
from vikalp.models import Article
from vikalp.service.raw_queries import raw_query_to_get_all_articles_assigned_to_tag_id

NUMBER_OF_PROMOTED_ARTICLES_TO_BE_FETECHED = 3


class ArticleService():
    def get_promoted_articles(self):
        return Article.objects.filter(promoted='t')[:NUMBER_OF_PROMOTED_ARTICLES_TO_BE_FETECHED]

    def get_all_articles(self):
        articles = Article.objects.all()
        return articles

    def get_all_published_articles(self, request):
        articles = Article.objects.published(for_user=request.user)
        return articles

    def rendered_query_to_fetch_all_articles_under_tag(self, content_type, tag):
        return raw_query_to_get_all_articles_assigned_to_tag_id % (str(tag.id), str(content_type.pk))

    def get_all_articles_under_tag(self, content_type, tag):
        return Article.objects.raw(self.rendered_query_to_fetch_all_articles_under_tag(content_type, tag))

    def get_all_articles_in_category(self, articles, category):
        return articles.filter(categories=category)

    def get_all_article_categories(self):
        return BlogCategory.objects.all()




