<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.cs.bru.model.User"%>
<%@page import="com.cs.bru.model.TableTeaching"%>

<%@ page import="java.util.List"%>
<!DOCTYPE html >
<html lang="en">

<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>KeepTeach</title>
	<meta name="description" content="Elmer is a Dashboard & Admin Site Responsive Template by hencework." />
	<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Elmer Admin, Elmeradmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
	<meta name="author" content="hencework" />
	<%--  <%@include file="./layoutcss.jsp" %> --%>
	<!-- Data table CSS -->
	<link href="../assets_/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />

	<link href="../assets_/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">

	<!-- bootstrap-select CSS -->
	<link href="../assets_/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet"
	 type="text/css" />

	<!-- Calendar CSS -->
	<link href="../assets_/vendors/bower_components/fullcalendar/dist/fullcalendar.css" rel="stylesheet" type="text/css" />

	<!-- Custom CSS -->
	<link href="../assets_/dist/css/style.css" rel="stylesheet" type="text/css">
	<style>

		/*# sourceMappingURL=style.css.map */
		#colorgen {
		  background-color:  #443166 ;
		 /* background-image: linear-gradient(to bottom right, #443166 , yellow ) Standard syntax (must be last) */
		}
		</style>
</head>
<%
User  userLog = null;
 User  userByid = null; 
User userByBean = null;
List<TableTeaching> listtable = null;
String result = "";
Integer a=0;
%>

<%
   userLog = (User) request.getSession().getAttribute("loginUser");
/*  list = (List<User>) request.getSession().getAttribute("listUser");  */
  userByid = (User) request.getSession().getAttribute("listUser"); 
/*  userByBean = (User) request.getAttribute("resultBean"); 
 result = (String) request.getAttribute("messesUpdate");  */
 listtable =(List<TableTeaching>)request.getSession().getAttribute("tablelist");
%>

