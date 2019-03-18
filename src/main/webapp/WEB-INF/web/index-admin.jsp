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
	<!-- Custom Fonts -->
	<link href="../assets_/dist/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<!-- Tablesaw table CSS -->
	<link href="../assets_/vendors/bower_components/filament-tablesaw/dist/tablesaw.css" rel="stylesheet" type="text/css" />

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
						<a href="index1">
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
						<a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img src="../assets_/dist/img/user1.png" alt="user_auth"
							 class="user-auth-img img-circle" /><span class="user-online-status"></span></a>
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
					<a class="active" href="./index-admin" data-toggle="collapse" data-target="#dashboard_dr">
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
				<!-- <li>
					<a href="./holiday-add" data-toggle="collapse" data-target="#app_dr">
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
				<!-- <div class="row">
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						   <div class="panel panel-default card-view panel-refresh">
									<div class="refresh-container">
										<div class="la-anim-1"></div>
									</div>
									<div class="panel-heading">
										<div class="pull-left">
											<h6 class="panel-title txt-dark">Pending Items</h6>
										</div>
										<div class="pull-right">
											<a href="#" class="pull-left inline-block refresh mr-15">
												<i class="zmdi zmdi-replay"></i>
											</a>
											<div class="pull-left inline-block dropdown">
												<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></a>
												<ul class="dropdown-menu bullet dropdown-menu-right"  role="menu">
													<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>option 1</a></li>
													<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>option 2</a></li>
													<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>option 3</a></li>
												</ul>
											</div>
										</div>
										<div class="clearfix"></div>
									</div>
								<div class="panel-wrapper collapse in">
									<div class="panel-body">
										<div id="e_chart_1" class="" style="height:242px;"></div>
										<div class="label-chatrs mt-15">
											<div class="mb-5">
												<span class="clabels inline-block bg-purple mr-5"></span>
												<span class="clabels-text font-12 inline-block txt-dark capitalize-font">Actions pending</span>
											</div>
											<div class="mb-5">
												<span class="clabels inline-block bg-skyblue mr-5"></span>
												<span class="clabels-text font-12 inline-block txt-dark capitalize-font">decision pending</span>
											</div>
											<div class="">
												<span class="clabels inline-block bg-blue mr-5"></span>
												<span class="clabels-text font-12 inline-block txt-dark capitalize-font">chage request pending</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
	
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
							<div class="panel panel-default card-view panel-refresh">
								<div class="refresh-container">
									<div class="la-anim-1"></div>
								</div>
								<div class="panel-heading">
									<div class="pull-left">
										<h6 class="panel-title txt-dark">Task Status</h6>
									</div>
									<div class="pull-right">
										<a href="#" class="pull-left inline-block refresh">
											<i class="zmdi zmdi-replay"></i>
										</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="panel-wrapper collapse in">
									<div class="panel-body">
										<div id="e_chart_2" class="" style="height:330px;"></div>
									</div>
								</div>
							</div>
						</div>
	
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						   <div class="panel panel-default card-view panel-refresh">
									<div class="refresh-container">
										<div class="la-anim-1"></div>
									</div>
									<div class="panel-heading">
										<div class="pull-left">
											<h6 class="panel-title txt-dark">Budget</h6>
										</div>
										<div class="pull-right">
											<a href="#" class="pull-left inline-block refresh">
												<i class="zmdi zmdi-replay"></i>
											</a>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="panel-wrapper collapse in">
										<div class="panel-body">
											<div id="e_chart_3" class="" style="height:294px;"></div>
											<div class="label-chatrs mt-15">
												<div class="inline-block mr-15">
													<span class="clabels inline-block bg-pink mr-5"></span>
													<span class="clabels-text font-12 inline-block txt-dark capitalize-font">planned</span>
												</div>
												<div class="inline-block">
													<span class="clabels inline-block bg-blue mr-5"></span>
													<span class="clabels-text font-12 inline-block txt-dark capitalize-font">actual</span>
												</div>
											</div>
										</div>
									</div>
							</div>
						</div>
	
						<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
						   <div class="panel panel-default card-view panel-refresh">
									<div class="refresh-container">
										<div class="la-anim-1"></div>
									</div>
									<div class="panel-heading">
										<div class="pull-left">
											<h6 class="panel-title txt-dark">Risks</h6>
										</div>
										<div class="pull-right">
											<a href="#" class="pull-left inline-block refresh">
												<i class="zmdi zmdi-replay"></i>
											</a>
										</div>
										<div class="clearfix"></div>
									</div>
								<div class="panel-wrapper collapse in">
									<div class="panel-body">
										<div id="e_chart_4" class="" style="height:330px;"></div>
									</div>
								</div>
							</div>
						</div>
					</div> -->
				<!-- /Row -->

				<!-- Row -->

				<!-- Row -->

				<!-- Row -->

				<!-- /Row -->
				<!-- Row -->
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="panel panel-primary contact-card card-view">
							<div class="panel-heading">
								<div class="pull-left">

									<div class="pull-left user-detail-wrap">
										<span class="block card-user-name">
											<h4>คณะครุศาสตร์</h4>
										</span>
										<span class="block card-user-desn">

										</span>
									</div>
								</div>
								<!-- <div class="pull-right">
											<div class="pull-left inline-block dropdown">
												<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-edit txt-light"></i></a>
												<ul class="dropdown-menu bullet dropdown-menu-right"  role="menu">
													<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>แก้ไขคณะวิชา</a></li>
													<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>แก้ไขสาขาวิชา</a></li>
												
												</ul>
											</div>
										</div> -->
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">

										<table class="tablesaw table-bordered table-hover table" data-tablesaw-mode="swipe" id="table1">
											<thead>
												<tr>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">สาาขาวิชา</th>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">หัวหน้าสาขา</th>
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">คณะบดี</th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1"><abbr title="แก้ไข หัวหน้าสาขา">แก้ไข</abbr></th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>  -->
												</tr>
											</thead>
											<tbody>

											</tbody>
										</table>

									</div>
									<hr class="light-grey-hr mt-20 mb-20" />
									<div class="emp-detail pl-15 pr-15">
										<div class="mb-5">
											<span class="inline-block capitalize-font mr-5">คณะบดี</span>
											<span class="txt-dark" id="table1teacher"></span>
										</div>
										<!-- <div>
														<span class="inline-block capitalize-font mr-5">salery:</span>
														<span class="txt-dark">$14000</span>
													</div>  -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="panel panel-info contact-card card-view">
							<div class="panel-heading">
								<div class="pull-left">

									<div class="pull-left user-detail-wrap">
										<span class="block card-user-name">
											<h4>คณะเทคโนโลยีอุตสาหกรรม</h4>
										</span>
										<span class="block card-user-desn">

										</span>
									</div>
								</div>
							
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">

										<table class="tablesaw table-bordered table-hover table" data-tablesaw-mode="swipe" id="table2">
											<thead>
												<tr>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">สาาขาวิชา</th>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">หัวหน้าสาขา</th>
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">คณะบดี</th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1"><abbr title="Rotten Tomato Rating">แก้ไข</abbr></th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>  -->
												</tr>
											</thead>
											<tbody>

											</tbody>
										</table>

									</div>
									<hr class="light-grey-hr mt-20 mb-20" />
									<div class="emp-detail pl-15 pr-15">
										<div class="mb-5">
											<span class="inline-block capitalize-font mr-5">คณะบดี</span>
											<span class="txt-dark"id="table2teacher"></span>
										</div>
										<!-- <div>
															<span class="inline-block capitalize-font mr-5">salery:</span>
															<span class="txt-dark">$14000</span>
														</div>  -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="panel panel-success contact-card card-view">
							<div class="panel-heading">
								<div class="pull-left">

									<div class="pull-left user-detail-wrap">
										<span class="block card-user-name">
											<h4>คณะเทคโนโลยีการเกษตร</h4>
										</span>
										<span class="block card-user-desn">

										</span>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">

										<table class="tablesaw table-bordered table-hover table" data-tablesaw-mode="swipe" id="table3">
											<thead>
												<tr>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">สาาขาวิชา</th>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">หัวหน้าสาขา</th>
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">คณะบดี</th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1"><abbr title="Rotten Tomato Rating">แก้ไข</abbr></th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>  -->
												</tr>
											</thead>
											<tbody>


											</tbody>
										</table>

									</div>
									<hr class="light-grey-hr mt-20 mb-20" />
									<div class="emp-detail pl-15 pr-15">
										<div class="mb-5">
											<span class="inline-block capitalize-font mr-5">คณะบดี</span>
											<span class="txt-dark" id="table3teacher"></span>
										</div>
										<!-- <div>
																<span class="inline-block capitalize-font mr-5">salery:</span>
																<span class="txt-dark">$14000</span>
															</div>  -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="panel panel-danger contact-card card-view">
							<div class="panel-heading">
								<div class="pull-left">

									<div class="pull-left user-detail-wrap">
										<span class="block card-user-name">
											<h4>คณะมนุษยศาสตร์และสังคมศาสตร์</h4>
										</span>
										<span class="block card-user-desn">

										</span>
									</div>
								</div>
							
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">

										<table class="tablesaw table-bordered table-hover table" data-tablesaw-mode="swipe" id="table4">
											<thead>
												<tr>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">สาาขาวิชา</th>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">หัวหน้าสาขา</th>
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">คณะบดี</th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1"><abbr title="Rotten Tomato Rating">แก้ไข</abbr></th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>  -->
												</tr>
											</thead>
											<tbody>
											

											</tbody>
										</table>

									</div>
									<hr class="light-grey-hr mt-20 mb-20" />
									<div class="emp-detail pl-15 pr-15">
										<div class="mb-5">
											<span class="inline-block capitalize-font mr-5">คณะบดี</span>
											<span class="txt-dark"id="table4teacher"></span>
										</div>
										<!-- <div>
																	<span class="inline-block capitalize-font mr-5">salery:</span>
																	<span class="txt-dark">$14000</span>
																</div>  -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="panel panel-warning contact-card card-view">
							<div class="panel-heading">
								<div class="pull-left">

									<div class="pull-left user-detail-wrap">
										<span class="block card-user-name">
											<h4>คณะวิทยาศาสตร์</h4>
										</span>
										<span class="block card-user-desn">

										</span>
									</div>
								</div>
						
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">

										<table class="tablesaw table-bordered table-hover table" data-tablesaw-mode="swipe"id="table5">
											<thead>
												<tr>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">สาาขาวิชา</th>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">หัวหน้าสาขา</th>
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">คณะบดี</th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1"><abbr title="Rotten Tomato Rating">แก้ไข</abbr></th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>  -->
												</tr>
											</thead>
											<tbody>

											</tbody>
										</table>

									</div>
									<hr class="light-grey-hr mt-20 mb-20" />
									<div class="emp-detail pl-15 pr-15">
										<div class="mb-5">
											<span class="inline-block capitalize-font mr-5">คณะบดี</span>
											<span class="txt-dark"id="table5teacher"></span>
										</div>
								
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="panel panel-info contact-card card-view">
							<div class="panel-heading">
								<div class="pull-left">

									<div class="pull-left user-detail-wrap">
										<span class="block card-user-name">
											<h4>คณะวิทยาการจัดการ</h4>
										</span>
										<span class="block card-user-desn">

										</span>
									</div>
								</div>
							
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">

										<table class="tablesaw table-bordered table-hover table" data-tablesaw-mode="swipe"id="table6">
											<thead>
												<tr>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">สาาขาวิชา</th>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">หัวหน้าสาขา</th>
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">คณะบดี</th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1"><abbr title="Rotten Tomato Rating">แก้ไข</abbr></th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>  -->
												</tr>
											</thead>
											<tbody>
												

											</tbody>
										</table>

									</div>
									<hr class="light-grey-hr mt-20 mb-20" />
									<div class="emp-detail pl-15 pr-15">
										<div class="mb-5">
											<span class="inline-block capitalize-font mr-5">คณะบดี</span>
											<span class="txt-dark" id="table6teacher"></span>
										</div>
								
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="panel panel-primary contact-card card-view">
							<div class="panel-heading">
								<div class="pull-left">

									<div class="pull-left user-detail-wrap">
										<span class="block card-user-name">
											<h4>คณะพยาบาลศาสตร์</h4>
										</span>
										<span class="block card-user-desn">

										</span>
									</div>
								</div>
							
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">

										<table class="tablesaw table-bordered table-hover table" data-tablesaw-mode="swipe"id="table7">
											<thead>
												<tr>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="persist">สาาขาวิชา</th>
													<th scope="col" data-tablesaw-sortable-col data-tablesaw-sortable-default-col data-tablesaw-priority="3">หัวหน้าสาขา</th>
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="2">คณะบดี</th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="1"><abbr title="Rotten Tomato Rating">แก้ไข</abbr></th> -->
													<!-- <th scope="col" data-tablesaw-sortable-col data-tablesaw-priority="4">Gross</th>  -->
												</tr>
											</thead>
											<tbody>
											

											</tbody>
										</table>

									</div>
									<hr class="light-grey-hr mt-20 mb-20" />
									<div class="emp-detail pl-15 pr-15">
										<div class="mb-5">
											<span class="inline-block capitalize-font mr-5">คณะบดี</span>
											<span class="txt-dark" id="table7teacher"></span>
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
								<h5 class="modal-title" id="exampleModalLabel1">แก้ไข หัวหน้าสาขา</h5>
							</div>
							<div class="modal-body">
								<form>

									<div class="form-group">
											<div class="col-4" id="personFaculty">
												
											</div>
										<div class="col-4">
											<label for="recipient-name" class="control-label mb-10">คำนำหน้า</label>
											<input type="text" class="form-control" id="prename">
										</div>
										<div class="col-4">
											<label for="recipient-name" class="control-label mb-10">ชื่อ</label>
											<input type="text" class="form-control" id="name">
										</div>
										<div class="col-4">
											<label for="recipient-name" class="control-label mb-10">นามสกุล</label>
											<input type="text" class="form-control" id="lname">
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

		
			<!-- Row -->
		</div>
		<!-- Footer -->
		<footer class="footer container-fluid pl-30 pr-30">
			<div class="row">
				<div class="col-sm-12">
					<p>Jppk_D_Dook @Kittiphong Aumphimai By-2019</p>
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
	<script src="../assets_/vendors/bower_components/filament-tablesaw/dist/tablesaw.js"></script>
	<script src="../assets_/dist/js/tablesaw-data.js"></script>
