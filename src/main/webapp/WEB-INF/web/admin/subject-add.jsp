<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.cs.bru.model.User"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>Admin</title>
	<meta name="description" content="Elmer is a Dashboard & Admin Site Responsive Template by hencework." />
	<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Elmer Admin, Elmeradmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
	<meta name="author" content="hencework" />

	<!-- Favicon -->
	<link rel="shortcut icon" href="../assets_/favicon.ico">
	<link rel="icon" href="../assets_/favicon.ico" type="image/x-icon">

	<!-- Data table CSS -->
	<link href="../assets_/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />

	<!-- Custom CSS -->
	<link href="../assets_/dist/css/style.css" rel="stylesheet" type="text/css">
	<!-- Bootstrap Colorpicker CSS -->
	<link href="./assets_/vendors/bower_components/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	 rel="stylesheet" type="text/css" />

	<!-- select2 CSS -->
	<link href="./assets_/vendors/bower_components/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" />

	<!-- switchery CSS -->
	<link href="./assets_/vendors/bower_components/switchery/dist/switchery.min.css" rel="stylesheet" type="text/css" />

	<!-- bootstrap-select CSS -->
	<link href="./assets_/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet"
	 type="text/css" />

	<!-- bootstrap-tagsinput CSS -->
	<link href="./assets_/vendors/bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet" type="text/css" />

	<!-- bootstrap-touchspin CSS -->
	<link href="./assets_/vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet"
	 type="text/css" />

	<!-- multi-select CSS -->
	<link href="./assets_/vendors/bower_components/multiselect/css/multi-select.css" rel="stylesheet" type="text/css" />

	<!-- Bootstrap Switches CSS -->
	<link href="./assets_/vendors/bower_components/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.min.css" rel="stylesheet"
	 type="text/css" />

	<!-- Bootstrap Datetimepicker CSS -->
	<link href="./assets_/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css"
	 rel="stylesheet" type="text/css" />
	<%@include file="../layout/layoutcss.jsp" %>
	<%
   User  userLog = null;
    User  userByid = null; 
   User userByBean = null;
   String result = "";
%>

	<%
  	userLog = (User) request.getSession().getAttribute("loginUser");
   /*  list = (List<User>) request.getSession().getAttribute("listUser");  */
     userByid = (User) request.getSession().getAttribute("listUser"); 
   /*  userByBean = (User) request.getAttribute("resultBean"); 
    result = (String) request.getAttribute("messesUpdate");  */

%>
</head>

