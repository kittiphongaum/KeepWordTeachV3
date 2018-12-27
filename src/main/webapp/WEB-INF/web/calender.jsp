<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	  
 <!DOCTYPE html > 
<html lang="en">
<head>
    <meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>KeepTeach</title>
	<meta name="description" content="Elmer is a Dashboard & Admin Site Responsive Template by hencework." />
	<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Elmer Admin, Elmeradmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
	<meta name="author" content="hencework"/>
	<%--  <%@include file="./layoutcss.jsp" %>  --%>
		<!-- Data table CSS -->
	<link href="../assets_/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>

	<link href="../assets_/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.css" rel="stylesheet" type="text/css">

	<!-- bootstrap-select CSS -->
	<link href="../assets_/vendors/bower_components/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" type="text/css"/>

	<!-- Calendar CSS -->
	<link href="../assets_/vendors/bower_components/fullcalendar/dist/fullcalendar.css" rel="stylesheet" type="text/css"/>

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
						<img class="brand-img" src="" alt="brand"/>
						<span class="brand-text">KeepWork</span>
					</a>
				</div>
			</div>
			<a id="toggle_nav_btn" class="toggle-left-nav-btn inline-block ml-20 pull-left" href="javascript:void(0);"><i class="zmdi zmdi-menu"></i></a>
			<a id="toggle_mobile_search" data-toggle="collapse" data-target="#search_form" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-search"></i></a>
			<a id="toggle_mobile_nav" class="mobile-only-view" href="javascript:void(0);"><i class="zmdi zmdi-more"></i></a>
			
		</div>
		<div id="mobile_only_nav" class="mobile-only-nav pull-right">
			<ul class="nav navbar-right top-nav pull-right">
			
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
										<a href="calendar.html" class="connection-item">
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
								<hr class="light-grey-hr ma-0"/>
								<a class="block text-center read-all" href="javascript:void(0)"> more </a>
							</div>
						</li>
					</ul>
				</li>
				<li class="dropdown full-width-drp">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="zmdi zmdi-more-vert top-nav-icon"></i></a>
				</li>
				<li class="dropdown auth-drp">
					<a href="#" class="dropdown-toggle pr-0" data-toggle="dropdown"><img src="dist/img/user1.png" alt="user_auth" class="user-auth-img img-circle"/><span class="user-online-status"></span></a>
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
			<ul class="nav navbar-nav side-nav nicescroll-bar" id="colorgen">
				<li class="navigation-header">
					<span>Manu</span>
					<i class="zmdi zmdi-more"></i>
				</li>
				<li>
					<a  href="./index1" data-toggle="collapse" data-target="#dashboard_dr" ><div class="pull-left"><i class="ti-layout-grid2  mr-20"></i><span class="right-nav-text">Dashboard</span></div><div class="clearfix"></div></a>
					<ul id="dashboard_dr" class="collapse collapse-level-1">
						
					</ul>
				</li>
				<li>
					<a href="./keepword" data-toggle="collapse" data-target="#app_dr"><div class="pull-left"><i class="icon-note mr-20"></i><span class="right-nav-text">ลงทะเบียนสอน </span></div><div class="clearfix"></div></a>
					<ul id="app_dr" class="collapse collapse-level-1">			
					</ul>
				</li>
				<li>
					<a href="./historyteach" data-toggle="collapse" data-target="#app_dr" ><div class="pull-left"><i class="icon-docs mr-20"></i><span class="right-nav-text">ประวิติการสอน </span></div><div class="clearfix"></div></a>
					<ul id="app_dr" class="collapse collapse-level-1">			
					</ul>
				</li>
				<li>
					<a href="./user" data-toggle="collapse" data-target="#app_dr" href="./keepword"><div class="pull-left"><i class="icon-user  mr-20"></i><span class="right-nav-text">ข้อมูลผู้ใช้ </span></div><div class="clearfix"></div></a>
					<ul id="app_dr" class="collapse collapse-level-1">			
					</ul>
				</li>
				<li>
					<a class="active" href="./calender" data-toggle="collapse" data-target="#app_dr"><div class="pull-left"><i class="icon-calender mr-20"></i><span class="right-nav-text">calendar </span></div><div class="clearfix"></div></a>
					<ul id="app_dr" class="collapse collapse-level-1">					
					</ul>
				</li>
				<li><hr class="light-grey-hr mb-10"/></li>	
			</ul>
		</div>
		<!-- Main Content -->
		<div class="page-wrapper">
			<div class="container-fluid">
				
				<!-- Title -->
				<div class="row heading-bg">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
					  <h5 class="txt-dark">calendar</h5>
					</div>
					<!-- Breadcrumb -->
					<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
					  <ol class="breadcrumb">
						<li><a href="index.html">Dashboard</a></li>
						
						<li class="active"><span>calendar</span></li>
					  </ol>
					</div>
					<!-- /Breadcrumb -->
				</div>
				<!-- /Title -->
				<!-- Row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default card-view">
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="add-event-wrap">
										<div class="calendar-event btn btn-success">My Event One <a href="javascript:void(0);" class="remove-calendar-event"><i class="fa fa-times fa-fw"></i></a></div>
										<div class="calendar-event btn btn-info">My Event Two <a href="javascript:void(0);" class="remove-calendar-event"><i class="fa fa-times fa-fw"></i></a></div>
										<div class="calendar-event btn btn-warning">My Event Three <a href="javascript:void(0);" class="remove-calendar-event"><i class="fa fa-times fa-fw"></i></a></div>
										<div class="calendar-event btn btn-primary">My Event Four <a href="javascript:void(0);" class="remove-calendar-event"><i class="fa fa-times fa-fw"></i></a></div>
										<input type="text" placeholder="Add Event and hit enter" class="form-control add-event mt-30">
									</div>
									<div class="calendar-wrap mt-40">
									  <div id="calendar"></div>
									</div>
								</div>
							</div>
						</div>	
					</div>	
				</div>	
					<!-- /Row -->
			</div>
			
			<!-- Footer -->
			<footer class="footer container-fluid pl-30 pr-30">
			
			</footer>
			<!-- /Footer -->
			
		</div>
		<!-- /Main Content -->
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