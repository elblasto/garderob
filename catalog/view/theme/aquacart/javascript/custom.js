(function( $ ){
	$(function(){
		$('.simpleText').on('click', '.showMore', function() {
			$( this ).toggleClass('active').next().slideToggle( 300 );
		});
	});
})( jQuery );