<body>
	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>
	<!-- /Preloader -->
	<div class="wrapper  theme-1-active pimary-color-blue">
		!-- Top Menu Items -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="mobile-only-brand pull-left">
				<div class="nav-header pull-left">
					<div class="logo-wrap">
						<a href="/index1">
							<img class="brand-img" src="../assets_/dist/img/logo.png" alt="brand" />
							<span class="brand-text">KeepWork</span>
						</a>
					</div>
				</div>
				<a id="toggle_nav_btn" class="toggle-left-nav-btn inline-block ml-20 pull-left" href="javascript:void(0);"><i class="zmdi zmdi-menu"></i></a>
				<a id="toggle_mobile_search" data-toggle="collapse" data-target="#search_form" class="mobile-only-view" href="javascript:void(0);"><i
					 class="zmdi zmdi-search"></i></a>
				<a id="toggle_mobile_nav" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-more"></i></a>

			</div>
			<div id="mobile_only_nav" class="mobile-only-nav pull-right">
				<ul class="nav navbar-right top-nav pull-right">
					<li class="dropdown app-drp">
						<a class="dropdown-toggle">
							<%=userByid.getUserId() %></a>
						<input type="hidden" id="userRoleid" value="<%=userByid.getUserId()%>">
					</li>
					<li class="dropdown app-drp">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-apps top-nav-icon"></i></a>

						<ul class="dropdown-menu app-dropdown" data-dropdown-in="slideInRight" data-dropdown-out="flipOutX">
							<li>
								<div class="app-nicescroll-bar">
									<ul class="app-icon-wrap pa-10">
										<li>
											<a href="weather.html" class="connection-item">
												<i class="zmdi zmdi-cloud-outline txt-info"></i>
												<span class="block">weather</span>
											</a>
										</li>
										<li>
											<a href="inbox.html" class="connection-item">
												<i class="zmdi zmdi-email-open txt-success"></i>
												<span class="block">e-mail</span>
											</a>
										</li>
										<li>
											<a href="./calendar" class="connection-item">
												<i class="zmdi zmdi-calendar-check txt-primary"></i>
												<span class="block">calendar</span>
											</a>
										</li>
										<li>
											<a href="vector-map.html" class="connection-item">
												<i class="zmdi zmdi-map txt-danger"></i>
												<span class="block">map</span>
											</a>
										</li>
										<li>
											<a href="chats.html" class="connection-item">
												<i class="zmdi zmdi-comment-outline txt-warning"></i>
												<span class="block">chat</span>
											</a>
										</li>
										<li>
											<a href="contact-card.html" class="connection-item">
												<i class="zmdi zmdi-assignment-account"></i>
												<span class="block">contact</span>
											</a>
										</li>
									</ul>
								</div>
							</li>
							<li>
								<div class="app-box-bottom-wrap">
									<hr class="light-grey-hr ma-0" />
									<a class="block text-center read-all" href="javascript:void(0)"> more </a>
								</div>
							</li>
						</ul>
					</li>
					<li class="dropdown full-width-drp">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-more-vert top-nav-icon"></i></a>
					</li>
					<li class="dropdown auth-drp">
					<li class="dropdown auth-drp">
						<a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img src="../assets_/dist/img/user1.png" alt="user_auth"
							 class="user-auth-img img-circle" /><span class="user-online-status"></span></a>
						<ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
							<li>
								<a href="./user"><i class="zmdi zmdi-account"></i><span>บันชีผู้ใช้</span></a>
							</li>
							<li>
								<a href="javascript: document.logoutForm.submit()"><i class="zmdi zmdi-power"></i><span>Log Out</span></a>
							</li>
							<form name="logoutForm" action="/" method="post" th:hidden="true"></form>
						</ul>
					</li>
					</li>
				</ul>
			</div>
		</nav>
		<!-- Left Sidebar Menu -->
		<div class="fixed-sidebar-left">
			<ul class="nav navbar-nav side-nav nicescroll-bar" id="colorgen">
				<li class="navigation-header">
					<span>Manu</span>
					<i class="zmdi zmdi-more"></i>
				</li>
				<li>
					<a href="./index1" data-toggle="collapse" data-target="#dashboard_dr">
						<div class="pull-left"><i class="ti-layout-grid2  mr-20"></i><span class="right-nav-text">Dashboard</span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="dashboard_dr" class="collapse collapse-level-1">

					</ul>
				</li>
				<li>
					<a href="./keepword" data-toggle="collapse" data-target="#app_dr">
						<div class="pull-left"><i class="icon-note mr-20"></i><span class="right-nav-text">ลงทะเบียนสอน </span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="app_dr" class="collapse collapse-level-1">
					</ul>
				</li>
				<li>
					<a href="./stipend" data-toggle="collapse" data-target="#app_dr">
						<div class="pull-left"><i class="icon-share-alt mr-20"></i><span class="right-nav-text">จักการเบิกค่าสอน</span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="app_dr" class="collapse collapse-level-1">
					</ul>
				</li>
				<li>
					<a class="active" href="./historyteach" data-toggle="collapse" data-target="#app_dr">
						<div class="pull-left"><i class="icon-docs mr-20"></i><span class="right-nav-text">ประวิติการสอน </span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="app_dr" class="collapse collapse-level-1">
					</ul>
				</li>
				<li>
					<a href="./user" data-toggle="collapse" data-target="#app_dr" href="./keepword">
						<div class="pull-left"><i class="icon-user  mr-20"></i><span class="right-nav-text">ข้อมูลผู้ใช้ </span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="app_dr" class="collapse collapse-level-1">
					</ul>
				</li>
				<li>
					<a href="./calender" data-toggle="collapse" data-target="#app_dr">
						<div class="pull-left"><i class="icon-calender mr-20"></i><span class="right-nav-text">calendar </span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="app_dr" class="collapse collapse-level-1">
					</ul>
				</li>
				<li>
					<hr class="light-grey-hr mb-10" />
				</li>
			</ul>
		</div>
		<!-- Main Content -->
		<div class="page-wrapper">
			<div class="container-fluid">

				<!-- Title -->
				<div class="row heading-bg">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h5 class="txt-dark">ประวิติการสอน</h5>
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<ol class="breadcrumb">
							<li><a href="./index1"></a>หน้าแรก</li>
							<li class="active"><span>ประวิติการสอน</span></li>
						</ol>
					</div>
					<!-- /Breadcrumb -->
				</div>
				<!-- /Title -->
				<!-- row -->
				<div class="row">
						<div class="panel panel-default card-view">

							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark">หลักฐานการเบิกจ่ายเงินค่าสอนพิเศษและค่าสอนเกินวาระงานสอนในอุดมศึกษา</h6>
								</div>
								<div class="clearfix"></div>
							</div>
					
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<table id="fildListRepost" class="table table-hover table-bordered mb-0" >
											<thead class="text-warning">
												<tr>
													<th rowspan="2" data-breakpoints="xs">ลำดับ</th>
													<th rowspan="2">ระยะเวลาที่สอน</th>
													<th rowspan="2">ระดับการสอน</th>
													<th rowspan="2">ตำแหน่งผู้ทำการสอน</th>
													<th rowspan="2">ภาคเรียน/ปีการศึกษา</th>
													<th rowspan="2">หมายเหตู</th>
												
												</tr>
											</thead>
											<tbody>
												
											</tbody>

										</table>
									</div>
								</div>
							</div>
							
						</div>

				</div>
				<!-- <div class="panel-group accordion-struct" role="tablist" aria-multiselectable="true">
					<div class="panel-heading activestate" role="tab" id="headingFive">
						<input type="hidden" id="term" value="">
						<input type="hidden" id="year" value="">
						<input type="hidden" id="degree" value="">
					<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank" class="collapsed"
					role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false"
					aria-controls="collapseSix" onclick="tableSETRepost()" >
					<i class="fa fa-print"></i><span> Print</span>
					</button>
					</div> -->
				<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
				<div class="row">
						<div class="panel panel-default card-view">

							<div class="panel-heading">
								<div class="clearfix"></div>
							</div>

							
									<div class="panel-body">
							<div class="form-group panel-title txt-dark">
								
										<div class="row">
												<div class="span1"></div>
									<div class="col-md-4 col-xs-12">
										<div class="form-group">
											<div class="row">
												<label for="exampleInputuname_3" class="col-sm-12 control-label">ส่วนราชการ มหาวิทยาลัยราชภัฏบุรีรัมย์</label>
													<!-- <input type="text" class="form-control" id="degreeStuden" placeholder=""> -->
											</div>
										</div>
									</div>
											<!-- <div class="col-md-3 col-xs-12">
												<div class="form-group">
													<div class="row">
														<label for="exampleInputuname_3" class="col-sm-3 control-label">คณะ</label>
														<input type="text" class="col-sm-9" id="mojor">
													</div>
												</div>
											</div>
											<div class="span1"></div>
											<div class="col-md-2 col-xs-12">
												<div class="form-group">
													<div class="row">
														<label for="exampleInputuname_3" class="col-sm-6 control-label">ภาคเรียน</label>
														<div class="col-sm-6">
																<p>................</p>
														</div>
													</div>
												</div>
											</div>
											<div class="span1"></div>
											<div class="col-md-2 col-xs-12">
												<div class="form-group">
													<div class="row">
														<label for="exampleInputuname_3" class="col-sm-6 control-label">พ.ศ.</label>
														<div class="col-sm-6">
																<p>................</p>
														</div>
													</div>
												</div>
											</div> -->
										</div>
									</div>
							</div>		
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<table id="tebleRepostShow" class="table table-hover table-bordered mb-0" >
											<thead class="text-warning">
												<tr>
													<th rowspan="2" data-breakpoints="xs">#</th>
													<th rowspan="2">จำนวนหน่วยชั่วโมง</th>
													<th rowspan="2">จำนวนเงิน</th>
													<th rowspan="2">หมายเหตู</th>
												
												</tr>
											</thead>
											<tbody>
											</tbody>
											<thead>
													<td scope="col">รวม</td>
													<td scope="col" id="tfHour"></td>
													<td scope="col" id="tfMon"></td>
													<td scope="col" ></td>
													<!-- id="sumsrry" -->
												</thead>
										</table>
									</div>
								</div>
							</div>
							
							<div class="row">
									<div class="col-sm-2">
											<div class="form-group">
										<form action="repostPaper1" method="POST" target="_blank">
											<input type="hidden" name="useridS1"id="pe_user1">
											<input type="hidden" name="termS2"  id="pe_term1">
											<input type="hidden" name="yearS3" id="pe_year1">
											<input type="hidden" name="degreeS4" id="pe_degree1" >
										
											<button type="submit" formtarget="_blank" class="btn btn-primary btn-outline btn-icon left-icon" >
												<i class="fa fa-print"></i><span>เอกสาร1</span>
											</button>
										</form>
									</div>
									</div>
								
									<div class="col-sm-2">
											<div class="form-group">
										<form action="repostPaper2" method="POST" target="_blank">
												<input type="hidden" name="useridS1"id="pe_user2">
												<input type="hidden" name="termS2"  id="pe_term2">
												<input type="hidden" name="yearS3" id="pe_year2">
												<input type="hidden" name="degreeS4" id="pe_degree2" >
											<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank">
												<i class="fa fa-print"></i><span> เอกสาร2</span>
											</button>
										</form>
									</div>
								</div>
									
									<div class="col-sm-2">
											<div class="form-group">
										<form action="repostpaper3" method="POST" target="_blank">
											<input type="hidden" name="useridS1"id="pe_user3">
											<input type="hidden" name="termS2"  id="pe_term3">
											<input type="hidden" name="yearS3" id="pe_year3">
											<input type="hidden" name="degreeS4" id="pe_degree3" >
											<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank">
												<i class="fa fa-print"></i><span> เอกสาร3</span>
											</button>
										</form>
									</div>
								</div>
			
									
									<div class="col-sm-2">
											<div class="form-group">
										<form action="repostPaper4" method="POST" target="_blank">
											<input type="hidden" name="useridS1"id="pe_user4">
											<input type="hidden" name="termS2"  id="pe_term4">
											<input type="hidden" name="yearS3" id="pe_year4">
											<input type="hidden" name="degreeS4" id="pe_degree4" >
											<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank">
												<i class="fa fa-print"></i><span> เอกสาร4</span>
											</button>
										</form>
									</div>
								</div>
								</div>
					
							<!-- <div class="row" id=mass></div>
								<div class="text-center ">
								<p class="text-danger">ไม่มีข้อมูล</p>
								<p><a href="/keepword" class="text-primary" ><----กรุณาลงทะเบียนสอน-></a></p>
							</div> -->
					

					</div>
				</div>
				</div>
			
				<!-- <form action="/teach_pdf" method="GET" target="_blank">
					
						 <input class="btn btn-primary btn-outline btn-icon left-icon" type="submit">
						
							<i class="fa fa-print"></i><span> Print</span> 
							<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank">
								<i class="fa fa-print"></i><span> Print</span>
							</button>
							
					</form> -->
				<!-- /row -->
				<!-- Row -->
				<!-- <div class="panel-group accordion-struct" role="tablist" aria-multiselectable="true">
					<div class="panel-heading activestate" role="tab" id="headingFive">
						<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank" class="collapsed"
						 role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false"
						 aria-controls="collapseSix">
							<i class="fa fa-print"></i><span> Print</span>
						</button>
					</div>

					<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">

						<div class="col-sm-8">
							<div class="col-sm-2">
								<form action="/teach_pdf" method="GET" target="_blank">
									<button type="submit" formtarget="_blank" class="btn btn-primary btn-outline btn-icon left-icon">
										<i class="fa fa-print"></i><span>เอกสาร 1</span>
									</button>
								</form>
							</div>

							<div class="col-sm-2">
								<form action="/teach_pdf" method="GET" target="_blank">
									<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank">
										<i class="fa fa-print"></i><span> เอกสาร2</span>
									</button>
								</form>
							</div>

							<div class="col-sm-2">
								<form action="/teach_pdf" method="GET" target="_blank">
									<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank">
										<i class="fa fa-print"></i><span> เอกสาร3</span>
									</button>
								</form>
							</div>
							<div class="col-sm-2">
								<form action="/teach_pdf" method="GET" target="_blank">
									<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank">
										<i class="fa fa-print"></i><span> เอกสาร4</span>
									</button>
								</form>
							</div>
						</div>
					</div>
				</div> -->

				<!-- <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">

					<div class="col-sm-8">
						<div class="col-sm-2">
							<form action="/teach_pdf" method="GET" target="_blank">
								<button type="submit" formtarget="_blank" class="btn btn-primary btn-outline btn-icon left-icon">
									<i class="fa fa-print"></i><span>เอกสาร 1</span>
								</button>
							</form>
						</div>

						<div class="col-sm-2">
							<form action="/teach_pdf" method="GET" target="_blank">
								<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank">
									<i class="fa fa-print"></i><span> เอกสาร2</span>
								</button>
							</form>
						</div>
						<div class="col-sm-2">
							<form action="/teach_pdf" method="GET" target="_blank">
								<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank">
									<i class="fa fa-print"></i><span> เอกสาร3</span>
								</button>
							</form>
						</div>

						<div class="col-sm-2">
							<form action="/teach_pdf" method="GET" target="_blank">
								<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank">
									<i class="fa fa-print"></i><span> เอกสาร4</span>
								</button>
							</form>
						</div>
					</div>
				</div> -->
			
			</div>
		</div>
		<!-- /Row -->
	</div>
	</div>

	</div>
