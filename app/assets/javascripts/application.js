// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function(){
	var window_height = $(document).height();

	$('#filter_wrapper').css('height', window_height - 75);

	char = 0;
	$('#project_desc_txt').keypress(function(e){
		char++;
		$('#char_left').text(300 - char);
		if(char < 0){
			$(this).unbind(e);
		}
	});



	$('#add_project_btn').click(function(e){
		e.preventDefault();
		$('#new_project_wrapper').toggle();
	});

	$('.delete_btn').click(function(){
		var element_id = $(this).attr('id');
		$('#translucent_overlay').show();
		$('.delete_pannel_wrapper' + element_id).show();
		$('.delete_pannel_wrapper' + element_id).draggable();
	});

	$('.delete_pannel_close_btn, #translucent_overlay').click(function(){
		var element_id = $('.delete_pannel_close_btn').attr('id');
		$('#translucent_overlay').hide();
		$('.delete_pannel_wrapper' + element_id).hide();
	});

	$('.even, .odd').click(function(){
		var element_id = $(this).attr('id');
		var element_height = $('#' + element_id).height();
		//alert(element_height);
		if(element_height <= 100){
			$('#' + element_id).css('height', '300px');
			$('#des_short' + element_id).hide();
			$('#des_long' + element_id).show();
		}else{
			$('#' + element_id).css('height', '40px');
			$('#des_short' + element_id).show();
			$('#des_long' + element_id).hide();
		}
	});
});