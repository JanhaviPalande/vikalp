def remove_perspectives_from_categories(articleCategories):
    articleCategories = filter(find_perspectives_category, articleCategories)
    return articleCategories


def find_perspectives_category(articleCategory):
    return "perspectives" not in (articleCategory.title.lower())
