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
#colorgenY {
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
						<a href="index.html">
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
		<div class="fixed-sidebar-left ">
			<ul class="nav navbar-nav side-nav nicescroll-bar " id="colorgenY">
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
						<a  href="./keepword" data-toggle="collapse" data-target="#app_dr">
							<div class="pull-left"><i class="icon-note mr-20"></i><span class="right-nav-text">ลงทะเบียนสอน </span></div>
							<div class="clearfix"></div>
						</a>
						<ul id="app_dr" class="collapse collapse-level-1">
						</ul>
					</li>
					<li>
						<a  href="./stipend" data-toggle="collapse" data-target="#app_dr">
							<div class="pull-left"><i class="icon-share-alt mr-20"></i><span class="right-nav-text">จักการเบิกค่าสอน</span></div>
							<div class="clearfix"></div>
						</a>
						<ul id="app_dr" class="collapse collapse-level-1">
						</ul>
					</li>
					<li>
						<a href="./historyteach" data-toggle="collapse" data-target="#app_dr">
							<div class="pull-left"><i class="icon-docs mr-20"></i><span class="right-nav-text">ประวิติการสอน </span></div>
							<div class="clearfix"></div>
						</a>
						<ul id="app_dr" class="collapse collapse-level-1">
						</ul>
					</li>
					<li>
						<a class="active" href="./user" data-toggle="collapse" data-target="#app_dr">
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
			<div class="container-fluid pt-25">

				<!-- Row -->
				<div class="row">
					<div class="col-lg-3 col-xs-12">
						<div class="panel panel-default card-view  pa-0">
							<div class="panel-wrapper collapse in">
								<div class="panel-body  pa-0">
									<div class="profile-box">
										<div class="profile-cover-pic">
											<!-- <div class="fileupload btn btn-default">
												<span class="btn-text">edit</span> 
											 <input class="upload" type="file">
											</div>
											<div class="profile-image-overlay"></div> -->
										</div>
										<div class="profile-info text-center">
											<div class="profile-img-wrap">
												<img class="inline-block mb-10" src="../assets_/dist/img/mock1.jpg" alt="user" />
												
											</div>
											<div class="fileupload btn btn-info btn-anim"><i class="fa fa-upload"></i><span class="btn-text">แก้ไขรูป</span>
												<input type="file" class="upload">
											</div>
											
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-9 col-xs-12">

						<div class="row">
							<div class="col-sm-12">
								<div class="panel panel-default card-view">
									<div class="panel-heading">
										
										<div class="pull-left">
											<h5 class="control-label mb-10" for="exampleCountry">Update profile</h5>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="panel-wrapper collapse in">
										<div class="panel-body">
											<form>
												<input type="hidden" id="userId" name="userId">
												<div class="row">
													<div class="col-md-3">
														<div class="form-group">
															<label class="bmd-label-floating">รหัสผู้สอน</label>
															<input type="text" name="userid" class="form-control" id="userid" value="<%=userByid.getUserId()%>"
															 disabled>
														</div>
													</div>
													<div class="col-md-3">
														<div class="form-group">
															<label class="bmd-label-floating">คำนำหน้า</label>
															<input type="text" name="userid" class="form-control" id="prrfname" value="<%=userByid.getPrefixName()%>">
														</div>
													</div>
													<div class="col-md-3">
														<div class="form-group">
															<label class="bmd-label-floating">ชื่อ</label>
															<input type="text" name="userFname" class="form-control" id="userFname" value="<%=userByid.getUserFname()%>">

														</div>
													</div>
													<div class="col-md-3">
														<div class="form-group">
															<label class="bmd-label-floating">นามสกุล</label>
															<input type="text" class="form-control" id="userLname" value="<%=userByid.getUserLname()%>">

														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-md-6">
														<div class="form-group">
															<label class="bmd-label-floating">สาขาวิชา</label>
															<input type="text" class="form-control" id="faculty" value="<%=userByid.getFaculty()%>" disabled>

														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group">
															<label class="bmd-label-floating">คณะ</label>
															<input type="text" class="form-control" id="mojor" value="<%=userByid.getMojor()%>" disabled>
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-md-4">
														<div class="form-group">
															<label class="bmd-label-floating">ตำแหน่ง</label>
															<input type="text" class="form-control" id="positionTeach" value="<%=userByid.getPositionTeach()%>"
															 disabled>
														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">
															<label class="bmd-label-floating">มีฐานชั่วโมง/คาบ</label>
															<input type="text" class="form-control" id="baseHour" value="<%=userByid.getUserbaseHour()%>" disabled>
														</div>
													</div>
													<div class="col-md-4">
														<div class="form-group">
															<label class="bmd-label-floating">เบิกค่าสอนพิเศษได้ไม่เกิน/หน่วยชั่วโมง</label>
															<input type="text" class="form-control" id="baseKrm" value="<%=userByid.getUserbaseKrm()%>" disabled>
														</div>
													</div>
												</div>
												<div class="row">

													<div class="modal-footer">
														<button type="button" class="btn btn-success waves-effect" data-dismiss="modal" onclick="UpdateFromUser()">Update</button>
													</div>
												</div>
											</form>

										</div>

									</div>

								</div>


							</div>

						</div>


					</div>
				</div>
				<!-- /Row -->

				<!-- Row -->

				<!-- /Row -->

			</div>
			<!-- Footer -->

			<!-- /Footer -->

		</div>
		<!-- /Main Content -->
	</div>
