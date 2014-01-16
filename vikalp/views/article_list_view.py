from mezzanine.conf import settings
from mezzanine.generic.models import Keyword
from mezzanine.utils.views import paginate, render
from vikalp.helper_functions.functional import get_model_content_type, process_tag_or_categories
from vikalp.models import ArticleCategory
from vikalp.views.views import articleService, MODEL_NAME, APP_NAME


class ArticleList:
    def get_articles_for_given_tag(self, tag):
        return articleService.get_all_articles_under_tag(get_model_content_type(APP_NAME, MODEL_NAME), tag)



    def get_articles_for_given_category(self, category):
        return articleService.get_all_articles_in_category(category)


    def paginate_article_list(self, articles, request):
        articles = paginate(articles, request.GET.get("page", 1),
                            settings.BLOG_POST_PER_PAGE,
                            settings.MAX_PAGING_LINKS)
        return articles


    def get_context_for_article_list(self, articles, author=None, category=None, tag=None):
        context = {"articles": articles,
                   "tag": tag, "category": category, "author": author}
        return context


    def article_list(self, request, tag=None, category=None, template="article/article_list.html"):
        settings.use_editable()
        articles = articleService.get_all_published_articles(request)
        if tag is not None:
            tag = process_tag_or_categories(tag, Keyword)
            articles= self.get_articles_for_given_tag(tag)
        if category is not None:
            category = process_tag_or_categories(category, ArticleCategory)
            articles = self.get_articles_for_given_category(category)
        author = None
        if tag is None:
            articles = self.paginate_article_list(articles, request)
        return render(request, template, self.get_context_for_article_list(articles, author, category, tag))