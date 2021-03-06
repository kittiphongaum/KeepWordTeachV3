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
	<title>keepword</title>
	<meta name="description" content="Elmer is a responsive HTML5 admin template by hencework." />
	<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Elmer Admin, Elmeradmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
	<meta name="author" content="hencework" />
	<!-- Favicon -->
	<link rel="shortcut icon" href="../assets_/favicon.ico">
	<link rel="icon" href="../assets_/favicon.ico" type="image/x-icon">
	<!-- vector map CSS -->
	<link href="../assets_/vendors/bower_components/jquery-wizard.js/css/wizard.css" rel="stylesheet" type="text/css" />

	<!-- jquery-steps css -->
	<link rel="stylesheet" href="../assets_/vendors/bower_components/jquery.steps/demo/css/jquery.steps.css">


	<!-- <link href="../assets_/dist/css/style.css" rel="stylesheet" type="text/css"> -->
	<!-- Data table CSS -->
	<link href="../assets_/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />

	<!-- bootstrap-touchspin CSS -->
	<link href="../assets_/vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet"
	 type="text/css" />

	<!-- Custom CSS -->
	<link href="../assets_/dist/css/style.css" rel="stylesheet" type="text/css">
	<style>

		/*# sourceMappingURL=style.css.map */
		#colorgen {
		  background-color:  #443166 ;
		 /* background-image: linear-gradient(to bottom right, #443166 , yellow ) Standard syntax (must be last) */
		}
		</style>
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
</head>

