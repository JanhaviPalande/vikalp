from django.template import RequestContext
from mezzanine.conf import settings
from mezzanine.utils.views import render
from vikalp.helper_functions.functional import get_page
from vikalp.views.google_maps import get_article_map, MapFormForSideBar
from vikalp.views.views import article_service


class ArticleListByDate:
    def get_context_for_article_list(self, articles, page=None, page_template="article/article_list_by_date_page.html"):
        article_map = get_article_map(True)
        context = {"articles": articles, "page": page, "page_template": page_template, 'form': MapFormForSideBar(initial={'map': article_map}),
                   "latest_commented_articles": article_service.get_latest_unique_commented_on_articles()}
        return context


    def article_list_by_date(self, request, tag=None, category=None, template="article/article_list_by_date.html"):
        settings.use_editable()
        page_template = "article/article_list_by_date_page.html"
        articles = article_service.get_all_published_and_category_assigned_articles_without_carousel_items_and_perspectives(request)
        request.path_info = '/article/'
        if request.is_ajax():
            template = page_template
        return render(request, template,
                      self.get_context_for_article_list(articles, get_page(request)), context_instance=RequestContext(request))
