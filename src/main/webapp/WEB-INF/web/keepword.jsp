<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="com.cs.bru.model.User"%>
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
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="icon" href="favicon.ico" type="image/x-icon">
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
						<a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img src="../assets_dist/img/user1.png" alt="user_auth"
							 class="user-auth-img img-circle" /><span class="user-online-status"></span></a>
						<ul class="dropdown-menu user-auth-dropdown" data-dropdown-in="flipInX" data-dropdown-out="flipOutX">
							<li>
								<a href="profile.html"><i class="zmdi zmdi-account"></i><span>Profile</span></a>
							</li>
							<li>
								<a href="#"><i class="zmdi zmdi-card"></i><span>my balance</span></a>
							</li>
							<li>
								<a href="inbox.html"><i class="zmdi zmdi-email"></i><span>Inbox</span></a>
							</li>
							<li>
								<a href="#"><i class="zmdi zmdi-settings"></i><span>Settings</span></a>
							</li>
							<li class="divider"></li>
							<li class="sub-menu show-on-hover">
								<a href="#" class="dropdown-toggle pr-0 level-2-drp"><i class="zmdi zmdi-check text-success"></i> available</a>
								<ul class="dropdown-menu open-left-side">
									<li>
										<a href="#"><i class="zmdi zmdi-check text-success"></i><span>available</span></a>
									</li>
									<li>
										<a href="#"><i class="zmdi zmdi-circle-o text-warning"></i><span>busy</span></a>
									</li>
									<li>
										<a href="#"><i class="zmdi zmdi-minus-circle-outline text-danger"></i><span>offline</span></a>
									</li>
								</ul>
							</li>
							<li class="divider"></li>
							<li>
								<a href="#"><i class="zmdi zmdi-power"></i><span>Log Out</span></a>
							</li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		<!-- Left Sidebar Menu -->
		<div class="fixed-sidebar-left">
			<ul class="nav navbar-nav side-nav nicescroll-bar">
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
					<a class="active" href="./keepword" data-toggle="collapse" data-target="#app_dr">
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
						<h5 class="txt-dark">ลงทะเบียน</h5>
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
						<ol class="breadcrumb">
							<li><a href="./index1">Dashboard</a></li>
							<li class="active"><span>ลงทะเบียนสอน</span></li>
						</ol>
					</div>
					<!-- /Breadcrumb -->
				</div>
				<!-- /Title -->

				<input type="hidden" id="teachId">
				<input type="hidden" id="tebleTeachId">

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
																					<div class="col-md-3 col-xs-12">
																						<div class="form-group">
																							<div class="row">
																								<label class="control-label mr-10 col-sm-12" for="email_inline">ระยะเวลาการสอน</label>
																							</div>
																						</div>
																					</div>
																					<div class="span1"></div>
																					<div class="form-wrap">
																						<div class="col-md-3 col-xs-12">
																							<div class="form-group">
																								<div class='input-group date' id='mounthstartMonth'>
																									<input type='text' class="form-control" id="startMonth" data-mask="99/99/9999">
																									<span class="input-group-addon">
																										<span class="fa fa-calendar"></span>
																									</span>
																								</div>
																								
																							</div>
																						</div>
																					</div>
																					<div class="col-md-1 col-xs-12">
																						<div class="form-group">
																							<div class="row">
																								<label class="control-label mb-10" for="lastName">ถึง</label>
																							</div>
																						</div>

																					</div>
																					<div class="col-md-3 col-xs-12">
																						<div class="form-group">
																							<div class="row">
																								<div class="form-group">
																									<div class='input-group date' id='mounthstopMonth'>
																										<input type='text' class="form-control" id="stopMonth" data-mask="99/99/9999">
																										<span class="input-group-addon">
																											<span class="fa fa-calendar"></span>
																										</span>
																									</div>
																									
																								</div>
																							</div>
																						</div>
																					</div>
																					<div class="col-md-2 col-xs-12">
																						<div class="form-group">
																							<div class="row">
																								<label for="exampleInputuname_3" class="col-sm-3 control-label">พ.ศ.</label>
																								<div class="col-sm-9">
																									<!-- <input type="text" class="form-control" id="teachYear" placeholder=""> -->
																									<select id="teachYear" class="form-control " name="startMonth">
																										
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
																				</div>
																			
																		</div>
																		<div class="form-group">
																			<div class="row">
																				
																				<div class="span1"></div>
																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label for="exampleInputuname_3" class="col-sm-4 control-label">ระดับนักศึกษา</label>
																							<div class="col-sm-8">
																								<!-- <input type="text" class="form-control" id="degreeStuden" placeholder=""> -->
																								<select id="degreeStuden" class="form-control " name="degreeStuden">
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

																								<select id="termYear" class="form-control " name="termYear">

																								
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
																								<select id="teachTerm" class="form-control " name="teachTerm">

																									<option value="1 ">1</option>
																									<option value="2">2</option>
																									<option value="3">3</option>

																								</select>
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

												</div>
											</div>
											<div class="row">


												<div class="container-fluid">

													<div class="row">
														<div class="col-sm-12">
															<div class="panel panel-default card-view">
																<div class="panel-heading">
																	<div class="pull-left">
																		<h5 class="control-label mb-10" for="exampleCountry">1. เพิ่มรายวิชา</h5>
																	</div>
																	<div class="clearfix"></div>
																</div>
																<div class="panel-wrapper collapse in">
																	<div class="panel-body">

																		<div class="form-group">
																			<div class="row">
																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label for="exampleInputuname_3" class="col-sm-3 control-label">รหัสวิชา</label>
																							<div class="col-sm-9">
																								<div class="input-group">
																									<input type="text" class="form-control" id="subjectId" placeholder="">
																									<span class="input-group-btn">
																										<button type="button" class="btn btn-success btn-anim" onclick="subjectSec()"><i class="icon-rocket"></i><span
																											 class="btn-text">ค้นหา</span></button>
																									</span>
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div class="span1"></div>
																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label for="exampleInputuname_3" class="col-sm-3 control-label">ชื่อวิชา</label>
																							<div class="col-sm-9">
																								<input type="text" class="form-control" id="subjectName" placeholder="" disabled>
																							</div>
																						</div>
																					</div>
																				</div>

																				<div class="span1"></div>
																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label for="exampleInputuname_3" class="col-sm-4 control-label">หน่วยกิต</label>
																							<div class="col-sm-8">
																								<input type="text" class="form-control" id="creditsum" placeholder="" disabled>

																							</div>
																						</div>
																					</div>
																				</div>

																			</div>

																		</div>


																		<div class="form-group">
																			<div class="row">

																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label class="control-label mb-10 col-sm-6" for=" ">ภาคทฤษฎี</label>
																							<div class="col-sm-6">
																								<input type="number" name="tudsadee" class="form-control " value="" id="tudsadee" disabled>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div class="span1"></div>
																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label class="control-label mb-10 col-sm-6" for="">ภาคปัฏิบัติ</label>
																							<div class="col-sm-6">
																								<input type="number" name="tudsadee" class="form-control  " value="" id="prtibad" disabled>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div class="span1"></div>
																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label for="exampleInputuname_3" class="col-sm-4 control-label">section</label>
																							<div class="col-sm-8">
																								<!-- <input type="number" class="form-control" id="section" placeholder=""> -->
																								<select id="section" class="form-control " name="section">

																									<option value="1 ">1</option>
																									<option value="2">2</option>
																									<option value="3">3</option>
																									<option value="4">4</option>


																								</select>

																							</div>
																						</div>
																					</div>
																				</div>

																			</div>

																		</div>

																		<div class="form-group">
																			<div class="row">
																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label class="control-label mb-10 col-sm-6" for="firstName">เวลาที่เริ่มการสอน</label>
																							<div class="col-sm-6">
																								<input type="time" class="form-control " id="startTime">
																							</div>
																						</div>
																					</div>
																				</div>
																				<div class="span1"></div>
																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label class="control-label mb-10 col-sm-6" for="lastName">เวลาที่สิ้นสุดการสอน</label>
																							<div class="col-sm-6">
																								<input type="time" class="form-control " id="stopTime">
																							</div>
																						</div>
																					</div>
																				</div>
																				<input type="hidden" id="data_hour"/>
																				<div class="span1"></div>
																				<div class="col-md-4 col-xs-12">
																					<div class="form-group">
																						<div class="row">
																							<label for="exampleInputuname_3" class="col-sm-4 control-label">รวมเวลาสอน</label>
																							<div class="col-sm-8">
																								<input type="text" name="tudsadee" class="form-control  " value="" id="data_time3" disabled
																								 placeholder="รวมเวลาสอน">
																							</div>
																						</div>
																					</div>
																				</div>


																			</div>
																			
																		</div>
																	
																				<div class="span1"></div>
																				<div class="form-group">
																					<div class="row">
																						<div class="col-md-4 col-xs-12">
																							<div class="form-group">
																								<div class="row">
																									<label class="control-label mb-10 col-sm-4" for="">ห้องเรียน</label>
																									<div class="col-sm-8">
																										<input type="text" name="room" class="form-control " value="" id="room">
																									</div>
	
																								</div>
																							</div>
																						</div>
	
	
	
	
																						<div class="col-md-4 col-xs-12">
																							<div class="form-group">
																								<div class="row">
																									<label for="exampleInputuname_3" class="col-sm-4 control-label">จำนวนนักศึกษา</label>
																									<div class="col-sm-8">
																										<input type="number" class="form-control" id="studenNumber" placeholder="">
																									</div>
																								</div>
																							</div>
																						</div>
																						<div class="col-md-4 col-xs-12">
																							<div class="form-group">
																								<div class="row">
																									<label for="exampleInputuname_3" class="col-sm-4 control-label">วัน</label>
																									<div class="col-sm-8">
																										<!-- <input type="text" class="form-control" id="teachWeek" placeholder=""> -->
																										<select id="teachWeek" class="form-control " name="teachWeek">
																											<option value="">เลือกวัน</option>
																											<option value="1">วันจันทร์</option>
																											<option value="2">วันอังคาร</option>
																											<option value="3">วันพุธ</option>
																											<option value="4">วันพฤหัสบดี</option>
																											<option value="5">วันศุกร์</option>
																											<option value="6">วันเสาร์</option>
																											<option value="7">วันอาทิตย์</option>
		
		
																										</select>
																									</div>
																								</div>
																							</div>
																						</div>
																					</div>
																				
																		</div>
																		<button type="submit" class="btn btn-primary pull-right" onclick="insertTeachingfrom()">
																			<h4>เพิ่มวิชาสอน</h4>
																		</button>
																	</div>
																
																</div>
															
															</div>
														
	
														</div>
													
													</div>
												

												</div>

											</div>
										

											<%@include file="./keepwordstep/tableteach2.jsp" %>
											<!-- <div class="row">
												<div class="col-sm-12">
													<div class="panel panel-default card-view">
														<div class="panel-heading">
															<div class="pull-left">
																<h6 class="panel-title txt-dark">jsgrid Table</h6>
															</div>
															<div class="clearfix"></div>
														</div>
														<div class="panel-wrapper collapse in">
															<div class="panel-body">
																<div class="table-wrap">
																	<div id="jsgrid_1"></div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div> -->
										
										</fieldset>

										<!-- <h3><span class="number"><i class="icon-bag txt-black"></i></span><span class="head-font capitalize-font">เลือกวิชาใช้เบิก</span></h3> -->
										<fieldset>
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
																	<table id=" ">
																		<thead class="text-warning">
																			<tr>
																				<th rowspan="Row">รหัสวิชา</th>
																				<th rowspan="Row">ชื่อวิชา</th>
																				<th rowspan="Row">จำนวนชั่วโมง</th>
																				<th rowspan="Row">จำนวนเงิน</th>
																				<th rowspan="Row">รวมเงิน</th>
																				<th rowspan="Row">หมายเหตู</th>
																			</tr>

																		</thead>
																		<tbody>

																		</tbody>
																		<!-- <tr>
																								<th rowspan="2">รหัสวิชา</th>
																								<th rowspan="2">ชื่อวิชา</th>
																								<th rowspan="2">จำนวนชั่วโมง</th>
																								<th rowspan="2">จำนวนเงิน</th>
																								<th rowspan="2">รวมเงิน</th>
																								<th rowspan="2">หมายเหตู</th>
																						</tr> -->
																	</table>
																</div>
															</div>
														</div>

													</div>
												</div>
											</div>
											<!-- Row -->

											<!-- /Row -->

										</fieldset>

										<h3><span class="number"><i class="icon-credit-card txt-black"></i></span><span class="head-font capitalize-font">แก้ใข้เวลาสอน</span></h3>
									
										<fieldset>
											<!--CREDIT CART PAYMENT-->
										
										
												
								
											<!--CREDIT CART PAYMENT END-->
										</fieldset>
								
										<!-- <h3><span class="number"><i class="icon-basket-loaded txt-black"></i></span><span class="head-font capitalize-font">
												บันทึก/พิมพ์</span></h3> -->
										<fieldset>
										
										</fieldset>
									<!-- </form> -->
									<%-- 		 <%@include file="./keepwordstep/tebletaech1.jsp" %> --%>
							<!-- Row -->
							<!-- <div class="clearfix"></div>
							<div class="container-fluid">
								<div class="row">
									<div class="col-md-12">
										<div class="panel panel-default card-view">
											<div class="panel-heading">
												<div class="pull-left">
													<h6 class="panel-title txt-dark">Date time picker</h6>
												</div>
												<div class="clearfix"></div>
											</div>
											<div class="panel-wrapper collapse in">
												<div class="panel-body">
													<div class="form-wrap">
														<form>
															<div class="row">
																<div class="col-sm-6">
																	<div class="form-group">
																		<label class="control-label mb-10 text-left">date time pick</label>
																		<div class='input-group date' id='datetimepicker5'>
																			<input type='text' class="form-control">
																			<span class="input-group-addon">
																				<span class="fa fa-calendar"></span>
																			</span>
																		</div>
																	</div>
																</div>
																<div class="col-sm-6">
																	<div class="form-group">
																		<label class="control-label mb-10 text-left">time pick</label>
																		<div class='input-group date' id='datetimepicker2'>
																			<input type='text' class="form-control" />
																			<span class="input-group-addon">
																				<span class="fa fa-clock-o"></span>
																			</span>
																		</div>
																	</div>
																</div>
																<div class="col-sm-6">
																	<label class="control-label mb-10 text-left">inline date pick</label>
																	<div class="form-group">
																		<div class='input-group date' id='datetimepicker3'></div>
																	</div>
																</div>
																<div class="col-sm-6">
																	<label class="control-label mb-10 text-left">inline date time pick</label>
																	<div class="form-group">
																		<div class='input-group date' id='datetimepicker4'></div>
																	</div>
																</div>
															</div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div> -->
							<!-- /Row -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /Row -->

			</div>

		</div>

	</div>

	<!---------------------------------------- JavaScript ------------------------------------>
	<!-- Bootstrap Colorpicker CSS -->
	<link href="../assets_/vendors/bower_components/mjolnic-bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css"
	 rel="stylesheet" type="text/css" />

	<!-- Bootstrap Datetimepicker CSS -->
	<link href="../assets_/vendors/bower_components/eonasdan-bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css"
	 rel="stylesheet" type="text/css" />

	<!-- Bootstrap Daterangepicker CSS -->
	<link href="../assets_/vendors/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" type="text/css" />
	<!-- -------------- -->

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

	<!-- <script src="../assets_/dist/js/form-picker-data.js"></script> -->

	<!-- <script src="../js/keepword.js"></script> -->
	<script src="../js/keepwordstap1/insertsubject.js"> </script>
	<script src="../js/keepwordstap1/searchsubject.js"></script>
	<script src="../js/keepwordstap1/stepfrom.js"></script>
	<!-- <script src="../js/keepwordstap1/time-teach.js"></script> -->
	<script src="../js/keepwordstap1/keepword_main.js"></script>
	<!-- <script src="../js/keepwordstap1/tebleteach.js"></script> -->
	<!-- <script src="../js/keepwordstap2/updateteachtable.js"></script> -->


