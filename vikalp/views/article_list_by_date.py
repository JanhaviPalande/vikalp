from django.template import RequestContext
from mezzanine.conf import settings
from mezzanine.utils.views import render, paginate
from vikalp.helper_functions.functional import get_model_content_type, process_tag_or_categories_or_article, get_page, translate_to_model
from vikalp.views.views import articleService, MODEL_NAME, APP_NAME


class ArticleListByDate:
    def get_context_for_article_list(self, articles, page=None, page_template = "article/article_list_by_date_page.html"):
        context = {"articles": articles, "page": page, "page_template" : page_template,}
        return context


    def article_list_by_date(self, request, tag=None, category=None, template="article/article_list_by_date.html"):
        settings.use_editable()
        page_template = "article/article_list_by_date_page.html"
        articles = articleService.get_all_published_articles_without_carousel_items_and_policy_edits(request)
        if request.is_ajax():
            template = page_template
        return render(request, template,
                      self.get_context_for_article_list(articles, get_page(request)), context_instance=RequestContext(request))
