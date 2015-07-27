j = jQuery.noConflict();
j(document).ready(function () {

    var is_mobile = isMobile();
    var old_is_mobile;

    if (is_mobile != true) {
        j('#left-button').show();
        j('#right-button').show();
        handleMenu();
    } else {
        j('#left-button').hide();
        j('#right-button').hide();
    }

    setup_trimmed_text();
    reduce_text_from_news();

    setInterval(function () {
        old_is_mobile = is_mobile;
        is_mobile = isMobile();
        if (old_is_mobile != is_mobile) {
            reduce_text_from_news();

            if (is_mobile != true) {
                j('#left-button').show();
                j('#right-button').show();
                handleMenu();
            } else {
                j('#left-button').hide();
                j('#right-button').hide();
            }

        }
    }, 200);

    j('.partners-logos-slider').slick({
        dots: false,
        arrows: true,
        slidesToShow: 3,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
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

    j("#togglemenu").click(function () {
        if (j('#top-bar-id').hasClass("expanded")) {
            j('#top-bar-id').removeClass("expanded");
        } else {
            j('.top-bar').addClass("expanded");
        }
    });
    j(".accordion dd").on("click", "a:eq(0)", function (event) {

        /* j(".accordion dd div.content:visible").slideToggle("slow"); */
        if (j(this).find(".content").hasClass("active")) {
            j(this).find("content").hide("slow");
        }
        j(this).parent().find(".content").slideToggle("slow");
    });


});

function checkMenuPosition() {
    var relativeLeft = j(".main_menu").offset().left - j("#gruemenu").offset().left;
    var menu_width = j('#gruemenu').width();
    var div_width = j('.main_menu').width();
    var difference = menu_width - div_width;

    if (relativeLeft == 0) {
        j('#left-button').hide();
    } else {
        j('#left-button').show();
    }

    if (relativeLeft >= difference) {
        j('#right-button').hide();
    } else {
        j('#right-button').show();
    }

}

function isMobile() {
    //if (j('#mobile_identifier').css('width') == "1px" && j('#mobile_identifier').css('height') == "1px") {
    //    return false;
    //} else {
    //    return true;
    //}

    var width = j('#menu-button').width();

    if (width != 38) {
        return true;
    }
    return false;
}

j.desktop_news_array = {};
j.mobile_news_array = {};

function reduce_text_from_news() {
    if (isMobile()) {
        j('.news_description').each(function (index, element) {
            j(this).children().first().html(j.mobile_news_array[index]);
            j(this).children().first().siblings().hide();
        });
    } else {
        j('.news_description').each(function (index, element) {
            j(this).children().first().html(j.desktop_news_array[index]);
            j(this).children().first().siblings().hide();
        });
    }

}

function setup_trimmed_text() {
    var trimmed_mobile_array = {};
    var trimmed_desktop_array = {};
    j('.news_description').each(function (index, element) {
        var full_text = j(this).children().first().html();
        var trimmed_text_for_mobile = full_text.slice(0, 150);
        var trimmed_text_for_desktop = full_text.slice(0, 366);
        trimmed_text_for_mobile += " ...";
        trimmed_text_for_desktop += " ...";
        trimmed_mobile_array[index] = trimmed_text_for_mobile;
        trimmed_desktop_array[index] = trimmed_text_for_desktop;
    })

    j.mobile_news_array = trimmed_mobile_array;
    j.desktop_news_array = trimmed_desktop_array;
}


function checkIfWeNeedScrollingMenu(menu_width) {
    var div_width = j('.main_menu').width();

    if (menu_width > div_width) {
        return true;
    }

    return false;
}

function addTheScrollingCSS() {
    var style = "<style type='text/css'>@media only screen and (min-width: 748px) { .main_menu{ white-space: nowrap; overflow-x: hidden; overflow-y: hidden;  direction: ltr; position: absolute; left: 0; top: 0; margin-bottom: 10px } #left_btn_div{position: relative; float: left; margin-top: 0; z-index: 100000; width:120px; } #right_btn_div{ position: relative; float: right;margin-top: 0; z-index: 100000; width:120px; }}</style>";
    j('body').append(style);

}

var set_height = 0;
function handleMenu() {
    var menu_width = 0;
    //loop through all menu items and build the width
    j('#gruemenu > ul > li').each(function () {
        menu_width += j(this).width();
    });

    //check if we even need this
    var scrolling_menu = checkIfWeNeedScrollingMenu(menu_width);

    //set the buttons to hidden

    j('#left-button').hide();
    j('#right-button').hide();

    if (scrolling_menu == true) {
var parent_item;
        addTheScrollingCSS();
        j('#gruemenu .has-sub').hover(function () {
                if (j(this).parent().parent().is('#gruemenu')) {
                    parent_item = j(this);
                }
                set_height = 0;
                var uls = parent_item.find('ul');
                uls.each(function(){
                    set_height += j(this).height();
                })

                height = set_height;
                var margin_top = 68 + height + 20;
                height += 78;
                var style1 = "<style type='text/css'>@media only screen and (min-width: 748px) { .main_menu{height: "+height+"px;} }</style>";
                j('body').append(style1);
                //j('.main_menu').height(height + "px");
                //j('#right_btn_div, #left_btn_div').css('margin-top', "-" + margin_top + "px");
            },
            function () {
                intv = setInterval(function () {
                    var is_hovered = j(this).children();
                    if (!is_hovered) {
                        j('.main_menu').height('52px');
                    } else {
                        clearInterval(intv);
                    }
                }, 10)}
        );
                menu_width += 30;
                var style = "<style type='text/css'>@media only screen and (min-width: 748px) { #gruemenu { width: " + menu_width + "px;}}</style>";
                j('body').append(style);


                /// stuff for scrolling the menu
                var iv;
                var div = j('.main_menu');


                //set the scroll at the begining
                div.scrollLeft(div.scrollLeft() - menu_width);
                checkMenuPosition();

                j('#left_btn_div').hover(function () {
                    iv = setInterval(function () {
                        div.scrollLeft(div.scrollLeft() - 20);
                        checkMenuPosition();
                    }, 20);

                }, function () {
                    clearInterval(iv);

                });
                j('#right_btn_div').hover(function () {
                    iv = setInterval(function () {
                        div.scrollLeft(div.scrollLeft() + 20);
                        checkMenuPosition();
                    }, 20);

                }, function () {
                    clearInterval(iv);

                });
                //j('#left-button,#right-button').on('mouseup mouseleave', function () {
                //    clearInterval(iv);
                //    //console.log('up or leave');
                //});
            }
    }