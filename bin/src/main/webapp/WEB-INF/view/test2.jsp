<!DOCTYPE HTML>
 
<html>
<head>
      <title>Spring Boot - DELETE-UPDATE AJAX Example</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	  <script src="/js/jqueryAjaxGet.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>
 
<body>
<div class="container">
	<h1>Customer Table</h1>
		<div class="row col-md-7 table-responsive">
			<table id="customerTable" class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>No</th>
						<th>Name</th>
						<th>Age</th>
						<th>Street</th>
						<th>Postcode</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
			
			<div id="resultMsgDiv">
			</div>
		</div>
	</div>
	
</body>
<script>
$(document).ready(function() {
	
	// Do GET all Customers from Back-End with JQUERY AJAX
	$(function () {
		$.ajax({
			type : "GET",
			url : "/TableTeachingAll",
			success: function(result){
				$.each(result, function(index, customer){
					
					var customerRow = '<tr>' +
										
										'<td>' + customer.studenNumber + '</td>' +
										'<td>' + customer.section + '</td>' +
										'<td>' + customer.startTime + '</td>' +
										'<td>' + customer.subject.subjectName+ '</td>' +
								        '<td class="text-center">' +
								        	'<input type="hidden" value=' + customer.id + '>' +
								        	'<a>' +
						          				'<span class="glyphicon glyphicon-remove"></span>' +
						        			'</a>' +
								        '</td>' +
									  '</tr>';
					
					$('#customerTable tbody').append(customerRow);
					
		        });
				
				$( "#customerTable tbody tr:odd" ).addClass("info");
				$( "#customerTable tbody tr:even" ).addClass("success");
			},
			error : function(e) {
				alert("ERROR: ", e);
				console.log("ERROR: ", e);
			}
		});	
	});
	
	// Do DELETE a Customer via JQUERY AJAX
	// $(document).on("click","a",function() {
		
	// 	var customerId = $(this).parent().find('input').val();
	// 	var workingObject = $(this);
		
	// 	$.ajax({
	// 		type : "DELETE",
	// 		url : window.location + "" + customerId,
	// 		success: function(resultMsg){
	// 			$("#resultMsgDiv").html("<p style='background-color:#67597E; color:white; padding:20px 20px 20px 20px'>" +
	// 										"Customer with Id=" + customerId + " is deleted successfully!"  +
	// 									"</p>");
				
	// 			workingObject.closest("tr").remove();
				
	// 			// re-css for table
	// 			$( "#customerTable tbody tr:odd" ).addClass("info");
	// 			$( "#customerTable tbody tr:even" ).addClass("success");
	// 		},
	// 		error : function(e) {
	// 			alert("ERROR: ", e);
	// 			console.log("ERROR: ", e);
	// 		}
	// 	});
	// });
})
</script>
</html>