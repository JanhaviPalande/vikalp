from django.utils import unittest
from selenium import webdriver


class FunctionalTest(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()

    def test_(self):
        self.driver.get("http://localhost:8080/")
        self.driver.find_element_by_class_name("navbar-brand").click()
        self.assertIn("http://localhost:8080/", self.driver.current_url)
        self.driver.find_element_by_id("feature-article").click()
        self.assertIn("article", self.driver.current_url)

    def tearDown(self):
        self.driver.quit()


if __name__ == '__main__':
    unittest.main()