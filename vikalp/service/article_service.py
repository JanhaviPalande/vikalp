from django.contrib.comments import Comment
from vikalp.models import Article, ArticleCategory
from vikalp.service.raw_queries import raw_query_to_get_all_articles_assigned_to_a_tag_id
from vikalp.helper_functions.service_filter import remove_perspectives_from_categories
from mezzanine.conf import settings


NUMBER_OF_CAROUSEL_ARTICLES = settings.NUMBER_OF_CAROUSEL_ITEMS
NUMBER_OF_PROMOTED_ARTICLES_TO_BE_FETECHED = settings.NUMBER_OF_FEATURED_ITEMS


class ArticleService():
    def get_promoted_articles(self):
        return Article.objects.filter(promoted='t').exclude(status=1)[:NUMBER_OF_PROMOTED_ARTICLES_TO_BE_FETECHED]

    def get_all_articles(self):
        articles = Article.objects.all()
        return articles

    def get_all_published_and_category_assigned_articles_without_carousel_items_and_perspectives(self, request):
        articles = Article.objects.published(for_user=request.user).filter(add_to_carousel=False).exclude(
            article_categories=self.get_perspectives_category()).exclude(status=1).exclude(article_categories=None)
        return articles

    def rendered_query_to_fetch_all_articles_under_tag(self, content_type, tag):
        return raw_query_to_get_all_articles_assigned_to_a_tag_id % (str(tag.id), str(content_type.pk))

    def get_all_articles_under_tag(self, content_type, tag):
        return Article.objects.raw(self.rendered_query_to_fetch_all_articles_under_tag(content_type, tag))

    def get_all_article_categories(self):
        return remove_perspectives_from_categories(ArticleCategory.objects.all())

    def get_all_articles_in_category(self, category, limit=None):
        return Article.objects.published().filter(article_categories=category)[:limit]

    def make_dict(self, article_category):
        articles = self.get_all_articles_in_category(article_category, limit=3)
        return {article_category: articles}

    def get_all_article_categories_with_their_articles(self):
        article_categories = map(self.make_dict, remove_perspectives_from_categories(ArticleCategory.objects.all()))
        return article_categories

    def get_carousel_content(self):
        return Article.objects.filter(add_to_carousel='t').exclude(status=1)[:NUMBER_OF_CAROUSEL_ARTICLES]

    def get_perspectives_category(self):
        return ArticleCategory.objects.filter(title__icontains="perspectives")

    def get_published_articles_with_related_articles(self, request):
        return Article.objects.published(
            for_user=request.user).select_related()

    def get_published_articles_ordered_by_date(self):
        return Article.objects.published().order_by('-publish_date')

    def article_categories_not_in_categories_covered(self, article, categories_covered):
        return filter(lambda x: x not in categories_covered, article.article_categories.all())

    def get_published_articles(self, offset, limit):
        return Article.objects.published()[offset: limit]

    def get_articles_with_lat_long(self):
        return Article.objects.published().exclude(latitude__isnull=True).exclude(longitude__isnull=True)

    def get_latest_articles(self):
        categories_covered = []
        latest_articles = {}
        redundant_articles = []
        articles = self.get_published_articles_ordered_by_date().exclude(
            article_categories=self.get_perspectives_category())
        for article in articles:
            unused_article_categories = self.article_categories_not_in_categories_covered(article, categories_covered)
            if unused_article_categories and len(latest_articles) < 4:
                latest_articles[article] = unused_article_categories[0]
                categories_covered.append(unused_article_categories[0])
            else:
                redundant_articles.append(article)
        while len(latest_articles) < 4 < len(articles):
            article = redundant_articles.pop()
            latest_articles[article] = article.article_categories.all[0]
        return latest_articles

    def get_latest_comments(self):
        return Comment.objects.order_by('-submit_date')

    def article_which_has_this(self, comment):
        article, = Article.objects.filter(blogpost_ptr_id=comment.object_pk)
        return article

    def get_latest_unique_commented_on_articles(self):
        latest_unique_articles = []
        latest_comments = self.get_latest_comments()
        for comment in latest_comments:
            if len(latest_unique_articles) < 5 and self.article_which_has_this(comment) not in latest_unique_articles:
                latest_unique_articles.append(self.article_which_has_this(comment))
        return latest_unique_articles
