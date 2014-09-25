from django.shortcuts import render


class Newsletters:
    def get_subscribe_page(self, request, template="subscribe.html"):
        return render(request, template)
