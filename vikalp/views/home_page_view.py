from django.shortcuts import render
from mezzanine.conf import settings
from vikalp.views.views import articleService


class HomePage:
    def get_context_for_promoted_articles(self, article_promoted_list, carousel_content, categories, latest_articles):
        return {"promoted_articles": article_promoted_list, "carousel_content": carousel_content,
                "categories": categories, "latest_articles": latest_articles}

    def promoted_article_on_homepage(self, request, template="pages/index.html"):
        settings.use_editable()
        return render(request, template, self.get_context_for_promoted_articles(articleService.get_promoted_articles(),
                                                                                articleService.get_carousel_content(),
                                                                                articleService.get_all_article_categories(),
                                                                                articleService.get_latest_articles()))
