from django.contrib.contenttypes.models import ContentType
from django.core.exceptions import MiddlewareNotUsed
from mezzanine.conf import settings
from django.shortcuts import get_object_or_404
from mezzanine.utils.urls import path_to_slug
from mezzanine.utils.views import paginate
from vikalp.views.views import pageService


def default_or_value(default, value):
    if value:
        return value
    else:
        return default


def check_if_middleware_exists(middleware):
    if middleware not in settings.INSTALLED_APPS:
        raise MiddlewareNotUsed


def get_model_content_type(app_name, model_name):
    return ContentType.objects.get(app_label=app_name, model=model_name)


def process_tag_or_categories_or_article(tag_or_category_or_article, model):
    tag_or_category_or_article = get_object_or_404(model, slug=tag_or_category_or_article.strip('/'))
    return tag_or_category_or_article


def field_check(x):
    if x == 'categories':
        return "article_categories"
    else:
        return x


def get_page(request):
    check_if_middleware_exists("mezzanine.pages")
    slug = path_to_slug(request.path_info)
    pages = pageService.get_page_ascendants(request, slug)
    return reduce(default_or_value, pages, "")


def translate_to_model(articles):
    list_of_articles = []
    for article in articles:
        list_of_articles.append(article)
    return list_of_articles


def paginate_article_list(self, articles, request):
    articles = paginate(articles, request.GET.get("page", 1),
                        settings.BLOG_POST_PER_PAGE,
                        settings.MAX_PAGING_LINKS)
    return articles


def insert_before(aSet, element1, element2):
    aList = list(aSet)
    aList.remove(element2)
    aList.insert(aList.index(element1), element2)
    return tuple(aList)
