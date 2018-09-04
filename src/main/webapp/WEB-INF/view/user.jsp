<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="./continue.jsp" %>
<%@page import="com.cs.bru.model.User"%>
<%@ page import="java.util.List"%>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
 <!--  <link rel="icon" type="image/png" href="../assets/img/favicon.png"> -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Material Dashboard by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  
  
  
<%
   User  bean = null;
   User  bean1 = null;
	List<User > list = null;
%>

<%
	bean = (User) request.getSession().getAttribute("loing");
    list = (List<User>) request.getSession().getAttribute("listUser");

%>
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="http://www.creative-tim.com" class="simple-text logo-normal">
          Creative Tim
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="./dashboard">
              <i class="material-icons">dashboard</i>
              <p>ข้อมูลการสอน</p>
            </a>
          </li>
          
          
          <li class="nav-item ">
            <a class="nav-link" href="./historyteach">
              <i class="material-icons">library_books</i>
              <p>ประวัติการสอน</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./timetable">
              <i class="material-icons">content_paste</i>
              <p>ตารางสอน</p>
            </a>
          </li>
        <!--   <li class="nav-item ">
            <a class="nav-link" href="./notifications.html">
              <i class="material-icons">notifications</i>
              <p></p>
            </a>
          </li> -->
          <li class="nav-item active">
            <a class="nav-link " href="./user">
              <i class="material-icons">person</i>
              <p>ข้อมูลผู้ใช้</p>
            </a>
          </li>
           <li class="nav-item  ">
            <a class="nav-link" href="./calendar">
              <i class="material-icons">today</i>
              <p>Calendar</p>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">User Profile</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  <span class="notification">5</span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Mike John responded to your email</a>
                  <a class="dropdown-item" href="#">You have 5 new tasks</a>
                  <a class="dropdown-item" href="#">You're now friend with Andrew</a>
                  <a class="dropdown-item" href="#">Another Notification</a>
                  <a class="dropdown-item" href="#">Another One</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
          <div class="col-md-4">
              <div class="card card-profile">
                <div class="card-avatar">
                  <a >
                    <img class="img" src="" />
                  </a>
                </div>
                <div class="card-body">
                  <h6 class="card-category text-gray"></h6>
                  <h4 class="card-title">Alec Thompson</h4>
                  <p class="card-description">
                    
                  </p>
                  <a  class="btn btn-primary btn-round">Edit</a>
                </div>
              </div>
            </div>
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Edit Profile</h4>
                  <p class="card-category">Complete your profile</p>
                </div>
                <div class="card-body" >
                  <form>
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">รหัสผู้สอน</label>
                          <input type="text" class="form-control" id="userId" <%--  value="<%=bean.getUserId()%>" --%>>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">ชื่อ</label>
                          <input type="text" class="form-control" id="userFname"  <%-- value="<%=bean.getUserFname()%>"  --%> >
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">นามสกุล</label>
                          <input type="text" class="form-control" id="userLname"  <%-- value="<%=bean.getUserLname()%>" --%>  >
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">สาขาวิชา</label>
                          <input type="text" class="form-control" id="faculty"   <%-- value="<%=bean.getFaculty()%>"  --%> >
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">คณะ</label>
                          <input type="text" class="form-control" id="mojor" <%-- value="<%=bean.getMojor()%>" --%>  >
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">ตำแหน่ง</label>
                          <input type="text" class="form-control" id="positionTeach" <%-- value="<%=bean.getPositionTeach()%>" --%>  >
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">มีฐานชั่วโมง/คาบ</label>
                          <input type="text" class="form-control" <%-- value="<%=bean.getBaseHour()%>" --%>>
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">เบิกค่าสอนพิเศษได้ไม่เกิน/หน่วยชั่วโมง</label>
                          <input type="text" class="form-control" <%-- value="<%=bean.getBaseKrm()%>" --%> >
                        </div>
                      </div>
                    </div>
                    
                    <button type="submit" class="btn btn-primary pull-right">Update Profile</button>
                    <div class="clearfix"></div>
                  </form>
                </div>
              </div>
            </div>
            
            
          </div>
          
        </div>
      </div>
      
    </div>
  </div>

</body>

<script>
// $(document).ready(function() {
	
// 	$(document).on('submit', 'form', function (e) {
// 		event.preventDefault();
// 		fillDetailsToUpdateForm($(this));
// 	})
	
// 	$("#updateUserForm").submit(function(){
// 		event.preventDefault();
// 		ajaxPut();
// 	});
	
// 	function fillDetailsToUpdateForm(object){
// 		var custId = $(object).find("input[name='updateUserID']").val();
// 		var name = $(object).find("input[name='updateUserID']").val();
// 		var age = $(object).find("input[name='updateUserLname']").val();
// 		var street = $(object).find("input[name='updateFaculty']").val();
// 		var postcode = $(object).find("input[name='updateMojor']").val();
		
// 		$("#updateUserID").val(custId);
// 		$("#updateUserFname").val(name);
// 		$("#updateUserLname").val(age);
// 		$("#updateFaculty").val(street);
// 		$("#updateMojor").val(postcode);
// 	}
	
