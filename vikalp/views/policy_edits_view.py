from django.shortcuts import render
from django.template import RequestContext
from vikalp.helper_functions.functional import get_page
from vikalp.views.views import articleService
from vikalp.views.article_list_view import ArticleList

article_list = ArticleList()


def get_title(category):
    return category.title


class PolicyEdits:
    def perspectives_list(self, request, template="article/article_list.html"):
        category = articleService.get_perspectives_category()
        page_template = "article/article_list_page.html"
        if category:
            category = reduce(get_title, category)
            category.category_long_description = None
            articles = articleService.get_all_articles_in_category(category)
            if request.is_ajax():
                template = page_template
            return render(request, template, article_list.get_context_for_article_list(
                articles, category=category, page=get_page(request)), context_instance=RequestContext(request))
        else:
            return render(request, template,
                          article_list.get_context_for_article_list(None, category=None, page=get_page(request)),
                          context_instance=RequestContext(request))
