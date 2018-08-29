<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<!DOCTYPE HTML>
 
<html>
<head>
      <title>Spring Boot - DELETE-UPDATE AJAX Example</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
     
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
	<form id="UserUpdateForm1" style='background-color:#7FA7B0; color:white; padding:20px 20px 20px 20px'>
	  <div class="form-group">
	    <label for="updateFormCustId">updateUserID</label>
	    <input type="text" class="form-control" id="updateUserID" ></input>
	  </div>
	  <div class="form-group">
	    <label for="updateFormName">updateUserFname:</label>
	    <input type="text" class="form-control" id="updateUserFname" />
	  </div>
	  <div class="form-group">
	    <label for="updateFormAge">updateUserLname:</label>
	    <input type="text" min="16" max="100" class="form-control" id="updateUserLname" />
	  </div>
	  <div class="form-group">
	    <label for="updateFormStreet">updateFaculty:</label>
	    <input type="text" class="form-control" id="updateFaculty" />
	  </div>
	  <div class="form-group">
	    <label for="updateFormPostcode">updateMojor:</label>
	    <input type="text" class="form-control" id="updateMojor" />
	  </div>
	  <button type="submit" class="btn btn-default">Update</button>
	</form>
	
	<div id="putResultDiv" style="margin:10px 0px 10px 0px;">
	</div>
	
	</div>
</div>
</body>
<script>
$(document).ready(function() {
	
	$(document).on('submit', 'form', function (e) {
		event.preventDefault();
		fillDetailsToUpdateForm($(this));
	})
	
	$("#UserUpdateForm1").submit(function(){
		event.preventDefault();
		ajaxPut();
	});
	
	function fillDetailsToUpdateForm(object){
		
		
		$("#updateUserID").val(userID);
		$("#updateUserFname").val(userFname);
		$("#updateUserLname").val(userLname);
		$("#updateFaculty").val(faculty);
		$("#updateMojor").val(mojor);
	}
	
	/*
	 * AJAX PUT updated-form
	 */
    function ajaxPut(){
    	// PREPARE FORM DATA
    	var userUpdate = {
        userID: $("#updateUserID").val(),
        userFname : $("#updateUserFname").val(),
        userLname : $("#updateUserLname").val(),
        faculty : $("#updateFaculty").val(),
        mojor : $("#updateMojor").val()
        	// address : {
    		  //   	street : $("#updateFormStreet").val(),
    		  //   	postcode : $("#updateFormPostcode").val()
    		  //   }
    	}
    	
    	var userID = $("#updateUserID").val();
    	
    	console.log("formData before PUT: " + formData);
    	
    	// DO PUT
    	$.ajax({
			type : "PUT",
			contentType : "application/json",
			url : window.location + "update" + userID,
			data : JSON.stringify(userUpdate),
			dataType : 'json',
			
			// SUCCESS response
			success : function(userUpdate) {
			
			
				
				// Update name of the updated customer on Customer List
			
			},
			
			// ERROR response 
			error : function(e) {
				alert("Error!")
				console.log("ERROR: อัพเดชไม่ได้ ", e);
			}
		});
    }
})

</script>
</html>