<body>
	<div class="preloader-it">
		<div class="la-anim-1"></div>
	</div>
	<!-- /Preloader -->
	<div class="wrapper  theme-1-active pimary-color-blue">
		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="mobile-only-brand pull-left">
				<div class="nav-header pull-left">
					<div class="logo-wrap">
						<a href="index1">
							<img class="brand-img" src="" alt="brand" />
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
					<a class="active" href="./stipend" data-toggle="collapse" data-target="#app_dr">
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
					<a href="./user" data-toggle="collapse" data-target="#app_dr">
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
						<h5 class="txt-dark">ลงทะเบียน</h5>
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<ol class="breadcrumb">
							<li><a href="./index1">Dashboard</a></li>
							<li class="active"><span>ลงทะเบียนสอนเบิก</span></li>
						</ol>
					</div>
					<!-- /Breadcrumb -->
				</div>
				<!-- /Title -->

				<!-- <input type="text" id="teachTerm">
				<input type="text" id="termYear" >
				<input type="text" id="degree" > -->


				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">

							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<!-- <form id="example-form-jook"> -->
									<!-- <h3><span class="number"><i class="icon-user-following txt-black"></i></span><span class="head-font capitalize-font">เพิ่มข้อมูลรายวิชา</span></h3> -->
									<fieldset>

										<div class="row">
											<input type="hidden" id="teachId">
											<input type="hidden" id="tebleTeachId">

											<div class="container-fluid">
												<div class="row">
													<div class="col-sm-12">
														<div class="panel panel-default card-view">
															<div class="panel-heading">
																<div class="pull-left">
																	<h5 for="exampleCountry" class="control-label mb-10">บันทึกแบบการเบิก</h5>
																</div>
																<div class="clearfix"></div>
															</div>
															<div class="panel-wrapper collapse in">
																<div class="panel-body">
																	<div class="form-group">
																		<div class="row">
																		</div>
																	</div>

																	<div class="form-group">
																		<form>
																			<div class="row">
																				<div class="span1"></div>
																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label for="exampleInputuname_3" class="col-sm-4 control-label">ระดับนักศึกษา</label>
																							<div class="col-sm-8">
																								<!-- <input type="text" class="form-control" id="degreeStuden" placeholder=""> -->
																								<select id="degreeS4" class="form-control " name="degreeStuden">
																									<option value="1">ปริญญาตรี</option>
																									<option value="2">ปริญญาโท</option>
																									<option value="3">ปริญญาเอก</option>
																								</select>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div class="col-md-3 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label for="exampleInputuname_3" class="col-sm-4 control-label">ปีการศึกษา</label>
																							<div class="col-sm-8">
																								<select id="yearS3" class="form-control " name="termYear">
																									<option value=""></option>
																									<option value="2561">2561</option>
																									<option value="2560">2560</option>
																									<option value="2560">2559</option>
																									<option value="2558">2558</option>
																									<option value="2557">2557</option>
																								</select>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div class="span1"></div>
																				<div class="col-md-2 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label for="exampleInputuname_3" class="col-sm-6 control-label">ภาคเรียน</label>
																							<div class="col-sm-6">
																								<!-- <input type="text" class="form-control" id="teachTerm" placeholder=""> -->
																								<select id="termS2" class="form-control " name="teachTerm">

																									<option value="1 ">1</option>
																									<option value="2">2</option>
																									<option value="3">3</option>

																								</select>
																							</div>
																						</div>
																					</div>
																				</div>
																				<a type="submit" class="btn btn-success mr-10 pull-left" onclick="tableuteach()">
																					<h6>ค้นหา</h6>
																				</a>
																			</div>
																		</form>
																	</div>


																</div>
															</div>
														</div>
													</div>

												</div>

											</div>
										</div>

										<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
														<h5 class="modal-title" id="exampleModalLabel1">แก้ใขวันหยุด</h5>
													</div>
													<div class="modal-body">
														<form>
															<div class="form-group">
																<div class="row">
																	<div class="col-md-12">
																		<div class="form-group">
																			<label class="control-label mb-10">เลือกสถานะวิชา</label>
																			<select class="selectpicker" data-style="form-control btn-default btn-outline ">
																				<option value="1">ปกติ</option>
																				<option value="2">ใช้เบิกทั้งหมด</option>
																				<option value="3">ใช้แบ่งหน่วย</option>
																			</select>
																		</div>
																	</div>
																</div>
															</div>
															<div class="form-group">
																<div class="row">
																	<div class="col-md-12 col-xs-12">
																		<div class="form-group">
																			<div class="row">
																				<label for="exampleInputuname_3" class="col-sm-6 control-label">ใช้เป็นฐาน/คาบ</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control" id="" placeholder="">
																				</div>
																			</div>
																		</div>
																	</div>

																</div>
																<div class="row">
																	<div class="col-md-12 col-xs-12">
																		<div class="form-group">
																			<div class="row">
																				<label for="exampleInputuname_3" class="col-sm-6 control-label">ใช้เบิก/หน่วยชั่วโมง</label>
																				<div class="col-sm-6">
																					<input type="text" class="form-control" id="" placeholder="">
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</form>
													</div>
													<div class="modal-footer">
														<button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
														<button type="button" class="btn btn-primary">บันทึก</button>
													</div>
												</div>
											</div>
										</div>


									</fieldset>

									<div class="row">
										<div class="col-sm-12">
											<div class="panel panel-default card-view">
												<div class="panel-heading">
													<div class="pull-left">
														<h6 class="panel-title txt-dark">ตารางวิชา</h6>
													</div>
													<div class="clearfix"></div>
												</div>
												<div class="panel-wrapper collapse in">
													<div class="panel-body">
														<div class="table-wrap">
															<table id="Table1" class="table table-hover table-bordered mb-0">
																<thead class="text-warning">
																	<tr>
																		<th scope="col">รหัสวิชา</th>
																		<th scope="col">Section</th>
																		<th scope="col">จำนวนหน่วยกิต</th>
																		<th scope="col">จำนวนนักศึกษา</th>
																		<th scope="col">อัตราสอน/ชั่วโมง</th>
																		<th scope="col">ใช้เป็นฐาน/คาบ</th>
																		<th scope="col">ใช้เบิก/หน่วยชั่วโมง</th>

																		<th scope="col">หมายเหตู</th>
																	</tr>
																</thead>
																<tbody></tbody>
																<thead>
																	<td colspan="5">รวม</td>
																	<td scope="col" id="tfood"></td>
																	<td scope="col" id="tarHo"></td>
																	<td scope="col" id="sumsrry"></td>
																</thead>
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
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="pull-left">
									<h6 class="panel-title txt-dark">รายละเอียดการสอน/วัน</h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="row">
										<div class="col-md-12">
											<div class="table-wrap">
												<table id="Table2" class="table table-hover table-bordered mb-0">
													<thead class="text-warning">
														<tr>
															<th scope="col">#</th>
															<th scope="col">สัปดาห์ที่สอน</th>
															<th scope="col">วัน/เดือน/ปี</th>
															<th scope="col">รายวิชา</th>
															<th scope="col">ภาคทฤษฏี</th>
															<th scope="col">ภาคปฏิบัติ</th>
															<th scope="col">รวม</th>

															<th scope="col">หมายเหตู</th>
														</tr>

													</thead>
													<tbody>
													</tbody>
													<thead>
															<td colspan="4">รวม</td>
															<td scope="col" id="sumTsd"></td>
															<td scope="col" id="sumPsb"></td>
															<td scope="col"id="tableSum"></td>
															<td scope="col"></td>
															
													</thead>

												</table>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<button type="submit" class="btn btn-primary pull-right" onclick="insertTeachingfrom()">
						<h4>บันทึก และ พิมพ์</h4>
					</button>
				</div>
				<!-- /Row -->
				<!-- /Row -->

			</div>

		</div>
		<input type="hidden" id="">
	</div>
	<!-- Bootstrap Colorpicker CSS -->
	<link href="../assets_/vendors/bower_components/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	 rel="stylesheet" type="text/css" />

	<!-- Bootstrap Datetimepicker CSS -->
	<link href="../assets_/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css"
	 rel="stylesheet" type="text/css" />

	<!-- Bootstrap Daterangepicker CSS -->
	<link href="../assets_/vendors/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
	<!-- -------------- -->
	<!-- select2 CSS -->
	<link href="../assets_/vendors/bower_components/select2/dist/css/select2.min.css" rel="stylesheet" type="text/css" />

	<!-- switchery CSS -->
	<link href="../assets_/vendors/bower_components/switchery/dist/switchery.min.css" rel="stylesheet" type="text/css" />
	<!-- bootstrap-select CSS -->
	<link href="vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css" />

	<!-- bootstrap-tagsinput CSS -->
	<link href="../assets_/vendors/bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet"
	 type="text/css" />

	<!-- bootstrap-touchspin CSS -->
	<link href="../assets_/vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet"
	 type="text/css" />

	<!-- multi-select CSS -->
	<link href="../assets_/vendors/bower_components/multiselect/css/multi-select.css" rel="stylesheet" type="text/css" />

	<!-- Bootstrap Switches CSS -->
	<link href="../assets_/vendors/bower_components/bootstrap-switch/dist/css/bootstrap3/bootstrap-switch.min.css" rel="stylesheet"
	 type="text/css" />

	<!-- Bootstrap Datetimepicker CSS -->
	<link href="../assets_/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css"
	 rel="stylesheet" type="text/css" />

	<!-- Switchery JavaScript -->
	<script src="../assets_/vendors/bower_components/switchery/dist/switchery.min.js"></script>

	<!-- Select2 JavaScript -->
	<script src="../assets_/vendors/bower_components/select2/dist/js/select2.full.min.js"></script>

	<!-- Bootstrap Select JavaScript -->
	<script src="../assets_/vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>

	<!-- Bootstrap Tagsinput JavaScript -->
	<script src="../assets_/vendors/bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>

	<!-- Bootstrap Touchspin JavaScript -->
	<script src="../assets_/vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>

	<!-- Multiselect JavaScript -->
	<script src="../assets_/vendors/bower_components/multiselect/js/jquery.multi-select.js"></script>


	<!-- Bootstrap Switch JavaScript -->
	<script src="../assets_/vendors/bower_components/bootstrap-switch/dist/js/bootstrap-switch.min.js"></script>

	<!-- Bootstrap Datetimepicker JavaScript -->
	<script type="text/javascript" src="../assets_/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>

	<!-- Form Advance Init JavaScript -->
	<script src="../assets_/dist/js/form-advance-data.js"></script>

	<!-- Slimscroll JavaScript -->
	<script src="../assets_/dist/js/jquery.slimscroll.js"></script>

	<!-- Fancy Dropdown JS -->
	<script src="../assets_/dist/js/dropdown-bootstrap-extended.js"></script>

	<!-- Owl JavaScript -->
	<script src="../assets_/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

	<!---------------------------------------- JavaScript ------------------------------------>


	<!-- jQuery -->
	<script src="../assets_/vendors/bower_components/jquery/dist/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../assets_/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<script src="../assets_/vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>

	<!-- Form Wizard JavaScript -->
	<script src="../assets_/vendors/bower_components/jquery.steps/build/jquery.steps.min.js"></script>
	<script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>

	<!-- Form Wizard Data JavaScript -->
	<script src="../assets_/dist/js/form-wizard-data.js"></script>

	<!-- Data table JavaScript -->
	<script src="../assets_/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>

	<!-- Bootstrap Touchspin JavaScript -->
	<script src="../assets_/vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>

	<!-- Starrr JavaScript -->
	<script src="../assets_/dist/js/starrr.js"></script>

	<!-- Slimscroll JavaScript -->
	<script src="../assets_/dist/js/jquery.slimscroll.js"></script>

	<!-- Fancy Dropdown JS -->
	<script src="../assets_/dist/js/dropdown-bootstrap-extended.js"></script>





	<!-- Owl JavaScript -->
	<script src="../assets_/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

	<!-- Switchery JavaScript -->
	<script src="../assets_/vendors/bower_components/switchery/dist/switchery.min.js"></script>

	<!-- Init JavaScript -->
	<script src="../assets_/dist/js/init.js"></script>

	<!-- Moment JavaScript -->
	<script type="text/javascript" src="../assets_/vendors/bower_components/moment/min/moment-with-locales.min.js"></script>


	<script src="../assets_/vendors/bower_components/mjolnic-bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>


	<script type="text/javascript" src="../assets_/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>

	<script src="../assets_/vendors/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>


	<!-- <script src="../assets_/dist/js/form-xeditable-data.js"></script> -->

	<!-- <script src="../js/stipend/stipend-main.js"></script> -->

	<!-- <script src="../js/keepwordstap1/keepword_main.js"></script> -->
	<script src="../js/stipend/tableteaching.js"></script>

	<!-- <script src="../js/keepwordstap1/keepword_main.js"></script> -->

	<!-- xeditable css -->
	<script type="text/javascript" src="../assets_/vendors/bower_components/x-editable/dist/bootstrap3-editable/js/bootstrap-editable.min.js"></script>
	<link href="../assets_/vendors/bower_components/x-editable/dist/bootstrap3-editable/css/bootstrap-editable.css" rel="stylesheet" />
	<!-- Form-xeditable Init JavaScript -->