<body>
	<!--Preloader-->
	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>
	<!--/Preloader-->
	<div class="wrapper  theme-3-active pimary-color-blue">
		<!-- Top Menu Items -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="mobile-only-brand pull-left">
				<div class="nav-header pull-left">
					<div class="logo-wrap">
						<a href="./index-admin">
							<img class="brand-img" src="./assets_/dist/img/logo.png" alt="brand" />
							<span class="brand-text">Welcome</span>
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
							<a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img src="../assets_/dist/img/user1.png"
									alt="user_auth" class="user-auth-img img-circle" /><span class="user-online-status"></span></a>
							<ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
								<li>
									<a href="./dataadmin-add"><i class="zmdi zmdi-account"></i><span>บันชีผู้ใช้</span></a>
								</li>
								<li>
									<a href="javascript: document.logoutForm.submit()"><i class="zmdi zmdi-power"></i><span>Log
											Out</span></a>
								</li>
								<form name="logoutForm" action="/" method="post" th:hidden="true"></form>
							</ul>
						</li>
						</li>
				</ul>
			</div>
		</nav>
		<!-- /Top Menu Items -->

		<!-- Left Sidebar Menu -->
		<div class="fixed-sidebar-left">
			<ul class="nav navbar-nav side-nav nicescroll-bar">
				<li class="navigation-header">
					<span>Manu</span>
					<i class="zmdi zmdi-more"></i>
				</li>
				<li>
					<a href="./index-admin" data-toggle="collapse" data-target="#dashboard_dr">
						<div class="pull-left"><i class="ti-layout-grid2  mr-20"></i><span class="right-nav-text">หน้าหลัก</span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="dashboard_dr" class="collapse collapse-level-1">

					</ul>
				</li>
				<li>
					<a href="./people-add" data-toggle="collapse" data-target="#app_dr">
						<div class="pull-left"><i class="icon-people mr-20"></i><span class="right-nav-text">ข้อมูลผู้สอน</span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="app_dr" class="collapse collapse-level-1">
					</ul>
				</li>

				<li>
					<a href="./history-add" data-toggle="collapse" data-target="#app_dr">
						<div class="pull-left"><i class="icon-docs mr-20"></i><span class="right-nav-text">ประวัติการเบิก</span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="app_dr" class="collapse collapse-level-1">
					</ul>
				</li>
				<li>
					<a class="active" href="./subject-add" data-toggle="collapse" data-target="#app_dr">
						<div class="pull-left"><i data-icon="o" class="linea-icon linea-basic mr-20"></i><span class="right-nav-text">เพิ่มรายวิชา</span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="app_dr" class="collapse collapse-level-1">
					</ul>
				</li>
				<li>
					<a href="./holiday-add" data-toggle="collapse" data-target="#app_dr">
						<div class="pull-left"><i class="ti-notepad mr-20"></i><span class="right-nav-text">ข้อมูลวันหยุด</span></div>
						<div class="clearfix"></div>
					</a>
					<ul id="app_dr" class="collapse collapse-level-1">
					</ul>
				</li>
				<li>
					<a href="./dataadmin-add" data-toggle="collapse" data-target="#app_dr">
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
		<!-- /Left Sidebar Menu -->





		<!-- Main Content -->
		<div class="page-wrapper">
			<div class="container-fluid pt-25">
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="pull-left">
									<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">+
										เพิ่มรายวิชา</button>
									<div id="myModal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-lg">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
													<h5 class="modal-title" id="myModalLabel">เพิ่มรายวิชา</h5>
												</div>
												<div class="modal-body">
													<!-- Row -->
													<div class="panel-wrapper collapse in">
														<div class="row">
															<div class="col-sm-12">
																<div class="form-wrap">
																	<form>
																		<input type="hidden" id="userId" name="userId">
																		<div class="row">
																			<div class="col-md-3">
																				<div class="form-group">
																					<label class="bmd-label-floating">รหัสวิชา</label>
																					<input type="text" name="userid" class="form-control" id="subjectId" value="" required="">
																				</div>
																			</div>
																			<div class="col-md-3">
																				<div class="form-group">
																					<label class="bmd-label-floating">ชื่อวิชา</label>
																					<input type="text" name="userid" class="form-control" id="subjectName" value="" required="">
																				</div>
																			</div>
																			<div class="col-md-3">
																				<div class="form-group">
																					<label class="bmd-label-floating">หน่วยกิตรวม</label>
																					<input type="text" name="userFname" class="form-control" id="credit" value="" required="">

																				</div>
																			</div>
																			<div class="col-md-3">
																				<div class="form-group">
																					<label class="bmd-label-floating">หนวยกิต</label>
																					<input type="text" class="form-control" id="creditHour" value="" required="">

																				</div>
																			</div>
																		</div>
																		<div class="row">
																			<div class="col-md-6">
																				<div class="form-group">
																					<label class="bmd-label-floating">ทฤษฏี</label>
																					<input type="text" class="form-control" id="tudsadee" value="" required="">

																				</div>
																			</div>
																			<div class="col-md-6">
																				<div class="form-group">
																					<label class="bmd-label-floating">ปฏิบัติ</label>
																					<input type="text" class="form-control" id="prtibad" value="" required="">
																				</div>
																			</div>
																		</div>


																		<div class="modal-footer ">
																			<button type="submit" class="btn btn-success btn-rounded" aria-hidden="false" onclick="subjectInsert()">Save</button>
																			<button type="button" class="btn btn-default btn-rounded" data-dismiss="modal">Cancel</button>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>

												</div>

											</div>
											<!-- /.modal-content -->
										</div>
										<!-- /.modal-dialog -->
									</div>
								</div>
								<div class="clearfix"></div>
							</div>

						</div>
					</div>

				</div>
				<!-- Row -->




				<!-- <img src="../assets_/dist/img/sweetalert/alert4.png" alt="alert" class="img-responsive model_img" id="sa-warning1">  -->
				<!-- <a type="button" class="label label-danger "alt="alert" id="sa-warningteach">ปิด</a> -->
				<a type="button" alt="alert"  id="sa" class="label label-success ">เปิด</a>
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<!-- Row -->
							<div class="row">
								<div class="col-sm-12">
									<div class="panel panel-default card-view">
										<div class="panel-heading">
											<div class="pull-left">
												<h6 class="panel-title txt-dark">ตารรางวิชา</h6>
											</div>
											<div class="pull-right">
												<a href="#" class="pull-left inline-block full-screen">
													<i class="zmdi zmdi-fullscreen"></i>
												</a>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="panel-wrapper collapse in">
											<div class="panel-body row pa-0">
												<div class="table-wrap">
													<div class="table-responsive">
														<table class="table display product-overview border-none" id="sujectTable">
															<thead>
																<tr>
																	<th>รหัส</th>
																	<th>ชื่อวิชา</th>
																	<th>หน่วยกิต</th>
																	<th>ทฤษฏี</th>
																	<th>ปฏิบัติ</th>
																	<th>Status</th>
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
								</div>
							</div>
							<!-- /Row -->
						</div>
					</div>
				</div>
			</div>
			
			<!-- Footer -->
			<footer class="footer container-fluid pl-30 pr-30">
				<div class="row">
					<div class="col-sm-12">
						<p>Jook_D_Dook @kittiphong Aumphimai</p>
					</div>
				</div>
			</footer>
			<!-- /Footer -->

		</div>
		<!-- /Main Content -->

	</div>
	<!-- /#wrapper -->

	<!-- JavaScript -->

	<!-- jQuery -->
	<script src="../assets_/vendors/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../assets_/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- Counter Animation JavaScript -->
	<script src="../assets_/vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
	<script src="../assets_/vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>

	<!-- Data table JavaScript -->
	<script src="../assets_/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="../assets_/dist/js/productorders-data.js"></script>

	<!-- Owl JavaScript -->
	<script src="../assets_/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

	<!-- Switchery JavaScript -->
	<script src="../assets_/vendors/bower_components/switchery/dist/switchery.min.js"></script>

	<!-- Slimscroll JavaScript -->
	<script src="../assets_/dist/js/jquery.slimscroll.js"></script>

	<!-- Fancy Dropdown JS -->
	<script src="../assets_/dist/js/dropdown-bootstrap-extended.js"></script>

	<!-- Sparkline JavaScript -->
	<script src="../assets_/vendors/jquery.sparkline/dist/jquery.sparkline.min.js"></script>

	<!-- EChartJS JavaScript -->
	<script src="../assets_/vendors/bower_components/echarts/dist/echarts-en.min.js"></script>
	<script src="../assets_/vendors/echarts-liquidfill.min.js"></script>

	<!-- Toast JavaScript -->
	<script src="../assets_/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>

	<!-- Init JavaScript -->
	<script src="../assets_/dist/js/init.js"></script>
	<script src="../assets_/dist/js/dashboard3-data.js"></script>
	<!-- Moment JavaScript -->
	<script type="text/javascript" src="vendors/bower_components/moment/min/moment-with-locales.min.js"></script>
	<!-- Bootstrap Colorpicker JavaScript -->
	<script src="vendors/bower_components/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<!-- Select2 JavaScript -->
	<script src="vendors/bower_components/select2/dist/js/select2.full.min.js"></script>
	<!-- Bootstrap Select JavaScript -->
	<script src="vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<!-- Bootstrap Tagsinput JavaScript -->
	<script src="vendors/bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
	<!-- Bootstrap Touchspin JavaScript -->
	<script src="vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
	<!-- Multiselect JavaScript -->
	<script src="vendors/bower_components/multiselect/js/jquery.multi-select.js"></script>
	<!-- Bootstrap Switch JavaScript -->
	<script src="vendors/bower_components/bootstrap-switch/dist/js/bootstrap-switch.min.js"></script>
	<!-- Bootstrap Datetimepicker JavaScript -->
	<script type="text/javascript" src="vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
	<!-- Form Advance Init JavaScript -->
	<script src="../assets_/dist/js/form-advance-data.js"></script>
	<%@include file="../layout/layoutjs.jsp"%>
