from django.db import models
from mezzanine.blog.models import BlogPost, BlogCategory
from vikalp.settings import STATIC_URL, DEFAULT_CATEGORY_IMAGE




def get_default_category_image_location():
    return STATIC_URL + DEFAULT_CATEGORY_IMAGE




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
    category_image = models.ImageField(verbose_name="Category Symbol", upload_to="uploads/", default=get_default_category_image_location())
    category_description = models.TextField(verbose_name="Category Description")