</body>
<script>
	function tableuteach() {
		var id1 = {
			useridS1: $("#userRoleid").val(),
			termS2: $("#termS2").val(),
			yearS3: $("#yearS3").val(),
			degreeS4: $("#degreeS4").val()
		};
		$.ajax({
			type: "POST",
			contentType: "application/json",
			url: "/TeachOneSeachByid1",
			data: JSON.stringify(id1),
			dataType: 'json',

			success: function (msg) {
				var tfood = 0;
				var table1 = "";
				var sumtarm = 0;
				var tarm, tarHo = 0,
					sumsrry = 0;

				for (var i = 0; i < msg.length; i++) {
					tarm = msg[i].basecram;
					//	sumtarm=parseInt(tarm);
					tfood = (tfood + tarm);
					tarHo += msg[i].baseHour;
					sumsrry += msg[i].salarySum;
					table1 +=
						'<tr>' +
						'<td>' + msg[i].tableTeaching.subject.subjectId + '</td>' +
						'<td>' + msg[i].tableTeaching.subject.section + '</td>' +
						'<td>' + msg[i].tableTeaching.subject.credit + "(" + msg[i].tableTeaching.subject.creditHour + ")" + '</td>' +
						'<td>' + msg[i].tableTeaching.studenNumber + '</td>' +
						'<td>' + msg[i].tableTeaching.standardTeach + '</td>' +
						'<td>' + msg[i].basecram + '</td>' +
						'<td>' + msg[i].baseHour + '</td>' +
						'<td>' + msg[i].salarySum + '</td>' +
						// '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
						'</tr>';
				}
				if (tfood < tarm) {
					tfood += "  ฐานไม่พอ";
				}
				$('#Table1 tbody').append(table1);
				$('#tfood').append(tfood);
				$('#tarHo').append(tarHo);
				$('#sumsrry').append("");
				//	$('#Table1 tfood').append(tfood);
				//	$("#Table1 tbody tr:odd").addClass("info");
				//	$("#Table1 tbody tr:even").addClass("success");
			},
			error: function (e) {
				alert("ERROR: Table1", e);
				console.log("ERROR: Table1", e);
			}
		});
		$.ajax({
		type: "POST",
		contentType: "application/json",
		url: "/teachFoday",
		data: JSON.stringify(id1),
		dataType: 'json',
		success: function (msg1) {
			var table2 = "";
			var tableSum = 0,sumPsb=0,sumTsd=0;
			var hh = "";
			var sumtsdp = 0,
				tsd = 0,
				tsd1 = 0,psb;
			for (var i = 0; i < msg1.length; i++) {
				var gg = i + 1;
				var hol = "";
				//sumtsdp=(msg1[i].tudsadeeDft+msg1[i].prtibadDft);
				tsd1 = msg1[i].tudsadeeDft;
				psb =msg1[i].prtibadDft;
				hh = msg1[i].holidayDft;
				// if (msg1[i].teach.basecram != 0) {
				// 		tsd1 = (tsd-1);
				// }
				if (hh == "holiday") {
					hol = "(วันหยุด)";
				}
				sumtsdp = tsd1 + psb;
				sumtsdp=sumtsdp-1;
				table2 +=
					'<tr>' +
					'<td>' + gg + '</td>' +
					'<td>' + msg1[i].weekofyearDft + '</td>' +
					'<td>' + msg1[i].dayofyearDft + "/" + msg1[i].month.monthName + "/" + msg1[i].yearofteachDft + hol + '</td>' +
					'<td>' + msg1[i].teach.tableTeaching.subject.subjectId + '</td>' +
					'<td>' + tsd1 + '</td>' +
					'<td>' + psb + '</td>' +
					'<td>' + sumtsdp + '</td>' +
					'<td>' + '<a data-target="#exampleModal"  data-toggle="modal"' +
					' class="btn btn-warning btn-xs"><span class="glyphicon glyphicon-edit"></span>' +
					'</a>' +
					'</td>' +
					// '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
					'</tr>';
					sumTsd+=tsd1;
					sumPsb+=msg1[i].prtibadDft;
					tableSum+=sumtsdp;
			}								
			$('#Table2 tbody').append(table2);
			$('#sumTsd').append(sumTsd);
			$('#sumPsb').append(sumPsb);
			$('#tableSum').append(tableSum);
			//		$('#Table2 tfoot').append(table1);		
		},
		error: function (e) {
			alert("ERROR: Table2", e);
			console.log("ERROR: Table2", e);
		}
	});
	};


