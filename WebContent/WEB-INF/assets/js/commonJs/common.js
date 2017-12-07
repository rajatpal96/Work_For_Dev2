/**
 * 
 */
/*
full screan
*/

(function($, window, document){
	  'use strict';

	  if( !screenfull ) return;

	  var Selector = '[data-toggle="fullscreen"]';

	  $(document).on('click', Selector, function (e) {
	      e.preventDefault();

	      if (screenfull.enabled) {
	        
	        screenfull.toggle();
	        
	        // Switch icon indicator
	        if(screenfull.isFullscreen)
	          $(this).children('em').removeClass('fa-expand').addClass('fa-compress');
	        else
	          $(this).children('em').removeClass('fa-compress').addClass('fa-expand');

	      } else { /*Ignore or do something else*/ }
	  });

	}(jQuery, window, document));



$(document).ready(function(){
	$('.count').each(function () {
	    $(this).prop('Counter',0).animate({
	        Counter: $(this).text()
	    }, {
	        duration: 1500,
	        easing: 'swing',
	        step: function (now) {
	            $(this).text(Math.ceil(now));
	        }
	    });
	});



	 $('.progress .progress-bar').css("width",
                function() {
                    return $(this).attr("aria-valuenow") + "%";
                }
        )
});
