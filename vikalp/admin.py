from datetime import timedelta

from copy import deepcopy
from django.contrib import admin
from mezzanine.blog.admin import BlogPostAdmin, BlogCategoryAdmin
from mezzanine.blog.models import BlogPost
from mezzanine.core.admin import OwnableAdmin, DisplayableAdmin

from vikalp.helper_functions.twitter import post_to_twitter
from vikalp.helper_functions.functional import field_check, insert_before
from vikalp.models import Article, ArticleCategory


class ArticleAdmin(BlogPostAdmin, DisplayableAdmin):
    fieldsets = deepcopy(BlogPostAdmin.fieldsets)
    fieldsets[0][1]['fields'] = tuple(map(field_check, fieldsets[0][1]['fields']))
    fieldsets[0][1]["fields"] += ("article_author", ("promoted", "add_to_carousel",), ('latitude', 'longitude',),)
    fieldsets[0][1]["fields"] = insert_before(fieldsets[0][1]["fields"], "content", "article_author")
    filter_horizontal = ('article_categories', "related_posts",)
    list_display = deepcopy(BlogPostAdmin.list_display)
    list_display += ("promoted", "add_to_carousel",)
    list_editable = deepcopy(BlogPostAdmin.list_editable)
    list_editable += ("promoted", "add_to_carousel",)
    list_filter = deepcopy(BlogPostAdmin.list_filter)
    list_filter = filter(lambda x: x != 'keywords__keyword', list_filter)
    list_filter = tuple(map(field_check, list_filter))
    list_filter += ("promoted", "add_to_carousel",)

    def save_model(self, request, obj, form, change):
        last_updated = obj.updated
        obj.save()
        if not last_updated or (last_updated and ((obj.updated - last_updated) > timedelta(hours=24))):
            # post_to_twitter("'" + obj.title + "' " + request.get_host() + obj.get_absolute_url())
            post_to_twitter(tweet_message=["'" + obj.title + "' " + "vikalpstaging.twhosted.com" + obj.get_absolute_url()])

    def save_form(self, request, form, change):
        OwnableAdmin.save_form(self, request, form, change)
        return DisplayableAdmin.save_form(self, request, form, change)


class ArticleCategoryAdmin(BlogCategoryAdmin):
    fieldsets = deepcopy(BlogCategoryAdmin.fieldsets)
    fieldsets[0][1]['fields'] += ('category_image', 'category_description', 'category_long_description',)

    def in_menu(self):
        return True


admin.site.register(Article, ArticleAdmin)
admin.site.unregister(BlogPost)
admin.site.register(ArticleCategory, ArticleCategoryAdmin)
