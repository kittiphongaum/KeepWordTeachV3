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
		<meta name="author" content="hencework"/>
	
		<!-- Favicon -->
		<link rel="shortcut icon" href="../assets_/favicon.ico">
		<link rel="icon" href="../assets_/favicon.ico" type="image/x-icon">
	
		<!-- Data table CSS -->
		<link href="../assets_/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
		<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://www.datatables.net/rss.xml">
		<!-- Data table CSS -->
		<link href="../assets_/vendors/bower_components/datatables.net-responsive/css/responsive.dataTables.min.css" rel="stylesheet" type="text/css"/>

	<!-- Bootstrap Colorpicker CSS -->
	<link href="../assets_/vendors/bower_components/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css" rel="stylesheet" type="text/css"/>

	<!-- Bootstrap Datetimepicker CSS -->
	<link href="../assets_/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css"/>

	<!-- Bootstrap Daterangepicker CSS -->
	<link href="../assets_/vendors/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css"/>


		<!-- Custom CSS -->
		<link href="../assets_/dist/css/style.css" rel="stylesheet" type="text/css">
		
		<!-- Data table CSS -->
		<link href="../assets_/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
	<!-- Bootstrap Colorpicker CSS -->
		<link href="./assets_/vendors/bower_components/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
		rel="stylesheet" type="text/css" />
	<!-- jquery-steps css -->
	<link rel="stylesheet" href="../assets_/vendors/bower_components/jquery.steps/demo/css/jquery.steps.css">

	<!-- switchery CSS -->
	<link href="./assets_/vendors/bower_components/switchery/dist/switchery.min.css" rel="stylesheet" type="text/css" />
	<!-- <link href="../assets_/dist/css/style.css" rel="stylesheet" type="text/css"> -->
	<!-- Data table CSS -->
	<link href="../assets_/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />

	<!-- bootstrap-touchspin CSS -->
	<link href="../assets_/vendors/bower_components/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.css" rel="stylesheet"
	 type="text/css" />

	<!-- Custom CSS -->
	<link href="../assets_/dist/css/style.css" rel="stylesheet" type="text/css">
		<!--alerts CSS -->
		<link href="./assets_/vendors/bower_components/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">

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
								<img class="brand-img" src="../assets_/dist/img/logo3.png" alt="brand" />
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
						<a  href="./index-admin" data-toggle="collapse" data-target="#dashboard_dr">
							<div class="pull-left"><i class="ti-layout-grid2  mr-20"></i><span class="right-nav-text">หน้าหลัก</span></div>
							<div class="clearfix"></div>
						</a>
						<ul id="dashboard_dr" class="collapse collapse-level-1">
	
						</ul>
					</li>
					<li>
						<a  href="./people-add" data-toggle="collapse" data-target="#app_dr">
							<div class="pull-left"><i class="icon-people mr-20"></i><span class="right-nav-text">ข้อมูลผู้สอน</span></div>
							<div class="clearfix"></div>
						</a>
						<ul id="app_dr" class="collapse collapse-level-1">
						</ul>
					</li>
					
					<!-- <li>
						<a href="./history-add" data-toggle="collapse" data-target="#app_dr">
							<div class="pull-left"><i class="icon-docs mr-20"></i><span class="right-nav-text">ประวัติการเบิก</span></div>
							<div class="clearfix"></div>
						</a>
						<ul id="app_dr" class="collapse collapse-level-1">
						</ul>
					</li> -->
					<li>
						<a href="./subject-add" data-toggle="collapse" data-target="#app_dr">
							<div class="pull-left"><i data-icon="o" class="linea-icon linea-basic mr-20"></i><span class="right-nav-text">เพิ่มรายวิชา</span></div>
							<div class="clearfix"></div>
						</a>
						<ul id="app_dr" class="collapse collapse-level-1">
						</ul>
					</li>
					<li>
						<a class="active" href="./holiday-add" data-toggle="collapse" data-target="#app_dr">
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
	
			<!-- Right Sidebar Menu -->
			
			<!-- /Right Sidebar Menu -->
	
	
	
			<!-- Main Content -->
			<div class="page-wrapper">
				<div class="container-fluid pt-25">
						<!-- Row -->
						<div class="row">
								<div class="col-sm-12">
									<div class="panel panel-default card-view">
										<div class="panel-heading">
											<div class="pull-left">
												<h6 class="panel-title txt-dark">ระยะเวลาที่สอน (ปีการศึกษา-ภาคเรียน)</h6>
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="panel-wrapper collapse in">
											<div class="panel-body">
												<div class="form-wrap">
													<form class="form-horizontal">
														<div class="form-group mb-0">
															<div class="col-sm-12">
																<div class="row text-center">
																	
																	<div class="col-sm-2">
																		<label class="control-label mb-10">ระยะเวลาที่เริ่มสอน</label>
																		<input class="form-control filled-input rounded-input" id="sh_termDateStart" disabled> 
																	</div>
																	<div class="col-sm-2">
																			<label class="control-label mb-10">ระยะเวลาที่สิ่นสุดสอน</label>
																			<input type="text" class="form-control filled-input rounded-input" id="sh_termDateStop" disabled>    
																		</div>
																		<div class="col-sm-2">
																				<label class="control-label mb-10">พ.ศ.</label>
																				<input type="text" class="form-control filled-input rounded-input" id="sh_termDateYear"disabled>
																			</div>
																			<div class="col-sm-2">
																					<label class="control-label mb-10">ปีการศึกษา</label>
																					<input type="text" class="form-control filled-input rounded-input" id="sh_termTeachYear"disabled>
																				</div>
																				<div class="col-sm-2">
																					<label class="control-label mb-10">ภาคเรียน</label>
																					<input type="text" class="form-control filled-input rounded-input" id="sh_termTeachTerm"disabled>
																		</div>
																		<div class="col-sm-2">
																				<label class="control-label mb-20"></label>
																		<a onclick="upShowTerm()"class="btn  btn-primary btn-rounded form-control" formtarget="_blank" class="collapsed"
																		role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false"
																		aria-controls="collapseSix"><i class="fa fa-pencil-square-o"></i><span class="btn-text" >แก้ไข</span></a>

																	</div>
																</div>
															</div>	
														</div>
													</form>
												</div>
											</div>
										</div>
									
									</div>
										<!-- <<<<<< -->
										<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
										<div class="panel panel-default card-view">
												<div class="panel-heading">
														<div class="pull-left">
															<h6 class="panel-title txt-dark"> แก้ไขระยะเวลาที่สอน</h6>
														</div>
														<div class="clearfix"></div>
													</div>
										<div class="panel-wrapper collapse in">
												<div class="panel-body">
													<div class="form-wrap">
														<form class="form-horizontal" action="updatetermAS" method="POST" >
															<div class="form-group mb-0">
																<div class="col-sm-12">
																	<div class="row text-center">
																		
																		<div class="col-sm-2">
																			<label class="control-label mb-10">ระยะเวลาที่เริ่มสอน</label>
																
																			<input  class="form-control filled-input rounded-input" data-mask="99/99/9999" id="up_termDateStart" value="" type="text" name="termDateStart" required> 
																		
															<!-- <div class='input-group date  has-success ' id='mounthstartMonth'>
																	<input type='text' class="form-control" id="up_termDateStart" data-mask="99/99/9999" name="termDateStart" required>
																	<span class="input-group-addon">
																		<span class="fa fa-calendar"></span>
																	</span>
																</div> -->
																		</div>
																		<div class="col-sm-2">
																				<label class="control-label mb-10">ระยะเวลาที่สิ่นสุดสอน</label>
																				<input  class="form-control filled-input rounded-input"  data-mask="99/99/9999"id="up_termDateStop"type="text"value="" name="termDateStop" required>
																			</div>
																			<div class="col-sm-2">
																					<label class="control-label mb-10">พ.ศ.</label>
																					<input type="text" class="form-control filled-input rounded-input" id="up_termDateYear" data-mask="9999"value="" name="termDateYear" required>
																				</div>
																				<div class="col-sm-2">
																						<label class="control-label mb-10">ปีการศึกษา</label>
																						<input type="text" class="form-control filled-input rounded-input" id="up_termTeachYear"data-mask="9999"value="" name="termTeachYear" required>
																					</div>
																					<div class="col-sm-2">
																						<label class="control-label mb-10">ภาคเรียน</label>
																						<!-- <input type="text" class="form-control filled-input rounded-input" value="" name="termTeachTerm" required> -->
																						<select class="form-control filled-input rounded-input"  name="termTeachTerm"required id="up_termTeachTerm">
																								<option value="1">1</option>
																								<option value="2">2</option>
																								<option value="3">3</option>
																							
																							</select>
																			</div>
																			<div class="col-sm-2">
																					<label class="control-label mb-20"></label>
																			<button class="btn  btn-success btn-rounded form-control" type="submit"onclick="inserTerm()"><i class="fa fa-pencil-square-o"></i><span class="btn-text">บันทึก</span></button>
																		</div>
																		
																	</div>
																</div>	
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
										</div>

										<!-- >>>>>>>>>> -->
								</div>
							</div>
							<!-- /Row -->
						<!-- Row -->
				<div class="row">
							<div class="panel panel-default card-view">
								<div class="panel-heading">
									<div class="pull-center">
										<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">+
											เพิ่มวันหยุด</button>
										<div id="myModal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
											<div class="modal-dialog ">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
														<h5 class="modal-title" id="myModalLabel">เพิ่มวันหยุด</h5>
													</div>
													<div class="modal-body">
														<!-- Row -->
													
														
															
																	<div class="form-wrap">
																		<form>
																			<input type="hidden" id="userId" name="userId">
																			<div class="row">
																			
																				
																					<div class="form-group">
																							<div class="col-md-6">
																						<label class="bmd-label-floating mb-10">วัน/เดือน/ปี</label>
																							</div>
																						<div class="col-md-6">
																						<input type="date" name="userid" class="form-control mb-10" id="holidayDay" value="" required="">
																					</div>
																					
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-6">
																					<div class="form-group mb-10">
																						<label class="bmd-label-floating ">รายละเอียดวันหยุด</label>
																						
																					
																					</div>
																				</div>
																				<div class="col-md-6">
																						<input type="text" name="userid" class="form-control mb-10" id="holidayDayofyear" value="" required="">
																					</div>
																			</div>
																			<div class="row">
																				
																					<div class="form-group">
																						<div class="col-sm-6">
																						<label class="control-label ">เพิ่มที่</label>
																						<!-- <input type="text" name="userFname" class="form-control" id="credit" value="" required=""> -->
																					</div>
																					<div class="col-sm-6">
																						<select id="tudsadee" class="form-control " name="termYear">
																								<option value="th">วันหยุดประจำประเทศไทย</option>
																								<option value="bru">วันหยุดประจำมหาลัยราชภัฏบุรีรัมย์</option>
																								
																							</select>
																						</div>
																					
																					</div>
																				
																				</div>
																		

																			<div class="modal-footer ">
																				<button type="submit" class="btn btn-success btn-rounded" aria-hidden="false" onclick="holidayInsert()">Save</button>
																				<button type="button" class="btn btn-default btn-rounded" data-dismiss="modal">Cancel</button>
																			</div>
																		</form>
																	</div>
															
														
													
	
													</div>
	
												</div>
												<!-- /.modal-content -->
											</div>
											<!-- /.modal-dialog -->
										</div>
									</div>
								
								</div>
	
							</div>
						
	
					</div>
					<!-- Row -->
	
					<!-- Row -->
					<div class="row">
						<div class="col-sm-12">
							<div class="panel panel-default card-view">
								<div class="panel-heading">
									<div class="pull-left">
										<h6 class="panel-title txt-dark">ตารางวันหยุดประจำมหาวิทยาลัยราชภัฏบุรีรัมย์</h6>
									</div>
									<div class="pull-right">
										<a href="#" class="pull-left inline-block full-screen">
											<i class="zmdi zmdi-fullscreen"></i>
										</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="panel-wrapper collapse in">
									<div class="panel-body ">
										<div class="table-wrap">
											<div class="table-responsive">
												<table  class="table table-hover display  pb-30" id="holiday_Table">
													<thead>
															<tr>
																	<th>ID</th>
																	<th>วัน/เดือน/ปี</th>
																	<th>ความสำคัญ</th>
																	<th>สถานะ</th>
																	<th>แก้ไข</th>
																</tr>
													</thead>
													<tbody>
														<tr>
														
														
															<!-- <td>
																<span class="label label-primary">done</span>
															</td> -->
															<!-- <td><a href="javascript:void(0)" class="pr-10" data-toggle="tooltip" title="completed" ><i class="zmdi zmdi-check"></i></a> <a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete"></i></a></td> -->
														</tr>
														
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
				
						<!-- Row -->
						<!-- <div class="row">
							<div class="col-sm-12">
								<div class="panel panel-default card-view">
									<div class="panel-heading">
										<div class="pull-left">
											<h6 class="panel-title txt-dark">ตารางวันหยุดประประเทศไทย</h6>
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
													<table class="table display product-overview border-none" id="support_table">
														<thead>
															<tr>
																<th>ID</th>
																<th>วัน/เดือน/ปี</th>
																<th>ความสำคัญ</th>
																<th>Status</th>
															</tr>
														</thead>
													<tbody></tbody>
													</table>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div> -->
						<!-- /Row -->
			
				<!-- Footer -->
				<footer class="footer container-fluid pl-30 pr-30">
					<div class="row">
						<div class="col-sm-12">
							<p>JooK_D_Dook</p>
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
    
	<!-- Data table JavaScript -->
	<script src="../assets_/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
	<script src="../assets_/vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script src="../assets_/vendors/bower_components/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script src="../assets_/dist/js/responsive-datatable-data.js"></script>
	
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

		

	<script src="../assets_/vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
	
	<!-- Slimscroll JavaScript -->
	<script src="../assets_/dist/js/jquery.slimscroll.js"></script>

	<!-- Fancy Dropdown JS -->
	<script src="../assets_/dist/js/dropdown-bootstrap-extended.js"></script>
	
	<!-- Owl JavaScript -->
	<script src="../assets_/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>

	<!-- Switchery JavaScript -->
	<script src="../assets_/vendors/bower_components/switchery/dist/switchery.min.js"></script>
	<script src="../js/keepwordstap1/keepword_main.js"></script>
	</body>
	<script>
	$(document).ready(function () {
	
		

$.ajax({
	type: "GET",
	contentType: "application/json",
	url: "/holidayThFileAll",
	//data: JSON.stringify(id1),
	dataType: 'json',

	success: function (msg) {

		var holiday_Table = "";
		var id=0;
		for (var i = 0; i < msg.length; i++) {
			var st ;
			
			if (msg[i].locationHoli=="th") {
				st="วันหยุดตามปฏิทินไทย";
			} else {
				st="วันหยุดตามมหาลัย";
			}
			id=id+1;
			holiday_Table +=
				'<tr>' +
				'<td>' + id + '</td>' +
				'<td>' + msg[i].holidayDay+"/"+msg[i].holidayMonth+"/"+msg[i].holidayYear + '</td>' +
				//'<td>' + msg[i].credit+'</td>' +
				'<td>' + msg[i].holidayDayofyear + '</td>' +
				'<td>' + st + '</td>' +
				'<td>' +'<td><a href="javascript:void(0)" class="pr-10" data-toggle="tooltip" title="completed" ><i class="zmdi zmdi-check"></i></a> <a href="javascript:void(0)" data-target="#myModal" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete"></i></a></td>' + '</td>' +
			
				// '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
				'</tr>';
		}
		//	if (tfood < tarm) {
		//		tfood += "  ฐานไม่พอ";
		//	}
		$('#holiday_Table tbody').append(holiday_Table);
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
	function holidayInsert() {
		var today = new Date($('#holidayDay').val());
	var dd = today.getDate();
	var mm = today.getMonth()+1; 
	var yyyy = today.getFullYear();
	// alert(today);
var holidayTh = {
	holidayId:(dd+mm+yyyy),
	holidayDay: (dd),
	holidayMonth: (mm),
	holidayYear: (yyyy),
	holidayDayofyear: $('#holidayDayofyear').val(),
	locationHoli: $('#tudsadee').val()
	
	
	};
	$.ajax({
		type: "POST",
		url: "/insertHoliday",
		contentType: "application/json; charset=utf-8",
		data: JSON.stringify(holidayTh),
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
	<script>
		$(document).ready(function () {
		
			$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/showTerm",
			//data: JSON.stringify(id1),
			dataType: 'json',
			success: function (term) {
			
				$('#sh_termDateStart').val(term.termDateStart);
				$('#sh_termDateStop').val(term.termDateStop);
				$('#sh_termDateYear').val(term.termDateYear);
				$('#sh_termTeachYear').val(term.termTeachYear);
				$('#sh_termTeachTerm').val(term.termTeachTerm);

			},
			error: function (e) {
				alert("ERROR: table3", e);
				console.log("ERROR: table3", e);
			}
		});
		});
		function upShowTerm() {
			var id =$('#idterm').val(1);
			$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/showTermByid/"+1,
			//data: JSON.stringify(id1),
			dataType: 'json',
			success: function (term1) {
			
				$('#up_termDateStart').val(term1.termDateStart);
				$('#up_termDateStop').val(term1.termDateStop);
				$('#up_termDateYear').val(term1.termDateYear);
				$('#up_termTeachYear').val(term1.termTeachYear);
				$('#up_termTeachTerm').val(term1.termTeachTerm);
			},
			error: function (e) {
				alert("ERROR: table3", e);
				console.log("ERROR: table3", e);
			}
		});
		}
		// function inserTerm() {
		// 	var id =$('#idterm').val(1);
		// 	$.ajax({
		// 	type: "GET",
		// 	contentType: "application/json",
		// 	url: "/showTermByid/"+1,
		// 	data: JSON.stringify(id1),
		// 	dataType: 'json',
		// 	success: function (term1) {
			
		// 		$('#up_termDateStart').val(term1.termDateStart);
		// 		$('#up_termDateStop').val(term1.termDateStop);
		// 		$('#up_termDateYear').val(term1.termDateYear);
		// 		$('#up_termTeachYear').val(term1.termTeachYear);
		// 		$('#up_termTeachTerm').val(term1.termTeachTerm);
		// 	},
		// 	error: function (e) {
		// 		alert("ERROR: table3", e);
		// 		console.log("ERROR: table3", e);
		// 	}
		// });
		// }

	</script>
	</html>
	