</body>

<!---------------------------------------- JavaScript ------------------------------------>

<!-- jQuery -->
<script src="../assets_/vendors/bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../assets_/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Data table JavaScript -->
<script src="../assets_/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>

<!-- Slimscroll JavaScript -->
<script src="../assets_/dist/js/jquery.slimscroll.js"></script>

<!-- EChartJS JavaScript -->
<script src="../assets_/vendors/bower_components/echarts/dist/echarts-en.min.js"></script>
<script src="../assets_/vendors/echarts-liquidfill.min.js"></script>
<script src="../assets_/vendors/ecStat.min.js"></script>

<!-- Toast JavaScript -->
<script src="../assets_/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>

<!-- Progressbar Animation JavaScript -->
<script src="../assets_/vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
<script src="../assets_/vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>

<!-- Fancy Dropdown JS -->
<script src="../assets_/dist/js/dropdown-bootstrap-extended.js"></script>



<!-- Owl JavaScript -->
<script src="../assets_/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

<!-- Calender JavaScripts -->
<script src="../assets_/vendors/bower_components/moment/min/moment.min.js"></script>
<script src="../assets_/vendors/jquery-ui.min.js"></script>
<script src="../assets_/vendors/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<script src="../assets_/dist/js/fullcalendar-data.js"></script>