</body>
<script>
	$(document).ready(function () {


		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/subAll",
			//data: JSON.stringify(id1),
			dataType: 'json',

			success: function (msg) {
				//	var tfood = 0;
				var table1 = "";
				//	var sumtarm = 0;
				//	var tarm, tarHo = 0,
				//	sumsrry = 0;

				for (var i = 0; i < msg.length; i++) {
					//	tarm = msg[i].basecram;
					//	//	sumtarm=parseInt(tarm);
					//	tfood = (tfood + tarm);
					//	tarHo += msg[i].baseHour;
					//	sumsrry += msg[i].salarySum;
					var status = "1";
					if (msg[i].statusSubjeact == status) {
						// status = '<a class="label label-success " id="sa-warningteach">เปิด</a>';
						status='<a type="button" alt="alert" id="sa-warningteach" class="label label-success ">เปิด</a>';
					} else {
						status = '<a class="label label-danger ">ปิด</a>';
					}
					table1 +=
						'<tr>' +
						'<td>' + msg[i].subjectId + '</td>' +
						'<td>' + msg[i].subjectName + '</td>' +
						//'<td>' + msg[i].credit+'</td>' +
						'<td>' + msg[i].creditHour + '</td>' +
						'<td>' + msg[i].tudsadee + '</td>' +
						'<td>' + msg[i].prtibad + '</td>' +
						'<td>' + status + '</td>' +
						// '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
						'</tr>';
				}
				//	if (tfood < tarm) {
				//		tfood += "  ฐานไม่พอ";
				//	}
				$('#sujectTable tbody').append(table1);
				//	$('#tfood').append(tfood);
				//		$('#tarHo').append(tarHo);
				//	$('#sumsrry').append("");
				//	$('#Table1 tfood').append(tfood);
				//	$("#Table1 tbody tr:odd").addClass("info");
				//	$("#Table1 tbody tr:even").addClass("success");
			},
			error: function (e) {
				alert("ERROR: Table1", e);
				console.log("ERROR: Table1", e);
			}
		});
	});
