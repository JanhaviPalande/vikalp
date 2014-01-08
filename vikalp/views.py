from django.core.exceptions import MiddlewareNotUsed
from django.utils import translation
from mezzanine.blog.models import BlogCategory
from mezzanine.generic.models import Keyword
from mezzanine.pages.models import Page
from mezzanine.utils.views import paginate
from models import Article
from django.shortcuts import render, get_object_or_404
from mezzanine.conf import settings
from mezzanine.utils.urls import path_to_slug

from mezzanine.blog.views import blog_post_list


def promoted_article_on_homepage(request, template="pages/index.html"):
    settings.use_editable()
    article_promoted_list = Article.objects.filter(promoted='t')
    context = {"promoted_articles": article_promoted_list}
    return render(request, template, context)


def category_list(request, template="pages/categories_page.html"):
    settings.use_editable()
    if "mezzanine.pages" not in settings.INSTALLED_APPS:
            raise MiddlewareNotUsed
    slug = path_to_slug(request.path_info)
    pages = Page.objects.with_ascendants_for_slug(slug, for_user=request.user, include_login_required=True)
    if pages:
        page = pages[0]
    else:
        page = "Stories"
    articles = Article.objects.all()
    context = {"articles": articles, "page": page}
    return render(request, template, context)


def article_list(request, tag=None, category=None, template="article/article_list.html"):
    settings.use_editable()
    templates = []
    articles = Article.objects.published(for_user=request.user)
    tag = tag.strip("/")
    if tag is not None:
        tag = get_object_or_404(Keyword, slug=tag)
        print tag.id
        # articles = articles.filter(keywords__in=tag.assignments.all())
        # articles = Article.objects.filter(keywords__in=tag.assignments.all())
        articles = Article.objects.raw("SELECT blog_blogpost.id, blog_blogpost.comments_count, blog_blogpost.keywords_string, blog_blogpost.rating_count, blog_blogpost.rating_sum, blog_blogpost.rating_average, blog_blogpost.site_id, blog_blogpost.title, blog_blogpost.slug, blog_blogpost._meta_title, blog_blogpost.description, blog_blogpost.gen_description, blog_blogpost.created, blog_blogpost.updated, blog_blogpost.status, blog_blogpost.publish_date, blog_blogpost.expiry_date, blog_blogpost.short_url, blog_blogpost.in_sitemap, blog_blogpost.content, blog_blogpost.user_id, blog_blogpost.allow_comments, blog_blogpost.featured_image, vikalp_article.blogpost_ptr_id, vikalp_article.promoted FROM vikalp_article INNER JOIN blog_blogpost ON (vikalp_article.blogpost_ptr_id = blog_blogpost.id) INNER JOIN generic_assignedkeyword ON (blog_blogpost.id = generic_assignedkeyword.object_pk) WHERE (blog_blogpost.site_id = 1  AND (generic_assignedkeyword.id IN (SELECT U0.id FROM generic_assignedkeyword U0 WHERE U0.keyword_id = %s ) AND generic_assignedkeyword.content_type_id = 31 )) ORDER BY blog_blogpost.publish_date DESC" % str(tag.id))
    if category is not None:
        category = get_object_or_404(BlogCategory, slug=category)
        articles = articles.filter(categories=category)
        # templates.append(u"article/blog_post_list_%s.html" %
        #                  str(category.slug))
    author = None
    # prefetch = ("categories", "keywords__keyword")
    # articles = articles.select_related("user").prefetch_related(*prefetch)
    # articles = paginate(articles, request.GET.get("page", 1),
    #                     settings.BLOG_POST_PER_PAGE,
    #                     settings.MAX_PAGING_LINKS)
    context = {"articles": articles,
               "tag": tag, "category": category, "author": author}
    templates.append(template)
    return render(request, templates, context)