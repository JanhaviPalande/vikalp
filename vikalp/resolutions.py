
# this  file is context-processor for calculating image size resolution different for mobile and desktop 

from mezzanine.utils import device

# to detect if the request is from mobile or not 
# return true if mobile
def is_mobile(request):
    return device.device_from_request(request) == 'mobile'

def resolutions(request):
	if is_mobile(request):
		return {
			"article_img_width": 240,
            "article_img_height": 135,
            "article_detail_img_width": 470,
            "article_detail_img_height": 264,
            "is_mobile":True
		}
	else:
		return {
			"article_img_width": 327,
            "article_img_height": 184,
            "article_detail_img_width": 1024,
            "article_detail_img_height": 576, 
            "is_mobile":False
		}
