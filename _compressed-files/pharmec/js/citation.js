j = jQuery.noConflict();
j(document).ready(function(){
    j('.accreditation-logos-slider').slick({
        dots: false,
        arrows: true,
        slidesToShow: 5,
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
              slidesToShow: 2
            }
          }
        ]
    });
    j('.pharmec-testimonials-slider').slick({
        slide: "div",
        dots: true
    });
    j('.pharmec-staff-slider').slick({
        slide: "div"
    });
    var words = [
        { text: "care", weight: 14},
        { text: "commercial cleaning", weight:13 },
        { text: "construction", weight:12 },
        { text: "dentist", weight: 11 },
        { text: "engineering", weight: 10.5 },
        { text: "education", weight: 10.6 },
        { text: "food and drink", weight: 10 },
        { text: "funeral directors", weight: 9.5 },
        { text: "glazing", weight: 9 },
        { text: "horticulture", weight: 8.5 },
        { text: "leisure", weight: 8 },
        { text: "transport", weight: 7.5 },
        { text: "manufacturing", weight: 7.5 },
        { text: "nurseries", weight: 7.3 },
        { text: "pharmacies", weight: 7.2 },
        { text: "vets", weight: 7.1 }
    ];
    j('#tag-cloud-list').jQCloud(words, {
        autoResize: true,
        height:400
    });
    j('#show-search').click(function(){
        j('#search-box').toggle('slow',function() {
        });
    });
//    var searchbox = j('#search-box');
//    j( window ).resize(function() {
//        if (j(this).width() < 799) {
//          j('#search-box').hide();
//        }
//        else {
//          j('#search-box').show();
//        }
//    });

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
	
	/* Alternate the background colour of the listing boxes across the four options and center the text vertically. */
	var listing_box_background_classes = ["darker", "dark", "light", "lighter", "lighter", "light", "dark", "darker"];
	var no_of_box_classes = listing_box_background_classes.length;
	j(".listing-box").each(function(index){
		/* Change the background class for adjacent elements */
		class_index = (index % no_of_box_classes);
		j(this).addClass(listing_box_background_classes[class_index]);		
		
		/* Add a div wrapper to the text and align the text vertical middle */
		j(this).wrapInner("<div></div>");
		child = j(this).find("div");
		top_offset = Math.round((j(this).height()/2) - (child.height() / 2));
		child.css("margin-top", top_offset + "px");
	});
	
});