</body>
<script>
$(document).ready(function() {
	
        var userid = $("#userRoleid").val();

        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/userFileById/" + userid,
            dataType: 'json',
            success: function (msg) { 
                if (msg.userId != null) {
					$("#userid").val(msg.userId),
				$('#prrfname').val(msg.prefixName),
				$('#userFname').val(msg.userFname),
					$('#userLname').val(msg.userLname),
					$('#positionTeach').val(msg.positionTeach),
					$('#faculty').val(msg.faculty),
					$('#mojor').val(msg.mojor),
					$('#baseHour').val(msg.baseHour),
					$('#baseKrm').val(msg.baseKrm)
              
                } else {
                    $('#alert').append('<center>ไม่มีข้อมูล</center>');
                }
                     

              
             
            },
            error: function (e) {
              
            }
        });

});
</script>
<script>
	function UpdateFromUser() {
		// PREPARE FORM DATA
		var userUpdate = {
			userId: $('#userid').val(),
			prefixName:$('#prrfname').val(),
			userFname: $('#userFname').val(),
			userLname: $('#userLname').val(),
			positionTeach: $('#positionTeach').val(),
			faculty: $('#faculty').val(),
			mojor: $('#mojor').val(),
			baseHour: $('#baseHour').val(),
			baseKrm: $('#baseKrm').val()
		}



		// DO PUT
		$.ajax({
			type: "POST",	
			contentType: "application/json; charset=utf-8",
			url: "/updateUser",
			data: JSON.stringify(userUpdate),
			dataType: 'json',
			// SUCCESS response
			success: function (userEdit) {
				// $("#userid").val(userEdit.userId),
				// $('#prrfname').val(userEdit.prefixName),
				// $('#userFname').val(userEdit.userFname),
				// 	$('#userLname').val(userEdit.userLname),
				// 	$('#positionTeach').val(userEdit.positionTeach),
				// 	$('#faculty').val(userEdit.faculty),
				// 	$('#mojor').val(userEdit.mojor),
				// 	$('#baseHour').val(userEdit.baseHour),
				// 	$('#baseKrm').val(userEdit.baseKrm)
				// // Create successful message
				// console.log("success")
			if (userEdit.prefixName!=null || userEdit.userFname!=null||userEdit.userLname) {
				location.reload();
			}
            
			},
		
			// ERROR response 
			error: function (e) {
				alert("Error!")
				console.log("ERROR: ", e);
			}
		});
	}
</script>
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

<!-- Sparkline JavaScript -->
<script src="../assets_/vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>

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

</html>