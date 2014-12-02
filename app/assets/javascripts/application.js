// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(document).ready (function(e){
	$("[class='number_field_count']").click(function(){
       var count = $(this).val();
       var id = $(this).attr('data');
		$.ajax({
		  url: '/cart_item/update_count',
		  data: {id: id, count: count}, 
		    feild: function(data)
                {
                    alert("feild");
               }
		});


 
	});
});

