
$(document).ready(function(){
        $('.navbar-nav > li > a').css({"text-shadow": "1.5px 1.5px 3px #666", "color": "white"});
    $(window).scroll(function(){
        if ($(window).scrollTop() > 1){
            $('.navbar-inverse').css({ "background-color": "#fff", "transition": ".2s", "box-shadow":"0px 0px 16px 0px rgba(50,50,50,0.3)"});
            $('.navbar-nav li a').css({"color":"#404040", "text-shadow": "none"})
        } else if ($(window).scrollTop() < 1){
            $('.navbar-inverse').css({"background-color":"rgba(255, 255, 255, 0)", "box-shadow":"0px 0px 0px 0px rgba(0,0,0,0)"});
            $('.navbar-nav li a').css({"color":"#fff", "text-shadow": "1.5px 1.5px 3px #666"});
        }
    });
});