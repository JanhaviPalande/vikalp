import os
from django.db import models
from mezzanine.blog.models import BlogPost, BlogCategory


def get_static_root():
    global PROJECT_ROOT, STATIC_URL, STATIC_ROOT
    PROJECT_ROOT = os.path.dirname(os.path.abspath(__file__))
    STATIC_URL = "/static/"
    STATIC_ROOT = os.path.join(PROJECT_ROOT, STATIC_URL.strip("/"))

get_static_root()

default_category_image = STATIC_URL + 'img/livelihood.png'


class Article(BlogPost):
    promoted = models.BooleanField(verbose_name="Promote Article to HomePage", default=False)
    article_categories = models.ManyToManyField("ArticleCategory",
                                        verbose_name=("Categories"),
                                        blank=True, related_name="articles")

    @models.permalink
    def get_absolute_url(self):
        url_name = "blog_post_detail"
        kwargs = {"slug": self.slug}
        return (url_name, (), kwargs)


class ArticleCategory(BlogCategory):
    category_image = models.ImageField(verbose_name="Category Symbol", upload_to="uploads/", default=default_category_image)
    category_description = models.TextField(verbose_name="Category Description")