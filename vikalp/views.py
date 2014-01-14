import os
from urlparse import urlparse, urljoin
from django.contrib.admin.views.decorators import staff_member_required
from django.contrib.staticfiles import finders
from django.core.exceptions import MiddlewareNotUsed
from django.http import HttpResponse
from mezzanine.blog.models import BlogCategory
from mezzanine.generic.models import Keyword
from mezzanine.pages.models import Page
from mezzanine.utils.views import paginate
from django.shortcuts import render, get_object_or_404
from mezzanine.conf import settings
from mezzanine.utils.urls import path_to_slug
from django.contrib.contenttypes.models import ContentType
from vikalp.service.article_service import ArticleService

articleService = ArticleService()


def get_context_for_promoted_articles(article_promoted_list):
    return {"promoted_articles": article_promoted_list}


def promoted_article_on_homepage(request, template="pages/index.html"):
    settings.use_editable()
    return render(request, template, get_context_for_promoted_articles(articleService.get_promoted_articles()))


def get_page(request):
    if "mezzanine.pages" not in settings.INSTALLED_APPS:
        raise MiddlewareNotUsed
    slug = path_to_slug(request.path_info)
    pages = Page.objects.with_ascendants_for_slug(slug, for_user=request.user, include_login_required=True)
    if pages:
        page = pages[0]
    else:
        page = "Stories"
    return page





def category_list(request, template="pages/categories_page.html"):
    settings.use_editable()
    page = get_page(request)
    categories = articleService.get_all_article_categories()
    context = {"categories": categories, "page": page}
    return render(request, template, context)




def get_model_content_type(app_name, model_name):
    return ContentType.objects.get(app_label=app_name, model=model_name)



def article_list(request, tag=None, category=None, template="article/article_list.html"):
    settings.use_editable()
    templates = []
    articles = articleService.get_all_published_articles(request)
    if tag is not None:
        tag = tag.strip("/")
        tag = get_object_or_404(Keyword, slug=tag)
        # articles = articles.filter(keywords__in=tag.assignments.all())
        content_type = get_model_content_type("vikalp", "article")
        articles = articleService.get_all_articles_under_tag(content_type, tag)
    if category is not None:
        category = category.strip("/")
        category = get_object_or_404(BlogCategory, slug=category)
        articles = articleService.get_all_articles_in_category(articles, category)
        # templates.append(u"article/blog_post_list_%s.html" %
        #                  str(category.slug))
    author = None
    if tag is None:
        prefetch = ("categories", "keywords__keyword")
        articles = articles.select_related("user").prefetch_related(*prefetch)
        articles = paginate(articles, request.GET.get("page", 1),
                            settings.BLOG_POST_PER_PAGE,
                            settings.MAX_PAGING_LINKS)
    context = {"articles": articles,
               "tag": tag, "category": category, "author": author}
    templates.append(template)
    return render(request, templates, context)


@staff_member_required
def someview(request):
    """
    Serves TinyMCE plugins inside the inline popups and the uploadify
    SWF, as these are normally static files, and will break with
    cross-domain JavaScript errors if ``STATIC_URL`` is an external
    host. URL for the file is passed in via querystring in the inline
    popup plugin template.
    """
    # Get the relative URL after STATIC_URL.
    url = request.GET["u"]
    protocol = "http" if not request.is_secure() else "https"
    print "Protocol - %s" % protocol
    host = protocol + "://" + request.get_host()
    print "Host - %s" % host
    if (host.__contains__("http://127.0.0.1")):
        host = host.replace("http://127.0.0.1","http://localhost")
    generic_host = "//" + request.get_host()
    print "Generic_Host - %s" % generic_host
    # STATIC_URL often contains host or generic_host, so remove it
    # first otherwise the replacement loop below won't work.
    # url = url.replace(host,"")
    print "Url - %s" % url
    static_url = settings.STATIC_URL.replace(host, "", 1)
    static_url = static_url.replace(generic_host, "", 1)
    url = url.split('/static/')
    host = url[0]
    print "Host - %s" % host
    url = url[1]
    # for prefix in (host, generic_host, static_url, "/"):
    #     if url.startswith(prefix):
    #         url = url.replace(prefix, "", 1)
    print "Url after prefix removal - %s " % url
    response = ""
    mimetype = ""
    path = finders.find(url)
    print "path - %s" % path
    if path:
        if isinstance(path, (list, tuple)):
            path = path[0]
        if url.endswith(".htm"):
            print "!!!!!!!!!!!Here!!!!!!!!!!!"
            # Inject <base href="{{ STATIC_URL }}"> into TinyMCE
            # plugins, since the path static files in these won't be
            # on the same domain.
            static_url = settings.STATIC_URL + os.path.split(url)[0] + "/"
            print static_url
            if not urlparse(static_url).scheme:
                static_url = urljoin(host, static_url)
            print static_url
            base_tag = "<base href='%s'>" % static_url
            mimetype = "text/html"
            with open(path, "r") as f:
                response = f.read().replace("<head>", "<head>" + base_tag)
        else:
            mimetype = "application/octet-stream"
            with open(path, "rb") as f:
                response = f.read()
    return HttpResponse(response, mimetype=mimetype)
