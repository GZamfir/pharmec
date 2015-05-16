j = jQuery.noConflict();
j(document).ready(function(){
    j('.accreditation-logos-slider').slick({
        dots: false,
        arrows: true,
        slidesToShow: 3,
        slidesToScroll:1,
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
    j('.citation-testimonials-slider').slick({
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
