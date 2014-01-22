from django.shortcuts import render
from mezzanine.conf import settings
from mezzanine.utils.urls import path_to_slug
from vikalp.helper_functions.functional import check_if_middleware_exists, default_or_value
from vikalp.views.views import pageService, articleService
from mezzanine.conf import settings


class CategoryPage:
    def get_page(self, request):
        check_if_middleware_exists("mezzanine.pages")
        slug = path_to_slug(request.path_info)
        pages = pageService.get_page_ascendants(request, slug)
        return reduce(default_or_value, pages, "");


    def get_context_for_category_list(self, categories, page):
        return {"categories": categories, "page": page, "default_image": settings.DEFAULT_CATEGORY_IMAGE}


    def category_list(self, request, template="pages/categories_page.html"):
        settings.use_editable()
        return render(request, template,
                      self.get_context_for_category_list(articleService.get_all_article_categories(),
                                                         self.get_page(request)))



