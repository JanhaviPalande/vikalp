import os
from urlparse import urlparse, urljoin
from django.contrib.admin.views.decorators import staff_member_required
from django.contrib.staticfiles import finders
from django.http import HttpResponse
from django.shortcuts import render
from django.template import RequestContext
from mezzanine.conf import settings
from mezzanine.core.models import Displayable
from mezzanine.generic import get_model
from vikalp.service.article_service import ArticleService
from vikalp.service.page_service import PageService
from django.utils.translation import ugettext_lazy as _
from vikalp.views.google_maps import get_article_map, MapFormForSideBar


MODEL_NAME = "article"
APP_NAME = "vikalp"

articleService = ArticleService()
pageService = PageService()


@staff_member_required
def static_proxy(request):
    url = request.GET["u"]
    url = url.split('/static/')
    host = url[0]
    url = ''.join(url[1:])
    response = ""
    mimetype = ""
    path = finders.find(url)
    if path:
        if isinstance(path, (list, tuple)):
            path = path[0]
        if url.endswith(".htm"):
            static_url = settings.STATIC_URL + os.path.split(url)[0] + "/"
            if not urlparse(static_url).scheme:
                static_url = urljoin(host, static_url)
            base_tag = "<base href='%s'>" % static_url
            mimetype = "text/html"
            with open(path, "r") as f:
                response = f.read().replace("<head>", "<head>" + base_tag)
        else:
            mimetype = "application/octet-stream"
            with open(path, "rb") as f:
                response = f.read()
    return HttpResponse(response, mimetype=mimetype)


def search(request, template="search_results.html"):
    """
    Display search results. Takes an optional "contenttype" GET parameter
    in the form "app-name.ModelName" to limit search results to a single model.
    """
    settings.use_editable()
    query = request.GET.get("q", "")
    # page = request.GET.get("page", 1)
    page_template = "search_results_page.html"
    # per_page = settings.SEARCH_PER_PAGE
    # max_paging_links = settings.MAX_PAGING_LINKS
    try:
        search_model = get_model(*request.GET.get("type", "").split(".", 1))
        if not issubclass(search_model, Displayable):
            raise TypeError
    except TypeError:
        search_model = Displayable
        search_type = _("Everything")
    else:
        search_type = search_model._meta.verbose_name_plural.capitalize()
    results = search_model.objects.search(query, for_user=request.user)
    if request.is_ajax():
        template = page_template
    article_map = get_article_map(True)
    context = {"query": query, "results": results,
               "search_type": search_type, "page_template": page_template, 'form': MapFormForSideBar(initial={'map': article_map})}
    return render(request, template, context, context_instance=RequestContext(request))