</body>

<script type="text/javascript">
	var time_a = $('#startTime').val();
	var time_b = $('#stopTime').val();
	//    $("#data_time3").val("เวลาสอน");

	$(function () {
		$("#startTime").val();
		$("#stopTime").val();

		$("#startTime").keyup(function () {
			time2diff($("#startTime").val(), $("#stopTime").val());
		});
		$("#stopTime").keyup(function () {
			time2diff($("#startTime").val(), $("#stopTime").val());
		});
	});
</script>

<script type="text/javascript">
	function time2diff(time1, time2) {

		var ted = parseInt($('#tudsadee').val());
		var ptb = parseInt($('#prtibad').val());

		var strTime2 = ("2014-01-01 " + time2 + ":00");
		var strTime1 = ("2014-01-01 " + time1 + ":00");

		var myDate2 = new Date(strTime2);
		var timeStamp2 = myDate2.getTime();

		var myDate1 = new Date(strTime1);
		var timeStamp1 = myDate1.getTime();

		var timeDiff = (timeStamp2 - timeStamp1) / 1000;
		var minutesDiff = timeDiff / 60;
		var minutesRemain = minutesDiff % 60;
		var hoursDiff = (minutesDiff - minutesRemain) / 60;

		var sum = ted + ptb;
		var mm = (ptb == hoursDiff);
		//  $("#data_time3").val(hoursDiff+"ชั่วโมง"+minutesRemain+"นาที");
		$("#data_hour").val(hoursDiff+":"+minutesRemain);

		if (sum <= hoursDiff) {
			nn = hoursDiff + "ชั่วโมง" + minutesRemain + "นาที"

		} else {
			nn = "เวลาไม่พอ";

			// }else if(sum ){
			// 	nn="เวลาเกิน";
		}

		$("#data_time3").val(nn);
		// $("#data_4").val(sum==hoursDiff);

		console.log(hoursDiff);
		console.log(minutesRemain);

	}
	time2diff(time_b, time_b);
</script>

</html>