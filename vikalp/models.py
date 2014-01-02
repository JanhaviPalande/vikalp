from django.db import models
from mezzanine.blog.models import BlogPost
from mezzanine.conf import settings


class Article(BlogPost):
    promoted = models.BooleanField(verbose_name="Promote Article to HomePage", default=False)

    @models.permalink
    def get_absolute_url(self):
        url_name = "blog_post_detail"
        kwargs = {"slug": self.slug}
        return (url_name, (), kwargs)