// 	/*
// 	 * AJAX PUT updated-form
// 	 */
//     function ajaxPut(){
//     	// PREPARE FORM DATA
//     	var formData = {
//     			id: $("#updateUserID").val(),
//     			name : $("#updateUserFname").val(),
//     			age : $("#updateUserLname").val(),
//     			address : {
//     		    	street : $("#updateFaculty").val(),
//     		    	postcode : $("#updateMojor").val()
//     		    }
//     	}
    	
//     	var id = $("#updateUserID").val();
    	
//     	console.log("formData before PUT: " + formData);
    	
//     	// DO PUT
//     	$.ajax({
// 			type : "PUT",
// 			contentType : "application/json",
// 			url : window.location + "api/customer/update/" + id,
// 			data : JSON.stringify(formData),
// 			dataType : 'json',
			
// 			// SUCCESS response
// 			success : function(customer) {
// 				// Create successful message
			
// 				// Again fill data to Update-Form
				
// 				$("#updateUserFname").val(customer.name);
// 				$("#updateUserLname").val(customer.age);
// 				$("#updateFaculty").val(customer.address.street);
// 				$("#updateMojor").val(customer.address.postcode);
				
// 				// Update name of the updated customer on Customer List
// 				$('#updateUserForm' + customer.id).find("input[name='updateUserFname']").val(customer.name);
// 				$('#updateUserForm' + customer.id).find("input[name='updateUserLname']").val(customer.age);
// 				$('#updateUserForm' + customer.id).find("input[name='updateFaculty']").val(customer.address.street);
// 				$('#updateUserForm' + customer.id).find("input[name='updateMojor']").val(customer.address.postcode);
// 			},
			
// 			// ERROR response 
// 			error : function(e) {
// 				alert("Error!")
// 				console.log("ERROR: ", e);
// 			}
// 		});
//     }
// })

</script>
<script>
$(document).ready(function() {
	
	
	//UserShowID
	$.ajax({
		type : "GET",
		url : "/UserById",
		contentType : "application/json",
		dataType : "json",
		success : function(msg) {
			console.log('Success')
			/* for(var i=0; i<msg.length; i++) {
				$('#personnelId').append('<option value="' + msg[i].personnelId+ '">' + msg[i].facultyName + ' / ' + msg[i].departmentName + ' / ' + msg[i].positionName + ' / ' + msg[i].subPositionName +'</option>'); */
	

                   
        			$('#userId').val(msg.userId);
        			$('#userFname').val(msg.userFname);
                     $('#userLname').val(msg.userLname);
                    $('#positionTeach').val(msg.positionTeach);
                    $('#faculty').val(msg.faculty);
                    $('#mojor').val(msg.mojor);
                    $('#baseHour').val(msg.baseHour);
                    $('#baseKrm').val(msg.baseKrm); 
                   
               
		}
	});
	
	
	
	
	// ajaxGet();
	
	// // DO GET
	// function ajaxGet(){
	// 	$.ajax({
	// 		type : "GET",
	// 		url : window.location + "api/customer/all",
	// 		success: function(result){
	// 			$.each(result, function(i, customer){
					
	// 				var updateUrl=window.location + "api/customer/update/" + customer.id;
					
	// 				// render a customer data form
					
	// 				$('#customerlist .list-group').append(customerInfo)
					
	// 				// default fill data of the first customer to update-form
	// 				if(i==0){
	// 					$("#updateUserID").val(customer.id);
	// 					$("#updateUserFname").val(customer.name);
	// 					$("#updateUserLname").val(customer.age);
	// 					$("#updateFormStreet").val(customer.address.street);
	// 					$("#updateMojor").val(customer.address.postcode);
	// 				}
					
	// 	        });
	// 			console.log("Success: ", result);
	// 		},
	// 		error : function(e) {
	// 			$("#customerlist").html("<strong>Error</strong>");
	// 			console.log("ERROR: ", e);
	// 		}
	// 	});	
	// }
})
</script>
<script>
//AddSubject
 function subject() {

    $('#userFname').empty();
    $('#userLname').empty();
    $('#positionTeach').empty();
    $('#faculty').empty();
    $('#mojor').empty();
    $('#baseHour').empty();
    $('#baseKrm').empty();
    $('#userId').ready(function () {
        var subjectsach = {
            "usersach": $('#userId').val()
        };
        $.ajax({
            type: "POST",
            url: "/subject",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(subjectsach),
            dataType: "json",
            success: function (msg) {
                if (msg.userId != null) {
                    $('#userFname').val(msg.userFname);
                    $('#userLname').val(msg.userLname);
                    $('#positionTeach').val(msg.positionTeach);
                    $('#faculty').val(msg.faculty);
                    $('#mojor').val(msg.mojor);
                    $('#baseHour').val(msg.baseHour);
                    $('#baseKrm').val(msg.baseKrm);
                   
                    
                } else if (msg.userId == null) {
                    $('#alert').append('<center>ไม่มีข้อมูล</center>');
                }
            }
        });
    });
} 
  
</script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--  <script type="text/javascript" src="/assets/js/ajaxUser.js"></script> -->

</html>
