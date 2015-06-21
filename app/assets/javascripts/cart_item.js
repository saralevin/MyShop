
$( document ).ready(function() {
$(".remove").click(function(){
 	$.ajax({
    	url: "/cart_item/"+$("#span").html(),
    	type: 'post',
    	 beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},
  		data: {"_method":"delete"},
    	success: function(result){
    		console.log("aaaaaaaaaaaaaaaaaaa");
    		$("#tableDiv").html(result);
    		}
		})
	});

});