<!-- Switchery JavaScript -->
<script src="../assets_/vendors/bower_components/switchery/dist/switchery.min.js"></script>

<!-- Bootstrap Select JavaScript -->
<script src="../assets_/vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>

<!-- Init JavaScript -->
<script src="../assets_/dist/js/init.js"></script>
<script src="../assets_/dist/js/dashboard5-data.js"></script>

<script src="../assets_/vendors/bower_components/FooTable/compiled/footable.min.js" type="text/javascript"></script>
<script>
	$(function () {
		var userid = $("#userRoleid").val();

		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/fildListRepost/"+userid,
			dataType: 'json',
			success: function (msgTable) {

				var tebleRepost = "";
				var tebleRepost3 = "";
				var figu = "";

				for (var i = 0; i < msgTable.length; i++) {
					var num = i + 1;
					tebleRepost3 +=
						'<tr>' +
						'<td>' + num + '</td>' +
						'<td>' + msgTable[i].tableTeaching.startMonthString+"-"+msgTable[i].tableTeaching.stopMonthString + '</td>' +
						'<td>' + msgTable[i].degreeStuden.nameDegree + '</td>' +
						'<td>' + msgTable[i].user.positionTeach + '</td>' +
						'<td>' + msgTable[i].tableTeaching.teachTerm+" "+"/"+" "+msgTable[i].tableTeaching.teachYear + '</td>' +
						
						'<td>' + '<div class="panel-group accordion-struct" role="tablist" aria-multiselectable="true">' +
						'<div class="panel-heading activestate" role="tab" id="headingFive">' +
						'<input type="hidden" id="term" value='+msgTable[i].tableTeaching.teachTerm+'>'+
						'<input type="hidden" id="year" value='+ msgTable[i].tableTeaching.termYear+'>'+
						'<input type="hidden" id="degree" value='+ msgTable[i].tableTeaching.degreeStuden+'>'+
						'<input type="hidden" id="mojor" value='+ msgTable[i].repostMoney+'>'+
						'<button type="submit" class="btn btn-primary btn-outline btn-icon left-icon" formtarget="_blank" class="collapsed"' +
						'role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false"' +
						'aria-controls="collapseSix" onclick="tableSETRepost()">' +
						'<i class="fa fa-print"></i><span> Print</span>' +
						'</button>' +
						'</div>' +


						// '</td>' +
						'</tr>';


				}
				if (tebleRepost3 == "") {
					tebleRepost3 += '<tr>' +
						'<td colspan="6">' +
						'<div class="text-center ">' +
						'<p class="text-danger">ไม่มีข้อมูล</p>' +
						'<p><a href="/keepword" class="text-primary" ><----กรุณาลงทะเบียนสอน---></a></p>' +
						'</div>' +
						'</td>' +
						'</tr>';
				}

				$('#fildListRepost tbody').append(tebleRepost3);


			},
			error: function (e) {
				alert("ERROR: tebleRepost1", e);
				console.log("ERROR: tebleRepost1", e);
			}
		});
	});
