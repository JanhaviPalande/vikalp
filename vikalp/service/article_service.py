from vikalp.models import Article, ArticleCategory
from vikalp.service.raw_queries import raw_query_to_get_all_articles_assigned_to_a_tag_id
from vikalp.helper_functions.service_filter import remove_policy_edits_from_categories
from mezzanine.conf import settings


NUMBER_OF_CAROUSEL_ARTICLES = settings.NUMBER_OF_CAROUSEL_ITEMS
NUMBER_OF_PROMOTED_ARTICLES_TO_BE_FETECHED = settings.NUMBER_OF_FEATURED_ITEMS


class ArticleService():
    def get_promoted_articles(self):
        return Article.objects.filter(promoted='t')[:NUMBER_OF_PROMOTED_ARTICLES_TO_BE_FETECHED]

    def get_all_articles(self):
        articles = Article.objects.all()
        return articles

    def get_all_published_articles_without_carousel_items_and_policy_edits(self, request):
        articles = Article.objects.published(for_user=request.user).filter(add_to_carousel=False).exclude(article_categories=self.get_policy_edit_category())
        return articles

    def rendered_query_to_fetch_all_articles_under_tag(self, content_type, tag):
        return raw_query_to_get_all_articles_assigned_to_a_tag_id % (str(tag.id), str(content_type.pk))

    def get_all_articles_under_tag(self, content_type, tag):
        return Article.objects.raw(self.rendered_query_to_fetch_all_articles_under_tag(content_type, tag))

    def get_all_article_categories(self):
        return remove_policy_edits_from_categories(ArticleCategory.objects.all())

    def get_all_articles_in_category(self, category, limit=None):
        return Article.objects.filter(article_categories=category)[:limit]

    def make_dict(self, articleCategory):
        articles = self.get_all_articles_in_category(articleCategory, limit=3)
        return {articleCategory: articles}

    def get_all_article_categories_with_their_articles(self):
        articleCategories = map(self.make_dict, remove_policy_edits_from_categories(ArticleCategory.objects.all()))
        return articleCategories

    def get_carousel_content(self):
        return Article.objects.filter(add_to_carousel='t')[:NUMBER_OF_CAROUSEL_ARTICLES]

    def get_policy_edit_category(self):
        return ArticleCategory.objects.filter(title__icontains="policy")

    def get_published_articles_with_related_articles(self, request):
        return Article.objects.published(
            for_user=request.user).select_related()

    def get_published_articles_ordered_by_date(self):
        return Article.objects.published().order_by('publish_date')

    def article_categories_not_in_categories_covered(self, article, categories_covered):
        return filter(lambda x: x not in categories_covered, article.article_categories.all())

    def get_published_articles(self, offset, limit):
        return Article.objects.published()[offset: limit]

    def get_articles_with_lat_long(self):
        return Article.objects.published().exclude(lattitude__isnull=True).exclude(longitude__isnull=True)

    def get_latest_articles(self):
        categories_covered = []
        latest_articles = {}
        redundant_articles = []
        articles = self.get_published_articles_ordered_by_date()
        for article in articles:
            unused_article_categories = self.article_categories_not_in_categories_covered(article, categories_covered)
            if (unused_article_categories and len(latest_articles) < 4):
                latest_articles[article] = unused_article_categories[0]
                categories_covered.append(unused_article_categories[0])
            else:
                redundant_articles.append(article)
        while (len(latest_articles) < 4 and len(articles) > 4):
            article = redundant_articles.pop()
            latest_articles[article] = article.article_categories.all[0]
        return latest_articles
