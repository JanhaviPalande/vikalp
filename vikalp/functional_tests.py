from django.utils import unittest
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from settings import SITE_TITLE
from test_constants import *


class FunctionalTest(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Firefox()

    def test_logo_title_featured_articles_link_and_tag_cloud(self):
        #On Home
        self.driver.get(HOMEPAGE)

        #Click on logo, would lead to same page
        self.driver.find_element_by_class_name("navbar-brand").click()
        self.assertIn(HOMEPAGE, self.driver.current_url)

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


    def test_search_for_an_article_display_search_results_and_click_on_article_to_view_it(self):
        # Visit Home Page
        self.driver.get(HOMEPAGE)
        self.assertIn(SITE_TITLE, self.driver.title)

        # Find the search form
        element = self.driver.find_element_by_name("q")

        # Enter text to search for an article and press enter
        element.send_keys(SEARCHTEXT + Keys.RETURN)

        # Check that the page displayed is the search results page
        self.assertIn("/search/?q="+SEARCHTEXT, self.driver.current_url)
        self.assertIn("Search Results", self.driver.title)
        self.assertTrue(self.driver.find_element_by_class_name("list-group-item-heading").is_displayed())

        # Click on the link of the article displayed on the search results page
        self.driver.find_element_by_class_name("list-group-item-heading").click()

        # Check that the article page is displayed
        self.assertIn("article/homestay-with-a-difference/", self.driver.current_url)
        self.assertIn("Homestay With a Difference!", self.driver.title)
        self.assertTrue(self.driver.find_element_by_tag_name("h1").is_displayed())

    def test_main_categories_link_individual_category_link_on_categories_page_and_article_page(self):
        # Visit Home Page
        self.driver.get(HOMEPAGE)

        # Find categories link (The link is displayed as Stories on our website)
        element = self.driver.find_element_by_link_text("Stories")

        # Click on the categories link
        element.click()

        # Check that the categories page is displayed
        self.assertIn("/stories/", self.driver.current_url)
        self.assertIn("Stories", self.driver.title)
        self.assertTrue(self.driver.find_element_by_tag_name("h1").is_displayed())
        self.assertTrue(self.driver.find_element_by_id("story-categories").is_displayed())

        # Click on the first category in the list
        self.driver.find_element_by_class_name("list-group-item").click()

        # # Check that the articles page is displayed
        self.assertIn("/article/category/", self.driver.current_url)
        self.assertTrue(self.driver.find_element_by_tag_name("h1").is_displayed())
        self.assertTrue(self.driver.find_element_by_id("articles-list").is_displayed())

        # Click on the first article in the list
        self.driver.find_element_by_id("article-list-link").click()

        # Check that the article is displayed
        self.assertIn("article/homestay-with-a-difference/", self.driver.current_url)
        self.assertIn("Homestay With a Difference!", self.driver.title)
        self.assertTrue(self.driver.find_element_by_tag_name("h1").is_displayed())


    def tearDown(self):
        self.driver.quit()


if __name__ == '__main__':
    unittest.main()