</body>
<script>

</script>
<script>
	$(document).ready(function () {
		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/listFaculty1",
			//data: JSON.stringify(id1),
			dataType: 'json',
			success: function (msg) {

				var table1 = "";
				 for (var i = 0; i < msg.length; i++) {
				 	var teacher = "";
					table1 +=
						'<tr>' +
						'<td>' + msg[i].majors.majorsName + '</td>' +
					//	'<td>' + msg[i].majors.personMajors + '</td>' +
					'<td>' + msg[i].majors.personMajors + '</td>' +
						//'<td>' + msg[i].credit+'</td>' +
						// '<td>' +'<input type="hidden"id="up_ma"value='+msg[i].majors.majorsId+'> <a  class="text-inverse pr-10" title="Edit" data-toggle="tooltip"><i class="zmdi zmdi-edit txt-warning"></i></a>' + '</td>' +

						// '<td>' + '<input type="hidden" value=' + msg[i].majors.majorsId + '>' +
						// '<a type="button" onclick="UP_Table1('+msg[i].majors.majorsId+')" class="text-inverse pr-10" title="แก้ไขสาขา" data-toggle="modal" data-target="#exampleModal"><i class="zmdi zmdi-edit txt-warning"></a>' +
						// '</td>' +
						// '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
						'</tr>';
					teacher = msg[i].personFaculty;
				}
				$('#table1 tbody').append(table1);
				$('#table1teacher ').append('<p>' + teacher + '</p>');
			},
			error: function (e) {
				alert("ERROR: Table1", e);
				console.log("ERROR: Table1", e);
			}
		});

		
	});
	function UP_Table1(Ma) {
		//var Ma = $(this).parent().find('input').val();
		//var Ma = {mg:$('#up_ma').val()};
	   $.ajax({
		type: "GET",
		contentType: "application/json",
		url: "/gotoUpdateMajors1/" + Ma,
		//data: JSON.stringify(id1),
		dataType: 'json',
		success: function (msg) {
			$('#personFaculty').append('<p>'+msg.faculty.personFaculty+'</p>');
			$('#prename').val(msg.majorsName);
			$('#namefaculty').append('<p>'+msg.namefaculty+'<p>');
		
		},
		error: function (e) {
			alert("ERROR: Table1", e);
			console.log("ERROR: Table1", e);
		}
	});
};
	
