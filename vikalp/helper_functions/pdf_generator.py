import cStringIO
import os
import xhtml2pdf.pisa as pisa
from django.conf import settings


class PDFGenerator:
    def generate_pdf_from_html(self, html, file):
        pisa.CreatePDF(cStringIO.StringIO(html.encode("UTF-8")), file, encoding="UTF-8",
                       link_callback=self.fetch_resources)
        return file

    def generate_pdf_filename(self, filename):
        return str(filename).decode('utf-8') + ".pdf"


    def fetch_resources(self, uri, rel):
        path = os.path.join(settings.MEDIA_ROOT, uri.replace(settings.MEDIA_URL, ""))
        return path



class StyleArticlePDF:
    def style_pdf_title(self, article):
        return "<div style='font-size:28px;'>%s</div>" % article.title

    def style_pdf_author_timestamp(self, article):
        return "<div style='font-size:12px;'>Author - %s, Published on - %s.%s.%s</div>" % (
            article.article_author, str(article.publish_date.day), str(article.publish_date.month),
            str(article.publish_date.year))

    def sytle_pdf_content(self, article):
        return self.style_pdf_title(article) + self.style_pdf_author_timestamp(article) + article.content