</script>
<script>
	function tableSETRepost() {
		var id1 = {
			useridS1: $("#userRoleid").val(),
			termS2: $("#term").val(),
			yearS3: $("#year").val(),
			degreeS4: $("#degree").val()
		};
		$('#pe_user1').val(id1.useridS1);
		$('#pe_term1').val(id1.termS2);
		$('#pe_year1').val(id1.yearS3);
		$('#pe_degree1').val(id1.degreeS4);

		$('#pe_user2').val(id1.useridS1);
		$('#pe_term2').val(id1.termS2);
		$('#pe_year2').val(id1.yearS3);
		$('#pe_degree2').val(id1.degreeS4);

		$('#pe_user3').val(id1.useridS1);
		$('#pe_term3').val(id1.termS2);
		$('#pe_year3').val(id1.yearS3);
		$('#pe_degree3').val(id1.degreeS4);

		$('#pe_user4').val(id1.useridS1);
		$('#pe_term4').val(id1.termS2);
		$('#pe_year4').val(id1.yearS3);
		$('#pe_degree4').val(id1.degreeS4);
		$.ajax({
			type: "POST",
			contentType: "application/json",
			url: "/salaryAndRepost" ,
			data: JSON.stringify(id1),
			dataType: 'json',
			success: function (msgTable) {

				var tebleRepost = "";
				var tebleRepost1 = "";
var tfHour=0;
var tfMon=0;
var tfHourR="";
var tfMonR="";
				for (var i = 0; i < msgTable.length; i++) {
					var num = i + 1;
					tebleRepost +=
						'<tr>' +
						'<td>' + num + '</td>' +
						'<td>' + msgTable[i].sumTudsadeePrtibadHour + '</td>' +
						'<td>' + msgTable[i].salarySummoney + '</td>' +		
						'<td>' + msgTable[i].statusSubject.statusSubjectName + '</td>' +	
						'</tr>';
						tfHour+= msgTable[i].sumTudsadeePrtibadHour;
						tfMon+=msgTable[i].salarySummoney;
				}
				if (tebleRepost == "") {
					tebleRepost += '<tr>' +
						'<td colspan="6">' +
						'<div class="text-center ">' +
						'<p class="text-danger">ไม่มีข้อมูล</p>' +
						'<p><a href="/keepword" class="text-primary" ><----กรุณาลงทะเบียนสอน---></a></p>' +
						'</div>' +
						'</td>' +
						'</tr>';
				}
				tfHourR= tfHour+" "+"ชั่วโมง";
				tfMonR= tfMon+" "+"บาท";
				$('#tebleRepostShow tbody').append(tebleRepost);
				
				$('#tfHour').append(tfHourR);
				$('#tfMon').append(tfMonR);
			},
			error: function (e) {
				alert("ERROR: tebleRepost2", e);
				console.log("ERROR: tebleRepost2", e);
			}
		});
	};
