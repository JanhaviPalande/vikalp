from vikalp.models import Article

def get_promoted_articles():
    return Article.objects.filter(promoted='t')[:3]