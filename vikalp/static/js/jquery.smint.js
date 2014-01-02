
	(function(){


	$.fn.smint = function( options ) {

		// adding a class to users div
		$(this).addClass('smint')

		var settings = $.extend({
		            'scrollSpeed '  : 500
		}, options);

		//Set the variables needed
		//var optionLocs = new Array();
		var lastScrollTop = 0;
		var menuHeight = $(".smint").height();

		return $('.smint a').each( function(index) {
            
			if ( settings.scrollSpeed ) {
				var scrollSpeed = settings.scrollSpeed
			}


			var stickyTop = $('.smint').offset().top;
				

			// check position and make sticky if needed
			var stickyMenu = function(direction){

				// current distance top
				var scrollTop = $(window).scrollTop(); 

				//console.log('Sticky Top:' + stickyTop);
				//console.log('Scroll Top:' + scrollTop);
				
				// if we scroll more than the navigation, change its position to fixed and add class 'fxd', otherwise change it back to absolute and remove the class
				if (scrollTop > stickyTop) { 
					$('.smint').css({ 'position': 'fixed', 'top':0 }).addClass('fxd');	
					
				} else if(scrollTop < 100){
					
					$('.smint').css({ 'position': 'absolute', 'top':'100px' }).removeClass('fxd'); 
					
				}   

			};

			// run functions
			stickyMenu();

			// run function every time you scroll
			$(window).scroll(function() {
				//Get the direction of scroll
				var st = $(this).scrollTop();
				if (st > lastScrollTop) {
				    direction = "down";
				} else if (st < lastScrollTop ){
				    direction = "up";
				}
				lastScrollTop = st;
				stickyMenu(direction);

			});
        	
		});
	}


})();