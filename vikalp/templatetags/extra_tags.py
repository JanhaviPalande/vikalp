from mezzanine import template
from vikalp.service.article_service import ArticleService
# from service.article_service import ArticleService
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
def length(arg):
    return len(arg)