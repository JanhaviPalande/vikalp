from copy import deepcopy
from django.contrib import admin
from mezzanine.blog.admin import BlogPostAdmin, BlogCategoryAdmin
from mezzanine.blog.models import BlogPost, BlogCategory
from mezzanine.core.admin import OwnableAdmin, DisplayableAdmin
from models import Article



class ArticleAdmin(BlogPostAdmin):
    fieldsets = deepcopy(BlogPostAdmin.fieldsets)
    fieldsets[0][1]["fields"].extend(["promoted"])

    # BlogPostAdmin.fieldsets.extend([('Extra', {'fields': ['promoted']}),])
    def save_form(self, request, form, change):
        """
        Super class ordering is important here - user must get saved first.
        """
        OwnableAdmin.save_form(self, request, form, change)
        return DisplayableAdmin.save_form(self, request, form, change)

admin.site.register(Article, ArticleAdmin)