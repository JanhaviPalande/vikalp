$(document).ready( function() {
    $('.subMenu').smint({
    	'scrollSpeed' : 1000
    });


	$('.banner').unslider({
		speed: 300,               //  The speed to animate each slide (in milliseconds)
		delay: 3000,              //  The delay between slide animations (in milliseconds)
		keys: true,               //  Enable keyboard (left, right) arrow shortcuts
		dots: true,               //  Display dot navigation
		fluid: false              //  Support responsive design. May break non-responsive designs
	});

	$("#footer-lower").hide();

	$("footer").click(function(){
		$("#footer-lower").toggle();
	});
});