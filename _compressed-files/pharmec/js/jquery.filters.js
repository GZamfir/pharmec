(function($) {

    $.fn.applyFilters = function( options ) {

        // Establish our default settings
        var settings = $.extend({
            divs_to_handle        : ".content_holder",
            selected_default : 0
        }, options);

        return this.each( function() {
            //set the position at the beginning
            var position = $(this).data('type');

            //this needs to be changed whenever we add a new one
            if(settings['selected_default'] != 2) {
                //display only the first div at the beginning
                $(settings['divs_to_handle'] + " .content:eq(" + settings['selected_default'] + ")").show();
                $(settings['divs_to_handle'] + " .content").not(":eq(" + settings['selected_default'] + ")").hide();
            } else {
                $(settings['divs_to_handle'] + " .content").show();
            }

            //on click function
            $(this).on('click', function(event){
                event.preventDefault();

                if(position != "all") {
                    $(settings['divs_to_handle'] + " .content:eq(" + position + ")").show();
                    $(settings['divs_to_handle'] + " .content").not(":eq(" + position + ")").hide();
                } else {
                    $(settings['divs_to_handle'] + " .content").show();
                }
            })
        });
    }
}(jQuery));