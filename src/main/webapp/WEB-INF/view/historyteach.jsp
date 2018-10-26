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
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
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
        <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-4.jpg">
            <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
            <div class="logo">
                <a href="http://www.creative-tim.com" class="simple-text logo-normal"> Keep-Work-Teach </a>
            </div>
            <div class="sidebar-wrapper">
                <ul class="nav">
                    <li class="nav-item  ">
                        <a class="nav-link" href="./dashboard">
                            <i class="material-icons">dashboard</i>
                            <p>ข้อมูลการสอน</p>
                        </a>
                    </li>


                    <li class="nav-item active">
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
                        <a class="navbar-brand" href="#pablo">KeepWorkTeach</a>
                    </div>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="sr-only">Toggle navigation</span> <span class="navbar-toggler-icon icon-bar"></span>
                        <span class="navbar-toggler-icon icon-bar"></span> <span class="navbar-toggler-icon icon-bar"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-end">


                        <ul class="navbar-nav">
                            <input type="hidden" id="userRoleid" value="<%=bean1.getUserId() %>">
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
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12">
                            <div class="card">
                                    <div class="row">
                                <form>
                                        <div class="card-body">
                                    <div class="row">
                                            <div class="col-md-3">
                                                    <div class="form-group">
                                                            <label class="bmd-label-floating">ภาคเรียนที่</label>
                                                            <input type="text" class="form-control" id="teachTerm">
                                                    </div>
                                            </div>
                                            <div class="col-md-3">
                                                    <div class="form-group">
                                                            <label class="bmd-label-floating">ปี่การศึกษา</label>
                                                            <input type="text" class="form-control" id="termYear">
                                                    </div>
                                            </div>
                                            <div class="col-md-3">
                                            <button type="button" class="btn btn-white btn-round btn-just-icon" onclick="seachteachtorm()">
                                                    <i class="material-icons">search</i>
                                                    <div class="ripple-container"></div>
                                                </button>
                                            </div>
                                            </div>
                                        </div>
                                        </form>
                                    </div>
                                    <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <div class="card">
                                        <div class="card-header card-header-warning">
                                            <h4 class="card-title">ตารางวิชาที่สอน</h4>
                                            <p class="card-category">แสดงข้อมูลวิชาที่สอน</p>
                                        </div>

                                        <div class="card-body table-responsive">
                                            <table id="customerTable2" class="table table-bordered table-hover">
                                                <thead class="text-warning">
                                                    <tr>

                                                        <th rowspan="2">รหัสวิชา</th>
                                                        <th rowspan="3">ชื่อวิชา</th>
                                                        <th rowspan="2">จำนวนชั่วโมง</th>
                                                        <th rowspan="2">จำนวนเงิน</th>

                                                        <th rowspan="2">รวมเงิน</th>

                                                        <th rowspan="2">หมายเหตู</th>

                                                    </tr>
                                                    <!-- <tr>
                                    <th scope="col">นก.</th>
                                    <th scope="col">ชก.</th>
        
                                </tr> -->
                                                </thead>
                                                <tbody>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                <div class="row">
                                <div class="col-lg-12 col-md-12">
                                    <div class="card">
                                        <div class="card-header card-header-warning">
                                            <h4 class="card-title">ระยะเวลาที่สอน</h4>
                                            <p class="card-category">แสดงข้อมูลวิชาที่สอน</p>
                                        </div>

                                        <div class="card-body table-responsive">
                                            <table id="customerTable" class="table table-bordered table-hover">
                                                <thead class="text-warning">
                                                    <tr>

                                                        <th rowspan="2">สัปดาห์ที่สอน</th>
                                                        <th rowspan="3">วัน/เดือน/ปี</th>
                                                        <th rowspan="2">รายวิชา</th>
                                                        <th rowspan="2">ภาคทฤษฏี</th>
                                                        <!-- <th colspan="2">หน่วยกิต</th> -->
                                                        <th rowspan="2">ภาคปฏิบัติ</th>
                                                        <th rowspan="2">รวม</th>
                                                        <th rowspan="2">หมายเหตู</th>

                                                    </tr>
                                                    <!-- <tr>
                                    <th scope="col">นก.</th>
                                    <th scope="col">ชก.</th>
        
                                </tr> -->
                                                </thead>
                                                <tbody>
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
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
    $(document).ready(function () {
        // Javascript method's body can be found in assets/js/demos.js
        md.initDashboardPageCharts();

    });
</script>
<script type="text/javascript">
function seachteachtorm() {
    var id1={
        teachIdS1: $("#userRoleid").val(),
        teachIdS2:$("#teachTerm").val(),
         teachIdS3:$("#termYear").val()
    };
    $.ajax({
        type: "POST",
        contentType : "application/json",
        url: "/TableTeachingOneSeachByid",
        data: JSON.stringify(id1),
        dataType : 'json',
        success: function (result) {
            $.each(result, function (index, msg) {
                var SubjectRow = '<tr>' +
                    '<td>' + msg.subject.subjectId + '</td>' +
                    '<td>' + msg.subject.subjectName + '</td>' +
                    '<td>' + msg.section + '</td>' +
                    '<td>' + msg.subject.credit + "(" + msg.subject.creditHour + ")" + '</td>' +
                    '<td>' + msg.studenNumber + '</td>' +
                    '<td>' + msg.standardTeach +'</td>' +
                    '<td>' + msg.startTime + '-' + msg.stopTime + '</td>' +
                    '<td>' + msg.room + '</td>' +
                    '<td class="td-actions text-right">' +
                    '<input type="hidden" value=' + msg.tebleTeachId + '>' +
                    '<a  rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">' +
                    '<i class="material-icons">close</i>' +
                    '</a>' +
                    '</td>' +
                    '</tr>';

                $('#customerTable2 tbody').append(SubjectRow);

            });

            $("#customerTable2 tbody tr:odd").addClass("info");
            $("#customerTable2 tbody tr:even").addClass("success");
        },
        error: function (e) {
            // alert("ERROR: 22", e);
            // console.log("ERROR: 22", e);
        }
    });
}

// Do DELETE a Customer via JQUERY AJAX

</script>




</html>