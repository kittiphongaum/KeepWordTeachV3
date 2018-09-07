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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



  <%
   User  userLog = null;
    User  userlist = null; 
   User userByBean = null;
   String result = "";
%>

  <%
  	userLog = (User) request.getSession().getAttribute("loginUser");
   /*  list = (List<User>) request.getSession().getAttribute("listUser");  */
     userLog = (User) request.getSession().getAttribute("listUser"); 
   /*  userByBean = (User) request.getAttribute("resultBean"); 
    result = (String) request.getAttribute("messesUpdate");  */

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
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
           
           
            <ul class="navbar-nav">
              <%=userLog.getUserId() %>
              <%=userLog.getUserFname() %>
              <li class="nav-item dropdown">
                <a class="nav-link" href="" id="navbarDropdownMenuLink" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false">
                    <i class="material-icons">person</i>
                 
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                   <a class="dropdown-item" href="./user">userprofile</a>
                  <a class="dropdown-item" href="javascript: document.logoutForm.submit()">LOGOUT</a>
                </div>
             
                <form name="logoutForm" action="logout" method="post" th:hidden="true"></form>
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
                  <a>
                    <img class="img" src="" />
                  </a>
                </div>
                <form  name="proFile" >
                <div class="card-body">
                  <h6 class="card-category text-gray"></h6>
                  <h4 class="card-title">Alec Thompson</h4>
                  <p class="card-description">

                  </p>
                 
                     
                      
                    
                  <a class="btn btn-primary btn-round" onclick="gotoUpdate('<%=userLog.getUserId()%>')">Edit</a>
           <%-- <input value="<%=userLog.getId()%>"> --%> 
            
                </div>
                <input id="proFile" type="hidden">
              </form>
              </div>
            </div>
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Edit Profile</h4>
                  <p class="card-category">Complete your profile</p>
                </div>
                <div class="card-body">
                  <form >
                    <input type="hidden" id="userId" name="userId">
                    <div class="row">
                      <div class="col-md-5">
                        <div class="form-group">
                          <label class="bmd-label-floating">รหัสผู้สอน</label>
                          <input type="text" name="userid" class="form-control" id="userid" <%-- value="<%=userByBean.getUserId()%>" --%>>
                        </div>
                      </div>
                      <div class="col-md-3">
                        <div class="form-group">
                          <label class="bmd-label-floating">ชื่อ</label>
                          <input type="text" name="userFname" class="form-control" id="userFname" <%-- value="<%=userByBean.getUserFname()%> --%>"
                            >
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">นามสกุล</label>
                          <input type="text" class="form-control" id="userLname"  <%-- value="<%=userByBean.getUserLname()%>" --%>
                             >
                        </div>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">สาขาวิชา</label>
                          <input type="text" class="form-control" id="faculty"  <%-- value="<%=userByBean.getFaculty()%>" --%>
                          >
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">คณะ</label>
                          <input type="text" class="form-control" id="mojor" <%-- value="<%=userByBean.getMojor()%>" --%>  >
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">ตำแหน่ง</label>
                          <input type="text" class="form-control" id="positionTeach" <%-- value="<%=userByBean.getPositionTeach()%>" --%>
                            >
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">มีฐานชั่วโมง/คาบ</label>
                          <input type="text" class="form-control" id="baseHour" <%-- value="<%=userByBean.getBaseHour()%>" --%> >
                        </div>
                      </div>
                      <div class="col-md-4">
                        <div class="form-group">
                          <label class="bmd-label-floating">เบิกค่าสอนพิเศษได้ไม่เกิน/หน่วยชั่วโมง</label>
                          <input type="text" class="form-control" id="baseKrm" <%-- value="<%=userByBean.getBaseKrm()%>" --%>  >
                        </div>
                      </div>
                    </div>

                    <button type="submit" class="btn btn-primary pull-right" onclick="UpdateFromUser()">Update Profile</button>
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
  /* $(document).ready(function () {

    $.ajax({
      type: "GET",
      url: "/UserById",
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      success: function (msg) {

        console.log(msg)
        $("#userid").val(msg.userId);
        $('#userFname') .val(mag.userFname);
        $('#userLname') .val(msg.userLname);
        $('#positionTeach').val(msg.positionTeach);
        $('#faculty')   .val(msg.faculty);
        $('#mojor')     .val(msg.mojor);
        $('#baseHour')  .val(msg.baseHour);
        $('#baseKrm')   .val(msg.baseKrm);
        
        $('#custform_' + msg.id).find("input[name='userid']").val(msg.userId);

      }
    });
  }) */
</script>
<script>
  function gotoUpdate(filter){
        document.getElementById("proFile").value = filter;
				/* document.xxx.action="gotoUpdate"; */
				/* document.xxx.submit(); */
				
				var SeachUpdate = {
          userId         :$('#proFile').val()
				}
				
				$.ajax({
			type: "POST",
			url: "/gotoUpdate",
			contentType: "application/json;charset=utf-8",
			data: JSON.stringify(SeachUpdate),
			dataType: "json",
			success: function (msg) {
				  $("#userid").val(msg.userId);
				  $('#userFname').val(msg.userFname),
			      $('#userLname').val(msg.userLname),
				  $('#positionTeach').val(msg.positionTeach),
				  $('#faculty').val(msg.faculty),
			      $('#mojor').val(msg.mojor),
			      $('#baseHour').val(msg.baseHour),
			      $('#baseKrm').val(msg.baseKrm)
			}
				
				});
				
  }
function insertUserfrom() {
		//	console.log(warranty)
		var insertUser = {
      userId         :$('#userid').val(),
			userFname      :$('#userFname').val(),
      userLname      :$('#userLname').val(),
			positionTeach  :$('#positionTeach').val(),
			faculty        :$('#faculty').val(),
      mojor          :$('#mojor').val(),
      baseHour       :$('#baseHour').val(),
      baseKrm       :$('#baseKrm').val()
      
		}

		$.ajax({
			type: "POST",
			url: "/insertUser",
			contentType: "application/json;charset=utf-8",
			data: JSON.stringify(insertUser),
			dataType: "json",
			success: function (msg) {
				console.log(msg)
				window.location.href = msg.page;
				window.location.reload();
			},
			error: function () {			
				
			}
		});
	}

  function UpdateFromUser(){
    	// PREPARE FORM DATA
    	var userUpdate = {
        userId         :$('#userid').val(),
			userFname      :$('#userFname').val(),
      userLname      :$('#userLname').val(),
			positionTeach  :$('#positionTeach').val(),
			faculty        :$('#faculty').val(),
      mojor          :$('#mojor').val(),
      baseHour       :$('#baseHour').val(),
      baseKrm        :$('#baseKrm').val()
    	}
    	
    
    	
    	// DO PUT
    	$.ajax({
			type : "POST",
			contentType : "application/json",
			url :"/update" ,
			data : JSON.stringify(userUpdate),
			dataType : 'json',
    
			// SUCCESS response
			success : function(userEdit) {
        $("#userid").val(userEdit.userId);
				  $('#userFname').val(userEdit.userFname),
			      $('#userLname').val(userEdit.userLname),
				  $('#positionTeach').val(userEdit.positionTeach),
				  $('#faculty').val(userEdit.faculty),
			      $('#mojor').val(userEdit.mojor),
			      $('#baseHour').val(userEdit.baseHour),
			      $('#baseKrm').val(userEdit.baseKrm)
				// Create successful message
        console.log("success")
				
				
			},
			
			// ERROR response 
			error : function(e) {
				alert("Error!")
				console.log("ERROR: ", e);
			}
		});
  }
  </script>



</html>