
$(document).ready(function(){
    $(window).scroll(function(){
        if ($(window).scrollTop() > 300){
            $('.navbar-inverse').css({"background-color":"rgba(0,0,0,0.7)"});
        } else if ($(window).scrollTop() < 300){
            $('.navbar-inverse').css({"background-color":"rgba(0,0,0,0)"});
        }
    });
});