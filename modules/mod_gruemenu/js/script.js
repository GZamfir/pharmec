( function( $ ) {
$( document ).ready(function() {
$('#gruemenu').prepend('<div id="menu-button">Menu</div>');
	$('#gruemenu #menu-button').on('click', function(){
		var menu = $(this).next('ul');
		if (menu.hasClass('open')) {
			menu.removeClass('open');
		}
		else {
			menu.addClass('open');
		}
	});
});
} )( jQuery );