</script>
<script>
	$(document).ready(function () {
		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/listFaculty2",
			//data: JSON.stringify(id1),
			dataType: 'json',
			success: function (msg) {

				var table1 = "";
				for (var i = 0; i < msg.length; i++) {
					teacher = "";
					table1 +=
						'<tr>' +
						'<td>' + msg[i].majors.majorsName + '</td>' +
						//'<td>' + msg[i].majors.personMajors + '</td>' +
						'<td>' + msg[i].majors.personMajors + '</td>' +
						//'<td>' + msg[i].credit+'</td>' +
						// '<td>' +'<input type="hidden"id="up_ma"value='+msg[i].majors.majorsId+'> <a  class="text-inverse pr-10" title="Edit" data-toggle="tooltip"><i class="zmdi zmdi-edit txt-warning"></i></a>' + '</td>' +

						// '<td>' + '<input type="hidden"id="up_ma"value=' + msg[i].majors.majorsId + '>' +
						// '<a type="button" onclick="UP_Table1()" class="text-inverse pr-10" title="แก้ไขสาขา" data-toggle="modal" data-target="#exampleModal"><i class="zmdi zmdi-edit txt-warning"></a>' +
						// '</td>' +
						// // '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
						'</tr>';
					teacher = msg[i].personFaculty;
				}
				$('#table2 tbody').append(table1);
				$('#table2teacher ').append('<p>' + teacher + '</p>');
			},
			error: function (e) {
				alert("ERROR: table2", e);
				console.log("ERROR: table2", e);
			}
		});
	});
