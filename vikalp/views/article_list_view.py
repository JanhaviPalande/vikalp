from django.template import RequestContext
from mezzanine.conf import settings
from mezzanine.generic.models import Keyword
from mezzanine.utils.views import paginate, render
from vikalp.helper_functions.functional import get_model_content_type, process_tag_or_categories_or_article, get_page, \
    translate_to_model
from vikalp.models import ArticleCategory
from vikalp.views.views import articleService, MODEL_NAME, APP_NAME


class ArticleList:
    def get_articles_for_given_tag(self, tag):
        return articleService.get_all_articles_under_tag(get_model_content_type(APP_NAME, MODEL_NAME), tag)

    def get_articles_for_given_category(self, category):
        return articleService.get_all_articles_in_category(category)

    def get_context_for_article_list(self, articles, author=None, category=None, tag=None, page=None,
                                     page_template="article/article_list_page.html"):
        context = {"articles": articles,
                   "tag": tag, "category": category, "author": author, "page": page, "page_template": page_template, }
        return context

    def article_list(self, request, tag=None, category=None, template="article/article_list.html"):
        settings.use_editable()
        page_template = "article/article_list_page.html"
        articles = articleService.get_all_published_articles_without_carousel_items_and_policy_edits(request)
        if tag is not None:
            tag = process_tag_or_categories_or_article(tag, Keyword)
            articles = self.get_articles_for_given_tag(tag)
            articles = translate_to_model(articles)
        if category is not None:
            category = process_tag_or_categories_or_article(category, ArticleCategory)
            articles = self.get_articles_for_given_category(category)
        author = None
        if request.is_ajax():
            template = page_template
        return render(request, template,
                      self.get_context_for_article_list(articles, author, category, tag, get_page(request)),
                      context_instance=RequestContext(request))
