from django.shortcuts import render
from vikalp.views.views import articleService
from vikalp.views.article_list_view import ArticleList

article_list = ArticleList()


def get_title(category):
    return category.title


class PolicyEdits:
    def policy_edit_list(self, request, template="article/article_list.html"):
        category = articleService.get_policy_edit_category()
        if (category):
            category = reduce(get_title, category)
            return render(request, template, article_list.get_context_for_article_list(
                articleService.get_all_articles_in_category(category), category=category))
        else:
            return render(request, template, article_list.get_context_for_article_list(None, category=None))
