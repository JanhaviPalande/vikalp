from django.conf.urls import patterns, include, url
from django.contrib import admin
from mezzanine.conf import settings

from vikalp.views.article_list_view import ArticleList
from vikalp.views.category_page_view import CategoryPage
from vikalp.views.home_page_view import HomePage
from vikalp.views.policy_edits_view import PolicyEdits
from vikalp.views.article_detail_view import ArticleDetail
from vikalp.views.article_list_by_date import ArticleListByDate


admin.autodiscover()

homePage = HomePage()
categoryPage = CategoryPage()
articleList = ArticleList()
policyEdits = PolicyEdits()
articleDetail = ArticleDetail()
articleListByDate = ArticleListByDate()

_slashes = (
    "article" if settings.BLOG_SLUG else "",
    "/" if settings.APPEND_SLASH else "",
)

# Add the urlpatterns for any custom Django applications here.
# You can also change the ``home`` view to add your own functionality
# to the project's homepage.
urlpatterns = patterns('',
                       (r'^static/(?P<path>.*)$',
                        'django.views.static.serve',
                        {'document_root': settings.STATIC_ROOT}), )


# Adds ``STATIC_URL`` to the context of error pages, so that error
# pages can use JS, CSS and images.
handler404 = "mezzanine.core.views.page_not_found"
urlpatterns += patterns("",

                        # Change the admin prefix here to use an alternate URL for the
                        # admin interface, which would be marginally more secure.

                        ("^admin/", include(admin.site.urls)),

                        # We don't want to presume how your homepage works, so here are a
                        # few patterns you can use to set it up.

                        # HOMEPAGE AS STATIC TEMPLATE
                        # ---------------------------
                        # This pattern simply loads the index.html template. It isn't
                        # commented out like the others, so it's the default. You only need
                        # one homepage pattern, so if you use a different one, comment this
                        # one out.

                        # url("^$", direct_to_template, {"template": "index.html"}, name="home"),

                        # HOMEPAGE AS AN EDITABLE PAGE IN THE PAGE TREE
                        # ---------------------------------------------
                        # This pattern gives us a normal ``Page`` object, so that your
                        # homepage can be managed via the page tree in the admin. If you
                        # use this pattern, you'll need to create a page in the page tree,
                        # and specify its URL (in the Meta Data section) as "/", which
                        # is the value used below in the ``{"slug": "/"}`` part.
                        # Also note that the normal rule of adding a custom
                        # template per page with the template name using the page's slug
                        # doesn't apply here, since we can't have a template called
                        # "/.html" - so for this case, the template "pages/index.html"
                        # should be used if you want to customize the homepage's template.

                        # url("^$", "mezzanine.pages.views.page", {"slug": "/"}, name="home"),
                        url("^$", homePage.promoted_article_on_homepage, name="home"),
                        (r"^article/$", categoryPage.category_list_with_two_articles),
                        (r"^stories/$", categoryPage.category_list_with_two_articles),
                        (r"^stories/latest/$", articleListByDate.article_list_by_date ),
                        url("^article/tag/(?P<tag>.*)$", articleList.article_list, name="article_list_tag"),
                        url("^article/category/(?P<category>.*)$", articleList.article_list,
                            name="article_list_category"),
                        url("^asset_proxy/$", "vikalp.views.views.static_proxy", name="static_proxy"),
                        url("^policy.*/$", policyEdits.policy_edit_list, name="policy-edits"),
                        # url("^article/(?P<slug>.*)/$", articleDetail.article_detail),
                        url("^article/download/(?P<slug>.*)$", articleDetail.article_download, name="article_detail"),
                        url("^article/(?P<slug>.*)$", articleDetail.article_detail, name="article_detail"),
                        url("^search/$", "vikalp.views.views.search", name="search"),


                        # HOMEPAGE FOR A BLOG-ONLY SITE
                        # -----------------------------
                        # This pattern points the homepage to the blog post listing page,
                        # and is useful for sites that are primarily blogs. If you use this
                        # pattern, you'll also need to set BLOG_SLUG = "" in your
                        # ``settings.py`` module, and delete the blog page object from the
                        # page tree in the admin if it was installed.

                        # url("^$", "mezzanine.blog.views.blog_post_list", name="home"),

                        # MEZZANINE'S URLS
                        # ----------------
                        # ADD YOUR OWN URLPATTERNS *ABOVE* THE LINE BELOW.
                        # ``mezzanine.urls`` INCLUDES A *CATCH ALL* PATTERN
                        # FOR PAGES, SO URLPATTERNS ADDED BELOW ``mezzanine.urls``
                        # WILL NEVER BE MATCHED!

                        # If you'd like more granular control over the patterns in
                        # ``mezzanine.urls``, go right ahead and take the parts you want
                        # from it, and use them directly below instead of using
                        # ``mezzanine.urls``.
                        ("^", include("mezzanine.urls")),

                        # MOUNTING MEZZANINE UNDER A PREFIX
                        # ---------------------------------
                        # You can also mount all of Mezzanine's urlpatterns under a
                        # URL prefix if desired. When doing this, you need to define the
                        # ``SITE_PREFIX`` setting, which will contain the prefix. Eg:
                        # SITE_PREFIX = "my/site/prefix"
                        # For convenience, and to avoid repeating the prefix, use the
                        # commented out pattern below (commenting out the one above of course)
                        # which will make use of the ``SITE_PREFIX`` setting. Make sure to
                        # add the import ``from django.conf import settings`` to the top
                        # of this file as well.
                        # Note that for any of the various homepage patterns above, you'll
                        # need to use the ``SITE_PREFIX`` setting as well.

                        # ("^%s/" % settings.SITE_PREFIX, include("mezzanine.urls"))

)
handler500 = "mezzanine.core.views.server_error"
