from django import template
register = template.Library()

@register.filter
def get(mapping, key):
    value = mapping.get(key, '')
    return value

@register.filter
def get_image_url(article):
    return "/static/media/" + str(article.featured_image)