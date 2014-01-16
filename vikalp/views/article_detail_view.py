from django.shortcuts import get_object_or_404, render
from vikalp.models import Article
from vikalp.helper_functions.functional import process_tag_or_categories_or_article

class ArticleDetail:
    def article_detail(self, request, slug, template="article/article_detail.html"):
        articles = Article.objects.published(
            for_user=request.user).select_related()
        article = process_tag_or_categories_or_article(slug, articles)
        return render(request, template, {"article": article})