from copy import copy
from django.shortcuts import render
from mezzanine.conf import settings
from vikalp.helper_functions.functional import get_page
from vikalp.views.views import article_service


class HomePage:
    def get_context_for_promoted_articles(self, article_promoted_list, carousel_content, categories, latest_articles,
                                          page, about_page_description):
        return {"promoted_articles": article_promoted_list, "carousel_content": carousel_content,
                "categories": categories, "latest_articles": latest_articles, "page": page,
                "about_page_description": about_page_description}

    def about_us_page(self, request):
        dummy_request = copy(request)
        dummy_request.path_info = "/about/"
        about_page = get_page(dummy_request)
        return about_page

    def promoted_article_on_homepage(self, request, template="pages/index.html"):
        settings.use_editable()
        about_page = self.about_us_page(request)
        if (about_page):
            about_page_description = about_page.description
        else:
            about_page_description = None
        return render(request, template, self.get_context_for_promoted_articles(article_service.get_promoted_articles(),
                                                                                article_service.get_carousel_content(),
                                                                                article_service.get_all_article_categories(),
                                                                                article_service.get_latest_articles(),
                                                                                get_page(request),
                                                                                about_page_description))
