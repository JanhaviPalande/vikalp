from django.db import models
from mezzanine.blog.models import BlogPost, BlogCategory
from vikalp.settings import DEFAULT_CATEGORY_IMAGE


def get_default_category_image_location():
    return DEFAULT_CATEGORY_IMAGE


class Article(BlogPost):
    promoted = models.BooleanField(verbose_name="Promote Article to HomePage", default=False)
    article_categories = models.ManyToManyField("ArticleCategory",
                                                verbose_name=("Categories"),
                                                blank=True, related_name="articles")
    article_author = models.CharField(verbose_name="Story Author", max_length=128, blank=True)
    add_to_carousel = models.BooleanField(verbose_name="Add this article to carousel", default=False)
    latitude = models.DecimalField(verbose_name="Story Location Latitude", null=True, blank=True, decimal_places=7, max_digits=10)
    longitude = models.DecimalField(verbose_name="Story Location Longitude", null=True, blank=True, decimal_places=7, max_digits=10)


    @models.permalink
    def get_absolute_url(self):
        url_name = "blog_post_detail"
        kwargs = {"slug": self.slug}
        return url_name, (), kwargs


class ArticleCategory(BlogCategory):
    category_image = models.ImageField(verbose_name="Category Symbol", upload_to="uploads/",
                                       default=get_default_category_image_location())
    category_description = models.TextField(verbose_name="Category One Liner (100 Chars)", max_length=100)
    category_long_description = models.TextField(verbose_name="Category Long Description", default="")