</script>
<script>
	function tests() {
		//	window.replace="/teach_pdf";
		window.open("/teach_pdf");
		//	window.open("/teach_pdf"),
		//	window.open("/teach_pdf")
	}
</script>

<script>
	/*FooTable Init*/
	$(function () {
		"use strict";

		/*Init FooTable*/
		$('#').footable();
		/*Editing FooTable*/
		$editor.on('submit', function (e) {
			if (this.checkValidity && !this.checkValidity()) return;
			e.preventDefault();
			var row = $modal.data('row'),
				values = {};

			if (row instanceof Row) {
				row.val(values);
			} else {
				values.id = uid++;
				ft.rows.add(values);
			}
			$modal.modal('hide');
		});
	});
</script>
<script>
	var id1 = {
			useridS1: $("#userRoleid").val(),
			termS2: $("#term").val(),
			yearS3: $("#year").val(),
			degreeS4: $("#degree").val()
		};
    function prpost() {
		$.ajax({
			type: "POST",
			contentType: "application/json",
			url: "/repostPaper1" ,
			data: JSON.stringify(id1),
			dataType: 'json',
			success: function (msgTable) {

				window.open('/repostPaper1','_blank');
			},
			error: function (e) {
				alert("ERROR: tebleRepost2", e);
				console.log("ERROR: tebleRepost2", e);
			}
		});
	
};
</script>

</html>