from django.shortcuts import render
from vikalp.helper_functions.functional import get_page
from vikalp.views.views import pageService, articleService
from mezzanine.conf import settings


class CategoryPage:
    def get_context_for_category_list(self, categories, page):
        return {"categories": categories, "page": page, "default_image": settings.DEFAULT_CATEGORY_IMAGE}


    def category_list(self, request, template="pages/categories_page.html"):
        settings.use_editable()
        return render(request, template,
                      self.get_context_for_category_list(articleService.get_all_article_categories(),
                                                         get_page(request)))



