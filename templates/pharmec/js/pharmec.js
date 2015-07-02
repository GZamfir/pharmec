j = jQuery.noConflict();
j(document).ready(function(){
    var is_mobile = isMobile();
    var old_is_mobile;

    setup_trimmed_text();
    reduce_text_from_news();

    setInterval(function(){
        old_is_mobile = is_mobile;
        is_mobile = isMobile();
        if(old_is_mobile != is_mobile){
            reduce_text_from_news();
        }
    },200);

    j('.partners-logos-slider').slick({
        dots: false,
        arrows: true,
        slidesToShow: 3,
        slidesToScroll:1,
        autoplay:true,
        autoplaySpeed:2000,
        infinite: true,
        responsive: [
          {
            breakpoint: 768,
            settings: {
              arrows: true,
              slidesToShow: 3
            }
          },
          {
            breakpoint: 480,
            settings: {
              arrows: true,
              slidesToShow: 1
            }
          }
        ]
    });
    j('.pharmec-testimonials-slider').slick({
        slide: "div",
        dots: true
    });

    j("#togglemenu").click(function(){
        if (j('#top-bar-id').hasClass("expanded")) {
            j('#top-bar-id').removeClass("expanded");
        } else {
            j('.top-bar').addClass("expanded");
        }
    });
    j(".accordion dd").on("click", "a:eq(0)", function (event)
        {

            /* j(".accordion dd div.content:visible").slideToggle("slow"); */
            if (j(this).find(".content").hasClass("active")) {
                j(this).find("content").hide("slow");
            }
            j(this).parent().find(".content").slideToggle("slow");
    });



});

function isMobile(){
    if(j('#mobile_identifier').css('width') == "1px" && j('#mobile_identifier').css('height') == "1px"){
        return false;
    } else {
        return true;
    }
}

j.desktop_news_array = {};
j.mobile_news_array = {};

function reduce_text_from_news(){
    if(isMobile()){
        j('.news_description').each(function(index, element) {
            j(this).children().first().html(j.mobile_news_array[index]);
            j(this).children().first().siblings().hide();
        });
    } else {
        j('.news_description').each(function(index, element) {
            j(this).children().first().html(j.desktop_news_array[index]);
            j(this).children().first().siblings().hide();
        });
    }

}

function setup_trimmed_text(){
    var trimmed_mobile_array= {};
    var trimmed_desktop_array = {};
    j('.news_description').each(function(index, element){
        var full_text = j(this).children().first().html();
        var trimmed_text_for_mobile = full_text.slice(0,150);
        var trimmed_text_for_desktop = full_text.slice(0,366);
        trimmed_text_for_mobile += " ...";
        trimmed_text_for_desktop += " ...";
        trimmed_mobile_array[index] = trimmed_text_for_mobile;
        trimmed_desktop_array[index] = trimmed_text_for_desktop;
    })

    j.mobile_news_array = trimmed_mobile_array;
    j.desktop_news_array = trimmed_desktop_array;
}

function stickServiceBox(){
    if(isMobile() == false) {
        var height = j(".component_column").height() - j(".footer_holder").height()
        j(".purchase_column").css({'height':(height+'px')});
        j(".stick").css({'max-height':(height+'px')});
        j('.stick').stick_in_parent();
    } else {
        j(".stick").trigger("sticky_kit:detach");
    }
}
