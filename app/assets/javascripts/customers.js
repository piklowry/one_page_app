	 $(function(){
	 	$('')
	 


	 $.ajax({
    url: "/customers/" + customer_id
    dataType: 'json',
    type: 'put',
    data: {
      json: json,
    },
    success: function(data) {
      
    },
  });
}

// $(function(){
// 	$(':delete').on('click', function(){
// 		$("#customers_list").html("escape_javascript( render(:partial => 'customers') )");
// 		$("#customer_form").html("escape_javascript( render(:partial => 'customers') ) ");
// 			var row			= $(this).parents('form'),
// 			customer_id	= $(this).attr('date-customer-id');

// 			$(row).hide("slow");

// 			$.ajax({
// 			  url: "/customers/" + customer_id
// 			  type: 'DELETE',
// 			  success: function(result) {
			   
//         }
//      });

			

// 		});

// });


// $(function(){
// 	$(':delete').on('click', function(){
// 		$("#customer_form").html("escape_javascript( render(:partial => 'customers') ) ");

// 		var row			= $(this).parents('form'),
// 			customer_id	= $(this).attr('date-customer-id');

// 			$(row).hide("slow");

// 			$.ajax({
// 			  url: "/customers/" + customer_id
// 			  type: 'POST',
// 			  success: function(result) {
			   
//         }
//      });

			

// 		});

// });






// $('form').submit(function() {  
//     var valuesToSubmit = $(this).serialize();
//     $.ajax({
//         url: "/customers/" + customer_id,
//         type: "POST" //sumbits it to the given url of the form
//         data: valuesToSubmit,
//         dataType: "JSON" // you want a difference between normal and ajax-calls, and json is standard
//     }).success(function(json){
//         //act on result.
//     });
//     return false; // prevents normal behaviour
// });