</script>
<script>
	$(document).ready(function () {
		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/listFaculty3",
			//data: JSON.stringify(id1),
			dataType: 'json',
			success: function (msg) {

				var table1 = "";
				for (var i = 0; i < msg.length; i++) {
					teacher = "";
					table1 +=
						'<tr>' +
						'<td>' + msg[i].majors.majorsName + '</td>' +
						'<td>' + msg[i].majors.personMajors + '</td>' +
						//'<td>' + msg[i].credit+'</td>' +
						// '<td>' +'<input type="hidden"id="up_ma"value='+msg[i].majors.majorsId+'> <a  class="text-inverse pr-10" title="Edit" data-toggle="tooltip"><i class="zmdi zmdi-edit txt-warning"></i></a>' + '</td>' +

						// '<td>' + '<input type="hidden"id="up_ma"value=' + msg[i].majors.majorsId + '>' +
						// '<a type="button" onclick="UP_Table1()" class="text-inverse pr-10" title="แก้ไขสาขา" data-toggle="modal" data-target="#exampleModal"><i class="zmdi zmdi-edit txt-warning"></a>' +
						// '</td>' +
						// '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
						'</tr>';
					teacher = msg[i].personFaculty;
				}
				$('#table3 tbody').append(table1);
				$('#table3teacher ').append('<p>' + teacher + '</p>');
			},
			error: function (e) {
				alert("ERROR: Table3", e);
				console.log("ERROR: Table3", e);
			}
		});
	});
