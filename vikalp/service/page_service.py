from mezzanine.pages.models import Page


class PageService:
    def get_page_ascendants(self, request, slug):
        return Page.objects.with_ascendants_for_slug(slug, for_user=request.user, include_login_required=True)
