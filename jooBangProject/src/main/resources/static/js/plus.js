$(document).ready(function(){

	$('.parent-btn').click(function(){
		$('body').toggleClass('btn-active').removeClass('face-chl-active ins-chl-active tweet-chl-active');
	});


	$('.parent-btn').focusout(function(){
		$('body').removeClass('btn-active');
	});


	$('.child').click(function(e){
		 event.stopPropagation();
	});

	$('.child-1').click(function() {
		$('body').toggleClass('tweet-chl-active').removeClass('face-chl-active ins-chl-active');
	})

	$('.child-2').click(function() {
		$('body').toggleClass('face-chl-active').removeClass('tweet-chl-active ins-chl-active');
	})
	$('.child-3').click(function() {
		$('body').toggleClass('ins-chl-active').removeClass('face-chl-active tweet-chl-active');
	})

	$('.openAll').click(function(){
		$('body').removeClass('face-chl-active ins-chl-active tweet-chl-active').toggleClass('btn-active face-chl-active ins-chl-active tweet-chl-active close-text');
	});

});