from django.test import TestCase
from django.test import Client


class NewsletterTest(TestCase):
    def test_subscribe_page_response(self):
        response = Client().get('/newsletter/subscribe')
        error_message = "Expected 200 Status Code from Response"
        self.assertEquals(200, response.status_code, error_message)
