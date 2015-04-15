from django.core.files.storage import default_storage
from mezzanine import template
from vikalp.service.article_service import ArticleService


register = template.Library()

@register.filter
def get(mapping, key):
    value = mapping.get(key, '')
    return value


@register.filter
def get_image_url(article):
    return "/static/media/" + str(article.featured_image)


@register.as_tag
def article_categories(*args):
    article_service = ArticleService()
    return list(article_service.get_all_article_categories())


@register.filter
def insert_placeholder(arg):
    if arg.help_text == "required":
        return arg
    string = str(arg).split(' ')
    string.insert(1, ('placeholder="%s"' % arg.help_text))
    string = ' '.join(string)
    return string

@register.filter
def get_slug(arg):
    if arg:
        return arg.slug
    else:
        return False

@register.filter
def get_first_word(arg):
    if arg:
        return str(arg).partition(' ')[0]
    else:
        return False


def check_if_exists(arg):
    if(arg):
        return arg[0]
    else:
      return False

@register.filter
def get_first(arg):
    return check_if_exists(arg.all())




@register.filter
def lensort(categories):
    categories.sort(key=lambda x: len(x.title), reverse=False)
    return categories

@register.filter
def get_first_slug(arg):
    return get_slug(check_if_exists(arg.all()))

@register.filter
def file_exists(filepath):
    return default_storage.exists(filepath)
