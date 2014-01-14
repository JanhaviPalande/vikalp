from copy import deepcopy
from django.contrib import admin
from mezzanine.blog.admin import BlogPostAdmin, BlogCategoryAdmin
from mezzanine.blog.models import BlogPost
from mezzanine.core.admin import OwnableAdmin, DisplayableAdmin
from models import Article, ArticleCategory
from settings import ADMIN_MENU_ORDER


def field_check(x):
    if (x == 'categories'):
        return "article_categories"
    else:
        return x


class ArticleAdmin(BlogPostAdmin):
    fieldsets = deepcopy(BlogPostAdmin.fieldsets)
    fieldsets[0][1]['fields'] = tuple(map(field_check, fieldsets[0][1]['fields']))
    fieldsets[0][1]["fields"] += ("promoted",)
    filter_horizontal = ('article_categories',)

    # BlogPostAdmin.fieldsets.extend([('Extra', {'fields': ['promoted']}),])
    def save_form(self, request, form, change):
        """
        Super class ordering is important here - user must get saved first.
        """
        OwnableAdmin.save_form(self, request, form, change)
        return DisplayableAdmin.save_form(self, request, form, change)


class ArticleCategoryAdmin(BlogCategoryAdmin):
    fieldsets = deepcopy(BlogCategoryAdmin.fieldsets)
    fieldsets[0][1]['fields'] += ('category_image', 'category_description',)

    def in_menu(self):
        return True


admin.site.register(Article, ArticleAdmin)
admin.site.unregister(BlogPost)
admin.site.register(ArticleCategory, ArticleCategoryAdmin)

