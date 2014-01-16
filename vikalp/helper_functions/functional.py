from django.contrib.contenttypes.models import ContentType
from django.core.exceptions import MiddlewareNotUsed
from mezzanine.conf import settings
from django.shortcuts import get_object_or_404


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

def process_tag_or_categories(tag_or_category, model):
    tag_or_category = tag_or_category.strip('/')
    tag_or_category = get_object_or_404(model, slug=tag_or_category)
    return tag_or_category


def field_check(x):
    if (x == 'categories'):
        return "article_categories"
    else:
        return x