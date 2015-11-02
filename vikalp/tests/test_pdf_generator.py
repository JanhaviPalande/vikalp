# -*- coding: UTF-8 -*-
from unittest import TestCase
from vikalp.helper_functions.pdf_generator import PDFGenerator


class PDFGeneratorTest(TestCase):
    def setUp(self):
        self.pdf_generator = PDFGenerator()

    def test_unicode_pdf_filename(self):
        filename = self.pdf_generator.generate_pdf_filename(
            u"सध्याच्या विकासाच्या पर्यायांचा पाठपुरावा करण्याचा निर्धार करून ‘महाराष्ट्र विकल्प संगम’ची सांगता (IN MARATHI)")
        self.assertEqual(
            u"attachment; filename=सध्याच्या विकासाच्या पर्यायांचा पाठपुरावा करण्याचा निर्धार करून ‘महाराष्ट्र विकल्प संगम’ची सांगता (IN MARATHI).pdf",
            filename)
