$(document).ready(function() {
		$('.content').hide()
		$('.container').hover(function(){     
    		$(this).find('.content').fadeIn();
  		},function(){
   			$(this).find('.content').fadeOut();
 		});
});