</script>
<script>
	$(document).ready(function () {
		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/listFaculty4",
			//data: JSON.stringify(id1),
			dataType: 'json',
			success: function (msg) {

				var table1 = "";
				for (var i = 0; i < msg.length; i++) {
					teacher = "";
					table1 +=
						'<tr>' +
						'<td>' + msg[i].majors.majorsName + '</td>' +
						'<td>' + msg[i].majors.personMajors + '</td>' +
						//'<td>' + msg[i].credit+'</td>' +
						// '<td>' +'<input type="hidden"id="up_ma"value='+msg[i].majors.majorsId+'> <a  class="text-inverse pr-10" title="Edit" data-toggle="tooltip"><i class="zmdi zmdi-edit txt-warning"></i></a>' + '</td>' +

						// '<td>' + '<input type="hidden"id="up_ma"value=' + msg[i].majors.majorsId + '>' +
						// '<a type="button" onclick="UP_Table1()" class="text-inverse pr-10" title="แก้ไขสาขา" data-toggle="modal" data-target="#exampleModal"><i class="zmdi zmdi-edit txt-warning"></a>' +
						// '</td>' +
						// '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
						'</tr>';
					teacher = msg[i].personFaculty;
				}
				$('#table4 tbody').append(table1);
				$('#table3teacher ').append('<p>' + teacher + '</p>');
			},
			error: function (e) {
				alert("ERROR: Table4", e);
				console.log("ERROR: Table4", e);
			}
		});
	});
