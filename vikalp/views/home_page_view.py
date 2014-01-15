from django.shortcuts import render
from mezzanine.conf import settings
from vikalp.views.views import articleService

class HomePage:
    def get_context_for_promoted_articles(self, article_promoted_list):
        return {"promoted_articles": article_promoted_list}


    def promoted_article_on_homepage(self, request, template="pages/index.html"):
        settings.use_editable()
        return render(request, template, self.get_context_for_promoted_articles(articleService.get_promoted_articles()))