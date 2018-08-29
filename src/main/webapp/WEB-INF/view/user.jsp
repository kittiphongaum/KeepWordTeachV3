<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="./continue.jsp" %>
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
            <div class="col-md-10">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Edit Profile</h4>
                  <p class="card-category">Complete your profile</p>
                </div>
                <div class="card-body" id="updateUserID" >
                  <form id ="updateUserForm">
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">รหัสผู้สอน</label>
                          <input type="text" class="form-control" id="updateUserID">
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">ชื่อ</label>
                          <input type="text" class="form-control" id="updateUserFname">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">นามสกุล</label>
                          <input type="text" class="form-control" id="updateUserLname">
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">สาขาวิชา</label>
                          <input type="text" class="form-control" id="updateFaculty">
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">คณะ</label>
                          <input type="text" class="form-control" id="updateMojor">
                        </div>
                      </div>
                    </div>
                    
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">ตำแหน่ง</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">มีฐานชั่วโมง/คาบ</label>
                          <input type="text" class="form-control">
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">เบิกค่าสอนพิเศษได้ไม่เกิน/หน่วยชั่วโมง</label>
                          <input type="text" class="form-control">
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
$(document).ready(function() {
	
	$(document).on('submit', 'form', function (e) {
		event.preventDefault();
		
	})
	
	$("#updateUserForm").submit(function(){
		event.preventDefault();
		ajaxPut();
	});
	
	function fillDetailsToUpdateForm(object){
		var userID = $(object).find("input[name='userID']").val();
		var userFname = $(object).find("input[name='userFname']").val();
		var userLname = $(object).find("input[name='userLname']").val();
		var faculty = $(object).find("input[name='faculty']").val();
		var mojor = $(object).find("input[name='mojor']").val();
		
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
        id: $("#updateUserID").val(),
        userFname : $("#updateUserFname").val(),
        userLname : $("#updateUserLname").val(),
        faculty : $("#updateFaculty").val(),
        mojor : $("#updateMojor").val()
        	// address : {
    		  //   	street : $("#updateFormStreet").val(),
    		  //   	postcode : $("#updateFormPostcode").val()
    		  //   }
    	}
    	
    	var id = $("#updateUserID").val();
    	
    	console.log("formData before PUT: " + userUpdate);
    	
    	// DO PUT
    	$.ajax({
			type : "PUT",
			contentType : "application/json",
			url : window.location + "update/" + id,
			data : JSON.stringify(userUpdate),
			dataType : 'json',
			
			// SUCCESS response
			success : function(userUpdate) {
				// Create successful message
				
				
				// Again fill data to Update-Form
				$("#updateFormCustId").val(userUpdate.id);
				$("#updateFormName").val(userUpdate.userFname);
				$("#updateFormAge").val(userUpdate.userLname);
				$("#updateFormStreet").val(userUpdate.faculty);
				$("#updateFormPostcode").val(userUpdate.mojor);
				
				// Update name of the updated customer on Customer List
				$('#custform_' + customer.id).find("input[name='userFname']").val(userUpdate.userFname);
				$('#custform_' + customer.id).find("input[name='userLname']").val(userUpdate.userLname);
				$('#custform_' + customer.id).find("input[name='faculty']").val(userUpdate.faculty);
				$('#custform_' + customer.id).find("input[name='mojor']").val(userUpdate.mojor);
			},
			
			// ERROR response 
			error : function(e) {
				alert("Error!")
				console.log("ERROR: ", e);
			}
		});
    }
})</script>
</html>