</script>
<script>
	$(document).ready(function () {
		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/listFaculty5",
			//data: JSON.stringify(id1),
			dataType: 'json',
			success: function (msg) {

				var table1 = "";
				for (var i = 0; i < msg.length; i++) {
					teacher = "";
					table1 +=
						'<tr>' +
						'<td>' + msg[i].majors.majorsName + '</td>' +
						'<td>' + msg[i].majors.personMajors + '</td>' +
						//'<td>' + msg[i].credit+'</td>' +
						// '<td>' +'<input type="hidden"id="up_ma"value='+msg[i].majors.majorsId+'> <a  class="text-inverse pr-10" title="Edit" data-toggle="tooltip"><i class="zmdi zmdi-edit txt-warning"></i></a>' + '</td>' +

						// '<td>' + '<input type="hidden"id="up_ma"value=' + msg[i].majors.majorsId + '>' +
						// '<a type="button" onclick="UP_Table1()" class="text-inverse pr-10" title="แก้ไขสาขา" data-toggle="modal" data-target="#exampleModal"><i class="zmdi zmdi-edit txt-warning"></a>' +
						// '</td>' +
						// '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
						'</tr>';
					teacher = msg[i].personFaculty;
				}
				$('#table5 tbody').append(table1);
				$('#table5teacher ').append('<p>' + teacher + '</p>');
			},
			error: function (e) {
				alert("ERROR: Table5", e);
				console.log("ERROR: Table5", e);
			}
		});
	});
</script>
<script>
	$(document).ready(function () {
		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/listFaculty6",
			//data: JSON.stringify(id1),
			dataType: 'json',
			success: function (msg) {

				var table1 = "";
				for (var i = 0; i < msg.length; i++) {
					teacher = "";
					table1 +=
						'<tr>' +
						'<td>' + msg[i].majors.majorsName + '</td>' +
						'<td>' + msg[i].majors.personMajors + '</td>' +
						//'<td>' + msg[i].credit+'</td>' +
						// '<td>' +'<input type="hidden"id="up_ma"value='+msg[i].majors.majorsId+'> <a  class="text-inverse pr-10" title="Edit" data-toggle="tooltip"><i class="zmdi zmdi-edit txt-warning"></i></a>' + '</td>' +

						// '<td>' + '<input type="hidden"id="up_ma"value=' + msg[i].majors.majorsId + '>' +
						// '<a type="button" onclick="UP_Table1()" class="text-inverse pr-10" title="แก้ไขสาขา" data-toggle="modal" data-target="#exampleModal"><i class="zmdi zmdi-edit txt-warning"></a>' +
						// '</td>' +
						// '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
						'</tr>';
					teacher = msg[i].personFaculty;
				}
				$('#table6 tbody').append(table1);
				$('#table6teacher ').append('<p>' + teacher + '</p>');
			},
			error: function (e) {
				alert("ERROR: Table1", e);
				console.log("ERROR: Table1", e);
			}
		});
	});
</script>
<script>
	$(document).ready(function () {
		$.ajax({
			type: "GET",
			contentType: "application/json",
			url: "/listFaculty7",
			//data: JSON.stringify(id1),
			dataType: 'json',
			success: function (msg) {

				var table1 = "";
				for (var i = 0; i < msg.length; i++) {
					teacher = "";
					table1 +=
						'<tr>' +
						'<td>' + msg[i].majors.majorsName + '</td>' +
						'<td>' + msg[i].majors.personMajors + '</td>' +
						//'<td>' + msg[i].credit+'</td>' +
						// '<td>' +'<input type="hidden"id="up_ma"value='+msg[i].majors.majorsId+'> <a  class="text-inverse pr-10" title="Edit" data-toggle="tooltip"><i class="zmdi zmdi-edit txt-warning"></i></a>' + '</td>' +

						// '<td>' + '<input type="hidden"id="up_ma"value=' + msg[i].majors.majorsId + '>' +
						// '<a type="button" onclick="UP_Table1()" class="text-inverse pr-10" title="แก้ไขสาขา" data-toggle="modal" data-target="#exampleModal"><i class="zmdi zmdi-edit txt-warning"></a>' +
						// '</td>' +
						// '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
						'</tr>';
					teacher = msg[i].personFaculty;
				}
				$('#table7 tbody').append(table1);
				$('#table7teacher ').append('<p>' + teacher + '</p>');
			},
			error: function (e) {
				alert("ERROR: Table7", e);
				console.log("ERROR: Table7", e);
			}
		});
	});
</script>

</html>