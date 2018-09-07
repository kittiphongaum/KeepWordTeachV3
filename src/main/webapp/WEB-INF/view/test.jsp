<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE HTML>
 
<html>
<head>
      <title>Spring Boot - DELETE-UPDATE AJAX Example</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="/js/ajaxGet.js"></script>
      <script src="/js/ajaxPut.js"></script>      
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>

<body>
<div class="container">
	<h1>Customer List</h1>
    <div id="customerlist">
    	<ul class="list-group">
		</ul>
    </div>

	<div id="updateCustomerId" class="row col-md-6" style="">
	<h3>Here to Edit Info of Customer: </h3>
	<form id="customizedForm" style='background-color:#7FA7B0; color:white; padding:20px 20px 20px 20px'>
	  <div class="form-group">
	    <label for="updateFormCustId">CustomerId</label>
	    <input type="text" class="form-control" id="updateFormCustId" disabled="disabled"></input>
	  </div>
	  <div class="form-group">
	    <label for="updateFormName">Name:</label>
	    <input type="text" class="form-control" id="updateFormName" />
	  </div>
	  <div class="form-group">
	    <label for="updateFormAge">Age:</label>
	    <input type="number" min="16" max="100" class="form-control" id="updateFormAge" />
	  </div>
	  <div class="form-group">
	    <label for="updateFormStreet">Street:</label>
	    <input type="text" class="form-control" id="updateFormStreet" />
	  </div>
	  <div class="form-group">
	    <label for="updateFormPostcode">Postcode:</label>
	    <input type="text" class="form-control" id="updateFormPostcode" />
	  </div>
	  <button type="submit" class="btn btn-default">Update</button>
	</form>
	
	<div  style="margin:10px 0px 10px 0px;">
	</div>
	
	</div>
</div>
</body>

<script>
$(document).ready(function() {
	
	ajaxGet();
	
	// DO GET
	function ajaxGet(){
		$.ajax({
			type : "GET",
			url : window.location + "api/customer/all",
			success: function(result){
				$.each(result, function(i, customer){
					
					var updateUrl=window.location + "api/customer/update/" + customer.id;
					
					// render a customer data form
					var customerInfo = '<form id=custform_' + customer.id + ' class="form-inline" style="margin-top:20px;margin-bottom:20px">' +
											'<div class="form-group">'	+
										 		'<label style="margin-left:10px; margin-right:5px">Id: </label>'	+
										 		'<input name="customerId" type="text" class="form-control" value=' + customer.id  + ' disabled >' +
										 	'</div>' +
										 	'<div class="form-group">'	+
										 		'<label style="margin-left:10px; margin-right:5px">Name: </label>'	+
										 		'<input name="name" type="text" class="form-control"  value=' + customer.name + ' disabled >' +
										 	'</div>' +
										 	'<div class="form-group" style="display: none;">' +
										  		'<label style="margin-left:5px; margin-right:5px">lastname: </label>' +
										  		'<input name="age" type="number" min="10" max="100" class="form-control"  value=' + customer.age +'>' +
										  	'</div>' +
										  	'<div class="form-group" style="display: none;">' +
										  		'<label style="margin-left:5px; margin-right:5px">street: </label>' +
										  		'<input name="street" type="text" class="form-control"  value=' + customer.address.street +'>' +
									  		'</div>' +
									  		'<div class="form-group" style="display: none;">' +
										  		'<label style="margin-left:5px; margin-right:5px">postcode: </label>' +
										  		'<input name="postcode" type="text" class="form-control"  value=' + customer.address.postcode +'>' +
									  		'</div>' +
										  	'<button type="submit" class="btn btn-default" style="margin-left:10px">Select</button>'
										'</form>';
					
					$('#customerlist .list-group').append(customerInfo)
					
					// default fill data of the first customer to update-form
					if(i==0){
						$("#updateFormCustId").val(customer.id);
						$("#updateFormName").val(customer.name);
						$("#updateFormAge").val(customer.age);
						$("#updateFormStreet").val(customer.address.street);
						$("#updateFormPostcode").val(customer.address.postcode);
					}
					
		        });
				console.log("Success: ", result);
			},
			error : function(e) {
				$("#customerlist").html("<strong>Error</strong>");
				console.log("ERROR: ", e);
			}
		});	
	}
})



$(document).ready(function() {
	
	$(document).on('submit', 'form', function (e) {
		event.preventDefault();
		fillDetailsToUpdateForm($(this));
	})
	
	$("#customizedForm").submit(function(){
		event.preventDefault();
		ajaxPut();
	});
	
	function fillDetailsToUpdateForm(object){
		var custId = $(object).find("input[name='customerId']").val();
		var name = $(object).find("input[name='name']").val();
		var age = $(object).find("input[name='age']").val();
		var street = $(object).find("input[name='street']").val();
		var postcode = $(object).find("input[name='postcode']").val();
		
		$("#updateFormCustId").val(custId);
		$("#updateFormName").val(name);
		$("#updateFormAge").val(age);
		$("#updateFormStreet").val(street);
		$("#updateFormPostcode").val(postcode);
	}
	
	/*
	 * AJAX PUT updated-form
	 */
    function ajaxPut(){
    	// PREPARE FORM DATA
    	var formData = {
    			id: $("#updateFormCustId").val(),
    			name : $("#updateFormName").val(),
    			age : $("#updateFormAge").val(),
    			address : {
    		    	street : $("#updateFormStreet").val(),
    		    	postcode : $("#updateFormPostcode").val()
    		    }
    	}
    	
    	var id = $("#updateFormCustId").val();
    	
    	console.log("formData before PUT: " + formData);
    	
    	// DO PUT
    	$.ajax({
			type : "PUT",
			contentType : "application/json",
			url : window.location + "api/customer/update/" + id,
			data : JSON.stringify(formData),
			dataType : 'json',
			
			// SUCCESS response
			success : function(customer) {
				// Create successful message
				$("#putResultDiv").html("<p style='background-color:#67597E; color:white; padding:20px 20px 20px 20px'>" + 
											"Put Successfully! <br>" +
											"--> {id: " + customer.id +
												"name: " + customer.name +
												", age: " + customer.age +
												", street: " + customer.address.street +
												", postcode: " + customer.address.postcode +"}</p>");
				
				// Again fill data to Update-Form
				
				$("#updateFormName").val(customer.name);
				$("#updateFormAge").val(customer.age);
				$("#updateFormStreet").val(customer.address.street		$("#updateFormPostcode").val(customer.address.postcode););
		
				
				// Update name of the updated customer on Customer List
				$('#custform_' + customer.id).find("input[name='name']").val(customer.name);
				$('#custform_' + customer.id).find("input[name='age']").val(customer.age);
				$('#custform_' + customer.id).find("input[name='street']").val(customer.address.street);
				$('#custform_' + customer.id).find("input[name='postcode']").val(customer.address.postcode);
			},
			
			// ERROR response 
			error : function(e) {
				alert("Error!")
				console.log("ERROR: ", e);
			}
		});
    }
})

</script>

</html>