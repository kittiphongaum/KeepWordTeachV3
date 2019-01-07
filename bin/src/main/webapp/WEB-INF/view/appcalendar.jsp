<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	 <%@include file="./continue.jsp" %> 
<%@page import="com.cs.bru.model.User"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<!--  <link rel="icon" type="image/png" href="../assets/img/favicon.png"> -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Insert title here</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js" ></script> -->
<!-- <!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
	<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> --> 
	  <%
   User  bean = null;
   User  bean1 = null;
	List<User > list = null;
%>

  <%
	bean = (User) request.getSession().getAttribute("loginUser");
   /*  list = (List<User>) request.getSession().getAttribute("listUser"); */
    bean1 = (User) request.getSession().getAttribute("listUser");
  
%>
</head>
<style>
* {
	box-sizing: border-box;
}

#regForm {
	background-color: #f8f8f8;
	margin: 7% auto;
	font-family: Raleway;
	padding: 1%;
	width: 95%;
	min-width: 300px;
}

h1 {
	text-align: center;
}

input {
	padding: 10px;
	width: 100%;
	font-size: 17px;
	font-family: Raleway;
	border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
	background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
	display: none;
}

button {
	background-color: #4CAF50;
	color: #ffffff;
	border: none;
	padding: 10px 20px;
	font-size: 17px;
	font-family: Raleway;
	cursor: pointer;
}

button:hover {
	opacity: 0.8;
}

#prevBtn {
	background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbbbbb;
	border: none;
	border-radius: 50%;
	display: inline-block;
	opacity: 0.5;
}

.step.active {
	opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
	background-color: #4CAF50;
}
</style>
<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="purple" data-background-color="white"
			data-image="../assets/img/sidebar-4.jpg">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> Keep-Work-Teach </a>
			</div>
			<div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active ">
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
          <li class="nav-item ">
            <a class="nav-link " href="./user">
              <i class="material-icons">person</i>
              <p>ข้อมูลผู้ใช้</p>
            </a>
          </li>
           <li class="nav-item  ">
            <a class="nav-link" href="./appcalendar">
              <i class="material-icons">today</i>
              <p>Calendar</p>
            </a>
          </li>
        </ul>
      </div>
		</div>
		<div class="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
			<div class="container-fluid">
				<div class="navbar-wrapper">
					<a class="navbar-brand" href="#pablo">KeepWorkTeach</a>
				</div>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					aria-controls="navigation-index" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="navbar-toggler-icon icon-bar"></span> <span
						class="navbar-toggler-icon icon-bar"></span> <span
						class="navbar-toggler-icon icon-bar"></span>
				</button>

				<div class="collapse navbar-collapse justify-content-end">
					<!-- <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form> -->

					<ul class="navbar-nav">
						<input type="hidden" id="userRoleid" value ="<%=bean1.getUserId() %>">
						 <%=bean1.getUserId() %>
              <%=bean1.getUserFname() %>
              <li class="nav-item dropdown">
                <a class="nav-link" href="" id="navbarDropdownMenuLink" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false">
                    <i class="material-icons">person</i>
                 
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                   <a class="dropdown-item" href="./user">PROFILE</a>
                  <a class="dropdown-item" href="javascript: document.logoutForm.submit()">LOGOUT</a>
                </div>
             
                <form name="logoutForm" action="logout" method="post" th:hidden="true"></form>
              </li>
              
            </ul>
				</div>
			</div>
			</nav>
			<!-- End Navbar -->
			<%@include file="../calendarApp/pageCalendar.jsp"%>
			
		</div>
		
	</div>

	
	</body>
	
	
    <script src ="../assets/calendar/libs/jquery.min.js"> </script>
     <script src ="../assets/calendar/libs/jquery-ui.min.js"> </script>
      <script src ="../assets/calendar/libs/popper.min.js"> </script>
       <script src ="../assets/calendar/libs/bootstrap.min.js"> </script>
        <script src ="../assets/calendar/libs/perfect-scrollbar.jquery.min.js"> </script>
         <script src ="../assets/calendar/libs/custom.min.js"> </script>
          <script src ="../assets/calendar/libs/moment.min.js"> </script>
           <script src ="../assets/calendar/libs/dist/fullcalendar.min.js"> </script>
            <script src ="../assets/calendar/libs/cal-init.js"> </script>
              <link href="../assets/calendar/libs/style.min.css" rel="stylesheet">
               <link href="../assets/calendar/libs/dist/fullcalendar.min.css" rel="stylesheet">
                <link href="../assets/calendar/libs/calendar.css"rel="stylesheet">


<script type="text/javascript">
	$(document).ready(
			function() {
				$.ajax({
					type : "GET",
					url : "/MonthfindAll",
					contentType : "application/json; charset=utf-8",
					dataType : "json",
					success : function(msg) {
						for (var i = 0; i < msg.length; i++) {
							$('#appliances').append(
									'<option value="' + msg[i].id + '">'
											+ msg[i].monthName + '</option>');
						}
					}
				});
			});
</script>
</html>