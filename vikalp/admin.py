from copy import deepcopy
from django.contrib import admin
from mezzanine.blog.admin import BlogPostAdmin, BlogCategoryAdmin
from mezzanine.blog.models import BlogPost
from mezzanine.core.admin import OwnableAdmin, DisplayableAdmin
from vikalp.helper_functions.functional import field_check
from vikalp.models import Article, ArticleCategory




class ArticleAdmin(BlogPostAdmin):
    fieldsets = deepcopy(BlogPostAdmin.fieldsets)
    fieldsets[0][1]['fields'] = tuple(map(field_check, fieldsets[0][1]['fields']))
    fieldsets[0][1]["fields"] += ("article_author", ("promoted","add_to_carousel",),)
    filter_horizontal = ('article_categories',"related_posts",)

    def save_form(self, request, form, change):
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

