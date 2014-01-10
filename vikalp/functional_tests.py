from django.utils import unittest
from selenium import webdriver
from settings import SITE_TITLE

class FunctionalTest(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()

    def test_(self):
        #On Home
        self.driver.get("http://localhost:8080/")

        #Click on logo, would lead to same page
        self.driver.find_element_by_class_name("navbar-brand").click()
        self.assertIn("http://localhost:8080/", self.driver.current_url)

        #Check site title
        self.assertIn(SITE_TITLE, self.driver.title)
        self.assertTrue(self.driver.find_element_by_class_name("navbar-brand").is_displayed())

        #Click on featured articles
        self.driver.find_element_by_id("feature-article").click()

        #On Article Page
        self.assertIn("article", self.driver.current_url)
        #Article Title is displayed
        self.assertTrue(self.driver.find_element_by_tag_name("h1").is_displayed())

        #Check sidebar widgets
        self.assertTrue(self.driver.find_element_by_class_name("tag_cloud").is_displayed())
        self.assertTrue(self.driver.find_element_by_class_name("well").find_element_by_tag_name("h4").is_displayed())

        #Click on tag cloud
        self.driver.find_element_by_class_name("tag_cloud").find_element_by_tag_name("a").click()
        self.driver.find_element_by_tag_name("h1").is_displayed()
        try:
            self.driver.find_element_by_id("article-list-link").is_displayed()
        except:
            self.driver.find_element_by_tag_name("h1").is_displayed()
            self.tearDown()

        #Click on article
        self.driver.find_element_by_id("article-list-link").click()

        #On Article Page
        self.assertIn("article", self.driver.current_url)

        #Article Title is displayed
        self.assertTrue(self.driver.find_element_by_tag_name("h1").is_displayed())

    def tearDown(self):
        self.driver.quit()


if __name__ == '__main__':
    unittest.main()