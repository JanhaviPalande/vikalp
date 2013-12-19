from models import Article
from django.shortcuts import render
from mezzanine.conf import settings

def promoted_article_on_homepage(request, template="pages/index.html"):
    settings.use_editable()
    article_promoted_list = Article.objects.filter(promoted='t')
    context = {"promoted_articles": article_promoted_list}
    return render(request, template, context)
