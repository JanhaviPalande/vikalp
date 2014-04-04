def remove_perspectives_from_categories(article_categories):
    article_categories = filter(find_perspectives_category, article_categories)
    return article_categories


def find_perspectives_category(article_category):
    return "perspectives" not in (article_category.title.lower())
