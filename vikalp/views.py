from mezzanine.blog.models import BlogCategory
from mezzanine.generic.models import Keyword
from mezzanine.utils.views import paginate
from models import Article
from django.shortcuts import render, get_object_or_404
from mezzanine.conf import settings
from mezzanine.blog.views import blog_post_list


def promoted_article_on_homepage(request, template="pages/index.html"):
    settings.use_editable()
    article_promoted_list = Article.objects.filter(promoted='t')
    context = {"promoted_articles": article_promoted_list}
    return render(request, template, context)


def category_list(request, template="pages/categories_page.html"):
    settings.use_editable()
    articles = Article.objects.all()
    context = {"articles": articles}
    return render(request, template, context)


def article_list(request, tag=None, category=None, template="article/article_list.html"):
    """
    Display a list of blog posts that are filtered by tag, year, month,
    author or category. Custom templates are checked for using the name
    ``blog/blog_post_list_XXX.html`` where ``XXX`` is either the
    category slug or author's username if given.
    """
    settings.use_editable()
    templates = []
    articles = Article.objects.published(for_user=request.user)
    if tag is not None:
        tag = get_object_or_404(Keyword, slug=tag)
        articles = articles.filter(keywords__in=tag.assignments.all())
    if category is not None:
        category = get_object_or_404(BlogCategory, slug=category)
        articles = articles.filter(categories=category)
        # templates.append(u"article/blog_post_list_%s.html" %
        #                  str(category.slug))
    author = None
    prefetch = ("categories", "keywords__keyword")
    articles = articles.select_related("user").prefetch_related(*prefetch)
    articles = paginate(articles, request.GET.get("page", 1),
                          settings.BLOG_POST_PER_PAGE,
                          settings.MAX_PAGING_LINKS)
    context = {"articles": articles,
               "tag": tag, "category": category, "author": author}
    templates.append(template)
    return render(request, templates, context)