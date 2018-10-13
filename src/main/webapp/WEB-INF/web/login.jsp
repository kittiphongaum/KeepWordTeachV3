<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<title>Login</title>
		<meta name="description" content="Elmer is a Dashboard & Admin Site Responsive Template by hencework." />
		<meta name="keywords" content="admin, admin dashboard, admin template, cms, crm, Elmer Admin, Elmeradmin, premium admin templates, responsive admin, sass, panel, software, ui, visualization, web app, application" />
		<meta name="author" content="hencework"/>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="icon" href="favicon.ico" type="image/x-icon">
		
		<!-- vector map CSS -->
		<link href="../assets_/vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet" type="text/css"/>
		
		
		
		<!-- Custom CSS -->
		<link href="../assets_/dist/css/style.css" rel="stylesheet" type="text/css">
			<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>
	</head>

	<body>
		<!--Preloader-->
		<div class="preloader-it">
			<div class="la-anim-1"></div>
		</div>
		<!--/Preloader-->
		
		<div class="wrapper  pa-0">

			
			<!-- Main Content -->
			<div class="page-wrapper pa-0 ma-0 auth-page">
				<div class="container-fluid">
					<!-- Row -->
					<div class="table-struct full-width full-height">
						<div class="table-cell vertical-align-middle auth-form-wrap">
							<div class="auth-form  ml-auto mr-auto no-float">
								<div class="row">
									<div class="col-sm-12 col-xs-12">
										<div class="mb-30">
											<h3 class="text-center txt-dark mb-10">Keepwordteach</h3>
											<h6 class="text-center nonecase-font txt-grey">..........</h6>
										</div>	
										<div class="form-wrap">
											<form name="login" action="login" method="post">
												<div class="form-group">
													<label class="control-label mb-10" for="exampleInputEmail1">Username</label>
													<input type="text" class="form-control" required="" id="username" name="username"placeholder="Username">
												</div>
												<div class="form-group">
													<label class="pull-left control-label mb-10" for="exampleInputPassword1">Password</label>
													<div class="clearfix"></div>
													<input type="password" class="form-control" required="" id="password"name="password" placeholder="Password">
												</div>
												
												
												<div class="form-group text-center">
													<button type="submit" class="btn btn-primary  btn-rounded"value="login">LOGIN</button>
												</div>
											</form>
										</div>
									</div>	
								</div>
							</div>
						</div>
					</div>
					<!-- /Row -->	
				</div>
				
			</div>
			<!-- /Main Content -->
		
		</div>
		<!-- /#wrapper -->
		
		<!-- JavaScript -->
		
		<!-- jQuery -->
		<script src="../assets_/vendors/bower_components/jquery/dist/jquery.min.js"></script>
		
		<!-- Bootstrap Core JavaScript -->
		<script src="../assets_/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="../assets_/vendors/bower_components/jasny-bootstrap/dist/js/jasny-bootstrap.min.js"></script>
		
		<!-- Slimscroll JavaScript -->
		<script src="../assets_/dist/js/jquery.slimscroll.js"></script>
		
		<!-- Init JavaScript -->
		<script src="../assets_/dist/js/init.js"></script>
	</body>
</html>
