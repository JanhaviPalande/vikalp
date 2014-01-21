import os
from urlparse import urlparse, urljoin
from django.contrib.admin.views.decorators import staff_member_required
from django.contrib.staticfiles import finders
from django.http import HttpResponse
from mezzanine.conf import settings
from vikalp.service.article_service import ArticleService
from vikalp.service.page_service import PageService

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
