<%@ page language="java" contentType="text/html; charset=UTF-8"%>
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
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> --> -->

<%
   User  bean = null;
	List<User > list = null;
%>

<%
	bean = (User ) request.getSession().getAttribute("loing");
	list = (List<User >) request.getSession().getAttribute("listUser");
%>

</head>
<style>
* {
	box-sizing: border-box;
}

#regForm {
	background-color:  #f8f8f8;
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
		<div class="sidebar" data-color="green" data-background-color="black"
			data-image="../assets/img/sidebar-2.jpg">
		<div class="alert alert-success" align="right">
				<strong>Welcome </strong>
				<a href="javascript: document.logoutForm.submit()"
					class="btn btn-danger">Logout</a>
			</div>
			\	<table class="table table-bordered">
				<tr>
					<th class="text-center">ลำดับ</th>
					<th class="text-center">username</th>
					<th class="text-center">password</th>
					<th class="text-center">สถานะ</th>
					<th class="text-center">รายละเอียด</th>
				</tr>
				<%
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr class="text-center">
					<td><%=i + 1%></td>
					<td><%=list.get(i).getUserFname()%></td>
					<td><a href="javascript: document.insertForm.submit()"><span
							class="glyphicon glyphicon-plus"> </span></a> <a
						onclick="gotoUpdate('<%=list.get(i).getUserFname()%>')"><span
							class="glyphicon glyphicon-search"> </span></a> <a
						onclick="gotoDetele('<%=list.get(i).getUserFname()%>')"><span
							class="glyphicon glyphicon-trash"> </span></a></td>

				</tr>
				<%
					}
				%>
			</table>
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
			<div class="logo">
				<a href=""
					class="simple-text logo-normal"> Keep-Work-Teach </a>
			</div>
			<div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active ">
            <a class="nav-link" href="">
              <i class="material-icons">dashboard</i>
              <p>ข้อมูลการสอน</p>
            </a>
          </li>
          
          
          <li class="nav-item ">
            <a class="nav-link" href="">
              <i class="material-icons">library_books</i>
              <p>ประวัติการสอน</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="">
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
            <a class="nav-link " href="">
              <i class="material-icons">person</i>
              <p>ข้อมูลผู้ใช้</p>
            </a>
          </li>
           <li class="nav-item  ">
            <a class="nav-link" href="">
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
					<a class="navbar-brand" href="">KeepWorkTeach</a>
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
						<li class="nav-item"><a class="nav-link" href="#pablo"> <i
								class="material-icons">dashboard</i>
								<p class="d-lg-none d-md-block">Stats</p>
						</a></li>
						<li class="nav-item dropdown"><a class="nav-link"
							href="" id="navbarDropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="material-icons">notifications</i> <span
								class="notification">2</span>
								<p class="d-lg-none d-md-block">Some Actions</p>
						</a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="#">แบบฟอมผ่านการอนุมัติ</a> <a
									class="dropdown-item" href="#">แบบฟอมไม่ผ่านการอนุมัติ</a>

							</div></li>
						<li class="nav-item"><a class="nav-link" href="#"> <i
								class="material-icons">person</i>
								<p class="d-lg-none d-md-block">Account</p>
						</a></li>
					</ul>
				</div>
			</div>
			</nav>
			<!-- End Navbar -->
		

			
		</div>
		
	</div>
	<%-- <%@include file="footer.jsp"%> --%>
	
	</body>
	
	
	<script>
		$(document).ready(function() {
			// Javascript method's body can be found in assets/js/demos.js
			md.initDashboardPageCharts();

		});
	</script>
	<!-- <script type="text/javascript" >
	
	function subject() {

	    $('#subjectName').empty();
	    $('#credit').empty();
	    $('#creditHour').empty();
	    $('#tudsadee').empty();
	    $('#prtibad').empty();
	    $('#subjectID').ready(function () {
	        var subjectsach = {
	            "subjectsach": $('#subjectID').val()
	        };
	        $.ajax({
	            type: "POST",
	            url: "/subject",
	            contentType: "application/json; charset=utf-8",
	            data: JSON.stringify(subjectsach),
	            dataType: "json",
	            success: function (msg) {
	                if (msg.subjectID != null) {
	                    $('#subjactName').val(msg.subjactName);
	                    $('#credit').val(msg.credit);
	                    $('#creditHour').val(msg.creditHour);
	                    $('#tudsadee').val(msg.tudsadee);
	                    $('#prtibad').val(msg.prtibad);
	                    
	                } else if (msg.subjectID == null) {
	                    $('#alert').append('<center>ไม่มีข้อมูล</center>');
	                }
	            }
	        });
	    });
	}
	</script> -->
	<script>
		var currentTab = 0; // แท็บปัจจุบันถูกตั้งค่าให้เป็นแท็บแรก 0
		showTab(currentTab); // แสดงแท็บปัจจุบัน

		function showTab(n) {
			// ฟังก์ชันนี้จะแสดงแท็บที่กำหนดไว้ในแบบฟอร์ม ...
			var x = document.getElementsByClassName("tab");
			x[n].style.display = "block";
			//... and fix the Previous/Next buttons:
			if (n == 0) {
				document.getElementById("prevBtn").style.display = "none";
			} else {
				document.getElementById("prevBtn").style.display = "inline";
			}
			if (n == (x.length - 1)) {
				document.getElementById("nextBtn").innerHTML = "บันทึกและพิมพ์";
			} else {
				document.getElementById("nextBtn").innerHTML = "ถัดไป";
			}
			//... and run a function that will display the correct step indicator:
			fixStepIndicator(n)
		}

		function nextPrev(n) {
			// ฟังก์ชั่นนี้จะหาแท็บที่จะแสดง
			var x = document.getElementsByClassName("tab");
			// Exit the function if any field in the current tab is invalid:
			if (n == 1 && !validateForm())
				return false;
			// Hide the current tab:
			x[currentTab].style.display = "none";
			// Increase or decrease the current tab by 1:
			currentTab = currentTab + n;
			// if you have reached the end of the form...
			if (currentTab >= x.length) {
				// ... the form gets submitted:
				document.getElementById("regForm").submit();
				return false;
			}
			// Otherwise, display the correct tab:
			showTab(currentTab);
		}

		function validateForm() {
			// ฟังก์ชันนี้เกี่ยวข้องกับการตรวจสอบความถูกต้องของเขตข้อมูลฟอร์ม
			var x, y, i, valid = true;
			x = document.getElementsByClassName("tab");
			y = x[currentTab].getElementsByTagName("input");
			// A loop that checks every input field in the current tab:
			for (i = 0; i < y.length; i++) {
				// If a field is empty...
				if (y[i].value == "") {
					// add an "invalid" class to the field:
					y[i].className += " invalid";
					// and set the current valid status to false
					valid = true;
				}
			}
			// If the valid status is true, mark the step as finished and valid:
			if (valid) {
				document.getElementsByClassName("step")[currentTab].className += " finish";
			}
			return valid; // return the valid status
		}

		function fixStepIndicator(n) {
			// ฟังก์ชันนี้จะลบคลาส "active" ของทุกขั้นตอน ......
			var i, x = document.getElementsByClassName("step");
			for (i = 0; i < x.length; i++) {
				x[i].className = x[i].className.replace(" active", "");
			}
			//... และเพิ่มคลาส "active" ในขั้นตอนปัจจุบัน:
			x[n].className += " active";
		}
	</script>
	
	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>

</html>