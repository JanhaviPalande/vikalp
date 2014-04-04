from django.http import HttpResponse
from django.shortcuts import render
from vikalp.helper_functions.functional import process_tag_or_categories_or_article, get_page
from vikalp.helper_functions.pdf_generator import PDFGenerator
from vikalp.service.article_service import ArticleService
from vikalp.helper_functions.pdf_generator import StyleArticlePDF
from vikalp.helper_functions.pdf_generator import PDF_CONTENT_TYPE
from vikalp.views.google_maps import get_article_map, MapFormForSideBar


def article_category_is_perspectives(category):
    if 'perspectives' in category.title.lower():
        return True


def article_is_a_perspective(article):
    return filter(article_category_is_perspectives, article.article_categories.all())


class ArticleDetail:
    def __init__(self):
        self.article_service = ArticleService()
        self.pdf_generator = PDFGenerator()
        self.style_article_pdf = StyleArticlePDF()

    def article_detail(self, request, slug, template="article/article_detail.html"):
        articles = self.article_service.get_published_articles_with_related_articles(request)
        article = process_tag_or_categories_or_article(slug, articles)
        page = get_page(request)
        article_map = get_article_map(True)
        if article_is_a_perspective(article):
            request.path_info = '/policy-edits/'
            page = get_page(request)
        return render(request, template, {"article": article, "page": page, 'form': MapFormForSideBar(initial={'map': article_map}),
                                          "latest_commented_articles": self.article_service.get_latest_unique_commented_on_articles()})

    def build_response(self, article_title):
        response = HttpResponse(content_type=PDF_CONTENT_TYPE)
        response['Content-Disposition'] = self.pdf_generator.generate_pdf_filename(article_title)
        return response

    def build_pdf_content(self, article):
        return self.style_article_pdf.sytle_pdf_content(article)

    def article_download(self, request, slug):
        article = process_tag_or_categories_or_article(slug,
                                                       self.article_service.get_published_articles_with_related_articles(
                                                           request))
        response = self.pdf_generator.generate_pdf_from_html(html=self.build_pdf_content(article),
                                                             file=self.build_response(article_title=article.slug))
        return response
