import cStringIO
import os
import xhtml2pdf.pisa as pisa
from django.conf import settings


PDF_AUTHOR_TIME_STAMP_STYLE = "<div style='font-size:12px;'>Author - %s, Published on - %s.%s.%s</div>"
PDF_ARTICLE_STYLE = "<div style='font-size:28px;'>%s</div>"
PDF_FILENAME_FORMAT = 'attachment; filename=%s.pdf'
CHARACTER_ENCODING = "UTF-8"
PDF_CONTENT_TYPE = 'application/pdf'


class PDFGenerator:
    def generate_pdf_from_html(self, html, file):
        pisa.CreatePDF(cStringIO.StringIO(html.encode(CHARACTER_ENCODING)), file, encoding=CHARACTER_ENCODING,
                       link_callback=self.fetch_resources)
        return file

    def generate_pdf_filename(self, filename):
        return PDF_FILENAME_FORMAT % str(filename).decode(CHARACTER_ENCODING)


    def fetch_resources(self, uri, rel):
        path = os.path.join(settings.MEDIA_ROOT, uri.replace(settings.MEDIA_URL, ""))
        return path


class StyleArticlePDF:
    def style_pdf_title(self, article):
        return PDF_ARTICLE_STYLE % article.title

    def style_pdf_author_timestamp(self, article):
        return PDF_AUTHOR_TIME_STAMP_STYLE % (
            article.article_author, str(article.publish_date.day), str(article.publish_date.month),
            str(article.publish_date.year))

    def sytle_pdf_content(self, article):
        return self.style_pdf_title(article) + self.style_pdf_author_timestamp(article) + article.content
