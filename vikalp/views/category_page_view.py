from django.shortcuts import render
from vikalp.helper_functions.functional import get_page
from vikalp.views.google_maps import get_article_map, MapFormForSideBar
from vikalp.views.views import articleService
from mezzanine.conf import settings


class CategoryPage:
    def get_context_for_category_list(self, categories, page):
        article_map = get_article_map(True)
        return {"articleCategories": categories, "page": page, "default_image": settings.DEFAULT_CATEGORY_IMAGE, 'form': MapFormForSideBar(initial={'map': article_map})}

    def category_list(self, request, template="pages/categories_page.html"):
        settings.use_editable()
        return render(request, template,
                      self.get_context_for_category_list(articleService.get_all_article_categories(),
                                                         get_page(request)))

    def category_list_with_two_articles(self, request, template="pages/categories_page.html"):
        settings.use_editable()
        return render(request, template,
                      self.get_context_for_category_list(
                          articleService.get_all_article_categories_with_their_articles(),
                          get_page(request)))