</script>
<script>
	/*SweetAlert Init*/

	$(function () {
		"use strict";

		var SweetAlert = function () {};

		//examples 
		SweetAlert.prototype.init = function () {

				//Warning Message
				 $('#sa,.sa').on('click', function (e) {
				
					swal({
						title: "คุณแน่ใจไหม?",
						text: "คุณต้องการเปลียนสถานะวิชาหรือไม่",
						type: "warning",
						showCancelButton: true,
						confirmButtonColor: "#f8b32d",
						confirmButtonText: "YES",
						closeOnConfirm: false,
						if () {
							alert("YYYYYY");
						}
					}, function () {
						swal("เรียบร้อย", "สถานะได้ถูกเปลียนแล้ว", "success");

					});
					return false;
				});

			},
			//init
			$.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert;

		$.SweetAlert.init();
	});
		
</script>
<script>
	function subjectInsert() {


		var insertSubjech = {

			subjectId: $('#subjectId').val(),
			subjectName: $('#subjectName').val(),
			credit: $('#credit').val(),
			creditHour: $('#creditHour').val(),
			tudsadee: $('#tudsadee').val(),
			prtibad: $('#prtibad').val(),
			// statusSubjeact: $('#statusSubjeact').val("1")
		};
		$.ajax({
			type: "POST",
			url: "/insertSubject",
			contentType: "application/json; charset=utf-8",
			data: JSON.stringify(insertSubjech),
			dataType: "json",
			success: function (msg) {
				console.log(msg)
				if (msg != null) {
					location.reload();

				}
			}

		});

	}
</script>

</html>