</script>
<script>
	$(function () {

		$('#no1').keyup(function () {
			updateTotal();
		});
		$('#no2').keyup(function () {
			updateTotal();
		});

		$('#no3').keyup(function () {
			updateTotal();
		});

		var updateTotal = function () {
			var input1 = parseInt($('#no1').val());
			var input2 = parseInt($('#no2').val());
			var input3 = parseInt($('#no3').val());
			var totals1 = parseFloat(input1 * 10) || "";
			var totals2 = parseFloat(input2 * 20) || "";
			var totals3 = parseFloat(input3 * 30) || "";
			//parseFloat($('#totals').val()) || 0; 
			$('#po1').text(totals1);
			$('#po2').text(totals2);
			$('#po3').text(totals3);
			var totals4 = parseFloat(totals1 + totals2 + totals3) || "";
			$('#so1').text(totals4);
		};
		// output_total.text(total);


	});
</script>
<script>
		//insert
		function insertTeachfrom() {
		var insertTableTeaching = {
		 	tebleTeachId: $('#tebleTeachId').val(),
			teachTerm: $('#teachTerm').val(),
	 		termYear: $('#termYear').val(),
			teachWeek: $('#teachWeek').val(),
			studenNumber: $('#studenNumber').val(),
			section: $('#section').val(),
			standardTeach: $('#standardTeach').val(),
			startMonth: $('#startMonth').val(),
			stopMonth: $('#stopMonth').val(),
			teachYear: $('#teachYear').val(),
			startTime: $('#startTime').val(),
			stopTime: $('#stopTime').val(),
			degreeStuden: $('#degreeStuden').val(),
			sumHour: $('#data_hour').val(),
			room:$('#room').val(),
			userRoleid: $('#userRoleid').val(),
			subjectRoleid: $('#subjectId').val(),
		
		subject :{
			subjectId: $('#subjectId').val(),
			subjectName: $('#subjectName').val(),
			// credit: $('#credit').val(),
			// creditHour: $('#creditHour').val(),
			tudsadee: $('#tudsadee').val(),
			prtibad: $('#prtibad').val()
		}
		}
		$.ajax({
			type: "POST",
			url: "/insertTableTeaching",
			contentType: "application/json; charset=utf-8",
			data: JSON.stringify(insertTableTeaching),
			dataType: "json",
			success: function (msg) {
				 console.log(msg)
				if(msg !=null){
					location.reload(); 
				
				}else{

				}
			},
			
			error: function () {

			}
		});

	}
</script>

</html>