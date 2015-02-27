
$(document).ready(function() {



$('a[href*=#]:not([href=#], .accordion-toggle)').click(function() {
	    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') 
	        || location.hostname == this.hostname) {

	        var target = $(this.hash);
	        target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
	           if (target.length) {
	           	if ($(".navbar").css("position") == "fixed" ) {
	             $('html,body').animate({
	                 scrollTop: target.offset().top-73
	            }, 750);
	         } else {
	             $('html,body').animate({
	                 scrollTop: target.offset().q1top
	            }, 750);
	         }
	            return false;
	        }
	    }
	});
	
});