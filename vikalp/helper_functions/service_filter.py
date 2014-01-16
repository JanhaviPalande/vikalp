def remove_policy_edits_from_categories(articleCategories):
    articleCategories = filter(find_policy_edits_category, articleCategories)
    return articleCategories

def find_policy_edits_category(articleCategory):
    return "policy" not in (articleCategory.title.lower())
