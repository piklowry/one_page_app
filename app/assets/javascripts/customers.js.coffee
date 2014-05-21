
$ ->
  $("form#new_customer").submit ->
    valuesToSubmit = $(this).serialize()
    $.ajax(
      url: "/customers/"
      type: "POST"
      data: valuesToSubmit
      dataType: "JSON"
    ).success (json) ->
      pic = json.customer_pic.url
      edit_url = "/customers/:id/edit"
      
      # var email = json.email 
      console.log json
      $("#something").append "<div class= col-md-4 col-sm-6 ><div class= panel panel-default ><div class= panel-heading ><a href=#  class= pull-right >View all</a><h4>" + json.name + "</h4></div><div class= panel-body ><hr><div class= well well-sm ><div class= media ><a class= thumbnail pull-left  href= # ><img class= media-object  src= //placehold.it/80 ></a><div class= media-body ><h4 class= media-heading ></h4><p><span class= label label-info >" + json.email + "</span> <span class= label label-primary ><br><br>" + json.telephone + "</span></p><p><a href= /customers/:id/edit  class= btn btn-xs btn-default ><span class= glyphicon glyphicon-comment  remote= true  id= opener  data-toggle=  my-modal ></span>Edit</a><a href= #  class= btn btn-xs btn-default ><span class= glyphicon glyphicon-heart ></span>Remove</a></p></div></div></div></div></div></div>"
      return

    false

  return


$ ->
  $(document).on "click", "#sample", ->
  $("#sample").on "click", ->
    row = $(this)
    customer_id = $(this).attr("data-customer-id")
    $(row).hide "slow"
    $.ajax
      url: "/customers/" + customer_id
      type: "post"
      dataType: "json"
      data:
        _method: "delete"

    return

  return

$ ->

  $(document).on "click", "#opener", ->
    customer_id = $(this).attr('data-customer-id');
    $.ajax '/customers/' + customer_id + "/edit",
      type: 'GET'


$ ->
	$(document).ajaxStop (e) ->
		$("#triggerhappy").hide();
		e.preventDefault();
		$.ajax 
			url: "layouts/application"
			type: "GET"  
			dataType: 'json'
			success: (data) ->
				alert "Hi again"
				$(".categoryone").html(data)


$ ->
	$(document).ajaxStop (e) ->
		$("#triggerhappy").hide();
		e.preventDefault();
		$.ajax 
			url: "layouts/application"
			type: "GET"  
			dataType: 'json'
			success: (data) ->
				alert "Hi again"
				$(".categoryone").html(data)

$ ->
  $(".trigger").click (e) ->
    $( ".result" ).load( "/customer.rabl" );
    e.preventDefault()
    $.ajax 
      url: "layouts/application"
      type: "GET"  
      dataType: 'json'
      success: (data) ->
        alert "Hi again"
        $(".categoryone").html(data)

$ ->
  $(".one").click (e) ->
    alert "Your Are Awesome"
    e.preventDefault()
    $.ajax 
      url: "layouts/application"
      type: "GET"  
      dataType: 'json'
      success: (data) ->
        alert "Hi again"
        $(".one").html(data)



