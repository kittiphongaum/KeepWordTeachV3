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


				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
						
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<!-- <form id="example-form-jook"> -->
										<!-- <h3><span class="number"><i class="icon-user-following txt-black"></i></span><span class="head-font capitalize-font">เพิ่มข้อมูลรายวิชา</span></h3> -->
										<div class="col-sm-12">
												<div class="panel panel-default card-view">
													<div class="panel-heading">
														<div class="pull-left">
															<h6 class="panel-title txt-dark">ระยะเวลาที่สอน (ปีการศึกษา-ภาคเรียน)</h6>
														</div>
														
														<div class="clearfix"></div>
													</div>
													<div id="term_tb_bean"></div>
													 <!-- <div class="panel-wrapper collapse in">
														<div class="panel-body">
															<div class="form-wrap">
																<form class="form-horizontal">
																	<div class="form-group mb-0">
																		<div class="col-sm-12">
																			<div class="row text-center">
																				
																				<div class="col-sm-2">
																					<label class="control-label mb-10">ระยะเวลาที่เริ่มสอน</label>
																					<input class="form-control filled-input rounded-input" id="startMonth" value="" disabled > 
																				</div>
																				<div class="col-sm-2">
																						<label class="control-label mb-10">ระยะเวลาที่สิ่นสุดสอน</label>
																						<input type="text" class="form-control filled-input rounded-input" id="stopMonth" value="" disabled>    
																					</div>
																					<div class="col-sm-2">
																							<label class="control-label mb-10">พ.ศ.</label>
																							<input type="text" class="form-control filled-input rounded-input" id="teachYear"value=""  disabled>
																						</div>
																						<div class="col-sm-2">
																								<label class="control-label mb-10">ปีการศึกษา</label>
																								<input type="text" class="form-control filled-input rounded-input" id="degreeStuden"value=""disabled>
																							</div>
																							<div class="col-sm-2">
																								<label class="control-label mb-10">ภาคเรียน</label>
																								<input type="text" class="form-control filled-input rounded-input" id="teachTerm"value=""disabled>
																					</div>
																					<div class="col-sm-2">
																							<label class="control-label mb-10">นักศึกษาระดับ</label>

																							<select class="form-control filled-input rounded-input"  name="termTeachTerm"required id="degreeStuden">
																									<option value="1">ปริญญาตรี</option>
																									<option value="2">ปริญญาโท</option>
																									<option value="3">ปริญญาเอก</option>
																								
																								</select>
																				</div>
																			</div>
																		</div>	
																	</div>
																</form>
															</div>
														</div>
													</div>  -->
												</div>
										</div>
									
											<div class="row">
												<input type="hidden" id="teachId">
												<input type="hidden" id="tebleTeachId">

												<div class="container-fluid">
													<div class="row">
														<div class="col-sm-12">
															<!-- <div class="panel panel-default card-view">
																	
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
																								<label class="control-label mb-10" for="lastName" required>ถึง</label>
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
																							
																								<select id="teachTerm" class="form-control " name="teachTerm">

																									<option value="1">1</option>
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
															
															</div> -->
														</div>

													</div>

												</div>
											</div>
											
												<div class="container-fluid">

													<div class="row">
														<div class="col-sm-12">
															<div class="panel panel-default card-view">
																	<div class="panel-heading">
																			<div class="pull-left">
																				<h6 class="panel-title txt-dark">บันทึกรายละเอียด วิชา</h6>
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
																									<input type="text" class="form-control" id="subjectId" placeholder="" required>
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
																								<select id="section" class="form-control " name="section" required>

																									<option value="1">1</option>
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
																								<input type="time" class="form-control " id="startTime" required>
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
																								<input type="time" class="form-control " id="stopTime" required>
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
																							<div class="form-group has-feedback ">
																								<div class="row">
																									<label class="control-label mb-10 col-sm-4" for="">ห้องเรียน</label>
																									<div class="col-sm-8 input-group">
																										<input type="text" name="room" class="form-control"value=""pattern="0-9" id="room" required >
																										<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
																									</div>
	
																								</div>
																							</div>
																						</div>
	
	
	
	
																						<div class="col-md-4 col-xs-12">
																							<div class="form-group">
																								<div class="row">
																									<label for="exampleInputuname_3" class="col-sm-4 control-label">จำนวนนักศึกษา</label>
																									<div class="col-sm-8">
																										<input type="number" class="form-control" id="studenNumber" placeholder="" required>
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
																										<select id="teachWeek" class="form-control " name="teachWeek" required>
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
																				<span class="btn-text">เพิ่มวิชาสอน</span>
																		</button>
																	</div>
																
																</div>
															
															</div>
														
	
														</div>
													
													</div>
												

												</div>

	<!-- Row -->
	<!-- <div class="row">
			<div class="col-md-12">
				<div class="panel panel-default card-view">
					<div class="panel-heading">
						<div class="pull-left">
							<h6 class="panel-title txt-dark">บันทึกแบบการเบิก</h6>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="panel-wrapper collapse in">
						<div class="panel-body">
							
							<div class="row">
								<div class="col-md-12">
									<div class="form-wrap">
										<form data-toggle="validator" role="form">
											
											
												
											<div class="form-group">
												<label for="inputName" class="control-label mb-10">Name</label>
												<input type="text" class="form-control" id="inputName" placeholder="Cina Saffary" required>
											</div>
											<div class="form-group has-feedback">
												<label for="inputTwitter" class="control-label mb-10">Twitter</label>
												<div class="input-group">
													<span class="input-group-addon">@</span>
													<input type="text" pattern="^[_A-z0-9]{1,}$" maxlength="15" class="form-control" id="inputTwitter" placeholder="1000hz" required>
													<span class="glyphicon form-control-feedback" aria-hidden="true"></span>
												</div>
												
												<div class="help-block with-errors">Hey look, this one has feedback icons!</div>
											</div>
											<div class="form-group">
												<label for="inputEmail" class="control-label mb-10">Email</label>
												<input type="email" class="form-control" id="inputEmail" placeholder="Email" data-error="Bruh, that email address is invalid" required>
												<div class="help-block with-errors"></div>
											</div>
											<div class="form-group">
												<label for="inputPassword" class="control-label mb-10">Password</label>
												<div class="row">
													<div class="form-group col-sm-12">
														<input type="password" data-minlength="6" class="form-control" id="inputPassword" placeholder="Password" required>
														<div class="help-block">Minimum of 6 characters</div>
													</div>
													<div class="form-group col-sm-12">
														<input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" data-match-error="Whoops, these don't match" placeholder="Confirm" required>
														<div class="help-block with-errors"></div>
													</div>
												</div>
											</div>
											<div class="form-group">
												<div class="radio">
												  <input type="radio" name="underwear" id="box" required>
												  <label for="box"> Boxers </label>
												</div>
												<div class="radio">
												  <input type="radio" name="underwear" id="bri" required>
												  <label for="bri"> Briefs </label>
												</div>
											</div>
											<div class="form-group">
												<div class="checkbox">
													<input type="checkbox" id="terms" data-error="Before you check yourself" required>
													<label for="terms" >Check yourself</label>
													<div class="help-block with-errors"></div>
												</div>
											</div>
											<div class="form-group mb-0">
												<button type="submit" class="btn btn-success btn-anim"><i class="icon-rocket"></i><span class="btn-text">submit</span></button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
		<!-- /Row -->
											<%@include file="./keepwordstep/tableteach2.jsp" %>

									<%-- 		 <%@include file="./keepwordstep/tebletaech1.jsp" %> --%>
						
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
	<script src="../assets_/vendors/bower_components/bootstrap-validator/dist/validator.min.js"></script>
		
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
<script>

	//insert
	function insertTeachingfrom() {	
	

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
			tudsadee: $('#tudsadee').val(),
			prtibad: $('#prtibad').val()
		}
		}
		
		$.ajax({
			type: "POST",
			url: "/insertTableTeaching",
			contentType:"application/json; charset=utf-8",
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

		$(document).ready(function () {
		
			$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/showTerm",
			//data: JSON.stringify(id1),
			dataType: 'json',
			success: function (term) {
			
				// $('#sh_termDateStart').val(term.termDateStart);
				// $('#sh_termDateStop').val(term.termDateStop);
				// $('#sh_termDateYear').val(term.termDateYear);
				// $('#sh_termTeachYear').val(term.termTeachYear);
				// $('#sh_termTeachTerm').val(term.termTeachTerm);
			
			var term='<div class="panel-wrapper collapse in">'+
						'<div class="panel-body">'+
							'<div class="form-wrap">'+
								'<form class="form-horizontal">'+
								'<div class="form-group mb-0">'+
										'<div class="col-sm-12">'+
											'<div class="row text-center">'+
																
													'<div class="col-sm-2">'+
															'<label class="control-label mb-10">ระยะเวลาที่เริ่มสอน</label>'+
															'<input class="form-control filled-input rounded-input" id="startMonth" value='+term.termDateStart+' disabled > '+
															'</div>'+
														'<div class="col-sm-2">'+
															'<label class="control-label mb-10">ระยะเวลาที่สิ่นสุดสอน</label>'+
																'<input type="text" class="form-control filled-input rounded-input" id="stopMonth" value="'+term.termDateStop+'" disabled> '+
																	'</div>'+
																	'<div class="col-sm-2">'+
																	'<label class="control-label mb-10">พ.ศ.</label>'+
																		'<input type="text" class="form-control filled-input rounded-input" id="teachYear"value="'+term.termTeachYear+'" disabled>'+
																'</div>'+
																		'<div class="col-sm-2">'+
																						'<label class="control-label mb-10">ปีการศึกษา</label>'+
																								'<input type="text" class="form-control filled-input rounded-input" id="termYear"value='+term.termTeachYear+' disabled>'+
																							'</div>'+
																							'<div class="col-sm-2">'+
																								'<label class="control-label mb-10">ภาคเรียน</label>'+
																								'<input type="text" class="form-control filled-input rounded-input" id="teachTerm"value='+term.termTeachTerm+' disabled>'+
																					'</div>'+
																					'<div class="col-sm-2">'+
																							'<label class="control-label mb-10">นักศึกษาระดับ</label>'+
																						
																							'<select class="form-control filled-input rounded-input"  name="termTeachTerm"required id="degreeStuden">'+
																									'<option value="1">ปริญญาตรี</option>'+
																									'<option value="2">ปริญญาโท</option>'+
																									'<option value="3">ปริญญาเอก</option>'+
																								
																								'</select>'+
																				'</div>'+
																			'</div>'+
																		'</div>	'+
																	'</div>'+
																'</form>'+
															'</div>'+
														'</div>'+
													'</div>';

									$('#term_tb_bean').append(term)

			},
			error: function (e) {
				alert("ERROR: table3", e);
				console.log("ERROR: table3", e);
			}
		});
		});
</script>
</html>