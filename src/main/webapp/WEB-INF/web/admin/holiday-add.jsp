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
								<img class="brand-img" src="" alt="brand" />
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
					
					<li>
						<a href="./history-add" data-toggle="collapse" data-target="#app_dr">
							<div class="pull-left"><i class="icon-docs mr-20"></i><span class="right-nav-text">ประวัติการเบิก</span></div>
							<div class="clearfix"></div>
						</a>
						<ul id="app_dr" class="collapse collapse-level-1">
						</ul>
					</li>
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
			<div class="fixed-sidebar-right">
				<ul class="right-sidebar">
					<li>
						<div  class="tab-struct custom-tab-1">
							<ul role="tablist" class="nav nav-tabs" id="right_sidebar_tab">
								<li class="active" role="presentation"><a aria-expanded="true"  data-toggle="tab" role="tab" id="chat_tab_btn" href="#chat_tab">chat</a></li>
								<li role="presentation" class=""><a  data-toggle="tab" id="messages_tab_btn" role="tab" href="#messages_tab" aria-expanded="false">messages</a></li>
								<li role="presentation" class=""><a  data-toggle="tab" id="todo_tab_btn" role="tab" href="#todo_tab" aria-expanded="false">todo</a></li>
							</ul>
							<div class="tab-content" id="right_sidebar_content">
								<div  id="chat_tab" class="tab-pane fade active in" role="tabpanel">
									<div class="chat-cmplt-wrap">
										<div class="chat-box-wrap">
											<div class="add-friend">
												<a href="javascript:void(0)" class="inline-block txt-grey">
													<i class="zmdi zmdi-more"></i>
												</a>
												<span class="inline-block txt-dark">users</span>
												<a href="javascript:void(0)" class="inline-block text-right txt-grey"><i class="zmdi zmdi-plus"></i></a>
												<div class="clearfix"></div>
											</div>
											<form role="search" class="chat-search pl-15 pr-15 pb-15">
												<div class="input-group">
													<input type="text" id="example-input1-group2" name="example-input1-group2" class="form-control" placeholder="Search">
													<span class="input-group-btn">
													<button type="button" class="btn  btn-default"><i class="zmdi zmdi-search"></i></button>
													</span>
												</div>
											</form>
											<div id="chat_list_scroll">
												<div class="nicescroll-bar">
													<ul class="chat-list-wrap">
														<li class="chat-list">
															<div class="chat-body">
																<a href="javascript:void(0)">
																	<div class="chat-data">
																		<img class="user-img img-circle"  src="dist/img/user.png" alt="user"/>
																		<div class="user-data">
																			<span class="name block capitalize-font">Clay Masse</span>
																			<span class="time block truncate txt-grey">No one saves us but ourselves.</span>
																		</div>
																		<div class="status away"></div>
																		<div class="clearfix"></div>
																	</div>
																</a>
																<a href="javascript:void(0)">
																	<div class="chat-data">
																		<img class="user-img img-circle"  src="dist/img/user1.png" alt="user"/>
																		<div class="user-data">
																			<span class="name block capitalize-font">Evie Ono</span>
																			<span class="time block truncate txt-grey">Unity is strength</span>
																		</div>
																		<div class="status offline"></div>
																		<div class="clearfix"></div>
																	</div>
																</a>
																<a href="javascript:void(0)">
																	<div class="chat-data">
																		<img class="user-img img-circle"  src="dist/img/user2.png" alt="user"/>
																		<div class="user-data">
																			<span class="name block capitalize-font">Madalyn Rascon</span>
																			<span class="time block truncate txt-grey">Respect yourself if you would have others respect you.</span>
																		</div>
																		<div class="status online"></div>
																		<div class="clearfix"></div>
																	</div>
																</a>
																<a href="javascript:void(0)">
																	<div class="chat-data">
																		<img class="user-img img-circle"  src="dist/img/user3.png" alt="user"/>
																		<div class="user-data">
																			<span class="name block capitalize-font">Mitsuko Heid</span>
																			<span class="time block truncate txt-grey">I’m thankful.</span>
																		</div>
																		<div class="status online"></div>
																		<div class="clearfix"></div>
																	</div>
																</a>
																<a href="javascript:void(0)">
																	<div class="chat-data">
																		<img class="user-img img-circle"  src="dist/img/user.png" alt="user"/>
																		<div class="user-data">
																			<span class="name block capitalize-font">Ezequiel Merideth</span>
																			<span class="time block truncate txt-grey">Patience is bitter.</span>
																		</div>
																		<div class="status offline"></div>
																		<div class="clearfix"></div>
																	</div>
																</a>
																<a href="javascript:void(0)">
																	<div class="chat-data">
																		<img class="user-img img-circle"  src="dist/img/user1.png" alt="user"/>
																		<div class="user-data">
																			<span class="name block capitalize-font">Jonnie Metoyer</span>
																			<span class="time block truncate txt-grey">Genius is eternal patience.</span>
																		</div>
																		<div class="status online"></div>
																		<div class="clearfix"></div>
																	</div>
																</a>
																<a href="javascript:void(0)">
																	<div class="chat-data">
																		<img class="user-img img-circle"  src="dist/img/user2.png" alt="user"/>
																		<div class="user-data">
																			<span class="name block capitalize-font">Angelic Lauver</span>
																			<span class="time block truncate txt-grey">Every burden is a blessing.</span>
																		</div>
																		<div class="status away"></div>
																		<div class="clearfix"></div>
																	</div>
																</a>
																<a href="javascript:void(0)">
																	<div class="chat-data">
																		<img class="user-img img-circle"  src="dist/img/user3.png" alt="user"/>
																		<div class="user-data">
																			<span class="name block capitalize-font">Priscila Shy</span>
																			<span class="time block truncate txt-grey">Wise to resolve, and patient to perform.</span>
																		</div>
																		<div class="status online"></div>
																		<div class="clearfix"></div>
																	</div>
																</a>
																<a href="javascript:void(0)">
																	<div class="chat-data">
																		<img class="user-img img-circle"  src="dist/img/user4.png" alt="user"/>
																		<div class="user-data">
																			<span class="name block capitalize-font">Linda Stack</span>
																			<span class="time block truncate txt-grey">Our patience will achieve more than our force.</span>
																		</div>
																		<div class="status away"></div>
																		<div class="clearfix"></div>
																	</div>
																</a>
															</div>
														</li>
													</ul>
												</div>
											</div>
										</div>
										<div class="recent-chat-box-wrap">
											<div class="recent-chat-wrap">
												<div class="panel-heading ma-0">
													<div class="goto-back">
														<a  id="goto_back" href="javascript:void(0)" class="inline-block txt-grey">
															<i class="zmdi zmdi-chevron-left"></i>
														</a>
														<span class="inline-block txt-dark">ryan</span>
														<a href="javascript:void(0)" class="inline-block text-right txt-grey"><i class="zmdi zmdi-more"></i></a>
														<div class="clearfix"></div>
													</div>
												</div>
												<div class="panel-wrapper collapse in">
													<div class="panel-body pa-0">
														<div class="chat-content">
															<ul class="nicescroll-bar pt-20">
																<li class="friend">
																	<div class="friend-msg-wrap">
																		<img class="user-img img-circle block pull-left"  src="dist/img/user.png" alt="user"/>
																		<div class="msg pull-left">
																			<p>Hello Jason, how are you, it's been a long time since we last met?</p>
																			<div class="msg-per-detail text-right">
																				<span class="msg-time txt-grey">2:30 PM</span>
																			</div>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</li>
																<li class="self mb-10">
																	<div class="self-msg-wrap">
																		<div class="msg block pull-right"> Oh, hi Sarah I'm have got a new job now and is going great.
																			<div class="msg-per-detail text-right">
																				<span class="msg-time txt-grey">2:31 pm</span>
																			</div>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</li>
																<li class="self">
																	<div class="self-msg-wrap">
																		<div class="msg block pull-right">  How about you?
																			<div class="msg-per-detail text-right">
																				<span class="msg-time txt-grey">2:31 pm</span>
																			</div>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</li>
																<li class="friend">
																	<div class="friend-msg-wrap">
																		<img class="user-img img-circle block pull-left"  src="dist/img/user.png" alt="user"/>
																		<div class="msg pull-left">
																			<p>Not too bad.</p>
																			<div class="msg-per-detail  text-right">
																				<span class="msg-time txt-grey">2:35 pm</span>
																			</div>
																		</div>
																		<div class="clearfix"></div>
																	</div>
																</li>
															</ul>
														</div>
														<div class="input-group">
															<input type="text" id="input_msg_send" name="send-msg" class="input-msg-send form-control" placeholder="Type something">
															<div class="input-group-btn emojis">
																<div class="dropup">
																	<button type="button" class="btn  btn-default  dropdown-toggle" data-toggle="dropdown" ><i class="zmdi zmdi-mood"></i></button>
																	<ul class="dropdown-menu dropdown-menu-right">
																		<li><a href="javascript:void(0)">Action</a></li>
																		<li><a href="javascript:void(0)">Another action</a></li>
																		<li class="divider"></li>
																		<li><a href="javascript:void(0)">Separated link</a></li>
																	</ul>
																</div>
															</div>
															<div class="input-group-btn attachment">
																<div class="fileupload btn  btn-default"><i class="zmdi zmdi-attachment-alt"></i>
																	<input type="file" class="upload">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
	
								<div id="messages_tab" class="tab-pane fade" role="tabpanel">
									<div class="message-box-wrap">
										<div class="msg-search">
											<a href="javascript:void(0)" class="inline-block txt-grey">
												<i class="zmdi zmdi-more"></i>
											</a>
											<span class="inline-block txt-dark">messages</span>
											<a href="javascript:void(0)" class="inline-block text-right txt-grey"><i class="zmdi zmdi-search"></i></a>
											<div class="clearfix"></div>
										</div>
										<div class="set-height-wrap">
											<div class="streamline message-box nicescroll-bar">
												<a href="javascript:void(0)">
													<div class="sl-item unread-message">
														<div class="sl-avatar avatar avatar-sm avatar-circle">
															<img class="img-responsive img-circle" src="dist/img/user.png" alt="avatar"/>
														</div>
														<div class="sl-content">
															<span class="inline-block capitalize-font   pull-left message-per">Clay Masse</span>
															<span class="inline-block font-11  pull-right message-time">12:28 AM</span>
															<div class="clearfix"></div>
															<span class=" truncate message-subject">Themeforest message sent via your envato market profile</span>
															<p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsu messm quia dolor sit amet, consectetur, adipisci velit</p>
														</div>
													</div>
												</a>
												<a href="javascript:void(0)">
													<div class="sl-item">
														<div class="sl-avatar avatar avatar-sm avatar-circle">
															<img class="img-responsive img-circle" src="dist/img/user1.png" alt="avatar"/>
														</div>
														<div class="sl-content">
															<span class="inline-block capitalize-font   pull-left message-per">Evie Ono</span>
															<span class="inline-block font-11  pull-right message-time">1 Feb</span>
															<div class="clearfix"></div>
															<span class=" truncate message-subject">Pogody theme support</span>
															<p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
														</div>
													</div>
												</a>
												<a href="javascript:void(0)">
													<div class="sl-item">
														<div class="sl-avatar avatar avatar-sm avatar-circle">
															<img class="img-responsive img-circle" src="dist/img/user2.png" alt="avatar"/>
														</div>
														<div class="sl-content">
															<span class="inline-block capitalize-font   pull-left message-per">Madalyn Rascon</span>
															<span class="inline-block font-11  pull-right message-time">31 Jan</span>
															<div class="clearfix"></div>
															<span class=" truncate message-subject">Congratulations from design nominees</span>
															<p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
														</div>
													</div>
												</a>
												<a href="javascript:void(0)">
													<div class="sl-item unread-message">
														<div class="sl-avatar avatar avatar-sm avatar-circle">
															<img class="img-responsive img-circle" src="dist/img/user3.png" alt="avatar"/>
														</div>
														<div class="sl-content">
															<span class="inline-block capitalize-font   pull-left message-per">Ezequiel Merideth</span>
															<span class="inline-block font-11  pull-right message-time">29 Jan</span>
															<div class="clearfix"></div>
															<span class=" truncate message-subject">Themeforest item support message</span>
															<p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
														</div>
													</div>
												</a>
												<a href="javascript:void(0)">
													<div class="sl-item unread-message">
														<div class="sl-avatar avatar avatar-sm avatar-circle">
															<img class="img-responsive img-circle" src="dist/img/user4.png" alt="avatar"/>
														</div>
														<div class="sl-content">
															<span class="inline-block capitalize-font   pull-left message-per">Jonnie Metoyer</span>
															<span class="inline-block font-11  pull-right message-time">27 Jan</span>
															<div class="clearfix"></div>
															<span class=" truncate message-subject">Help with beavis contact form</span>
															<p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
														</div>
													</div>
												</a>
												<a href="javascript:void(0)">
													<div class="sl-item">
														<div class="sl-avatar avatar avatar-sm avatar-circle">
															<img class="img-responsive img-circle" src="dist/img/user.png" alt="avatar"/>
														</div>
														<div class="sl-content">
															<span class="inline-block capitalize-font   pull-left message-per">Priscila Shy</span>
															<span class="inline-block font-11  pull-right message-time">19 Jan</span>
															<div class="clearfix"></div>
															<span class=" truncate message-subject">Your uploaded theme is been selected</span>
															<p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
														</div>
													</div>
												</a>
												<a href="javascript:void(0)">
													<div class="sl-item">
														<div class="sl-avatar avatar avatar-sm avatar-circle">
															<img class="img-responsive img-circle" src="dist/img/user1.png" alt="avatar"/>
														</div>
														<div class="sl-content">
															<span class="inline-block capitalize-font   pull-left message-per">Linda Stack</span>
															<span class="inline-block font-11  pull-right message-time">13 Jan</span>
															<div class="clearfix"></div>
															<span class=" truncate message-subject"> A new rating has been received</span>
															<p class="txt-grey truncate">Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit</p>
														</div>
													</div>
												</a>
											</div>
										</div>
									</div>
								</div>
								<div  id="todo_tab" class="tab-pane fade" role="tabpanel">
									<div class="todo-box-wrap">
										<div class="add-todo">
											<a href="javascript:void(0)" class="inline-block txt-grey">
												<i class="zmdi zmdi-more"></i>
											</a>
											<span class="inline-block txt-dark">todo list</span>
											<a href="javascript:void(0)" class="inline-block text-right txt-grey"><i class="zmdi zmdi-plus"></i></a>
											<div class="clearfix"></div>
										</div>
										<div class="set-height-wrap">
											<!-- Todo-List -->
											<ul class="todo-list nicescroll-bar">
												<li class="todo-item">
													<div class="checkbox checkbox-default">
														<input type="checkbox" id="checkbox01"/>
														<label for="checkbox01">Record The First Episode</label>
													</div>
												</li>
												<li>
													<hr class="light-grey-hr"/>
												</li>
												<li class="todo-item">
													<div class="checkbox checkbox-pink">
														<input type="checkbox" id="checkbox02"/>
														<label for="checkbox02">Prepare The Conference Schedule</label>
													</div>
												</li>
												<li>
													<hr class="light-grey-hr"/>
												</li>
												<li class="todo-item">
													<div class="checkbox checkbox-warning">
														<input type="checkbox" id="checkbox03" checked/>
														<label for="checkbox03">Decide The Live Discussion Time</label>
													</div>
												</li>
												<li>
													<hr class="light-grey-hr"/>
												</li>
												<li class="todo-item">
													<div class="checkbox checkbox-success">
														<input type="checkbox" id="checkbox04" checked/>
														<label for="checkbox04">Prepare For The Next Project</label>
													</div>
												</li>
												<li>
													<hr class="light-grey-hr"/>
												</li>
												<li class="todo-item">
													<div class="checkbox checkbox-danger">
														<input type="checkbox" id="checkbox05" checked/>
														<label for="checkbox05">Finish Up AngularJs Tutorial</label>
													</div>
												</li>
												<li>
													<hr class="light-grey-hr"/>
												</li>
												<li class="todo-item">
													<div class="checkbox checkbox-purple">
														<input type="checkbox" id="checkbox06" checked/>
														<label for="checkbox06">Finish Infinity Project</label>
													</div>
												</li>
												<li>
													<hr class="light-grey-hr"/>
												</li>
											</ul>
											<!-- /Todo-List -->
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<!-- /Right Sidebar Menu -->
	
	
	
			<!-- Main Content -->
			<div class="page-wrapper">
				<div class="container-fluid pt-25">
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
														<div class="">
															<div class="row">
																<div class="col-sm-12">
																	<div class="form-wrap">
																		<form>
																			<input type="hidden" id="userId" name="userId">
																			<div class="row">
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
																			</div>

																			<div class="modal-footer ">
																				<button type="submit" class="btn btn-success btn-rounded" aria-hidden="false" onclick="holidayInsert()">Save</button>
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
										<h6 class="panel-title txt-dark">DataTable</h6>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="panel-wrapper collapse in">
									<div class="panel-body">
										<div class="table-wrap">
											<div class="">
												<table id="myTable1" class="table table-hover display  pb-30" >
													<thead>
														<tr>
															<th>Name</th>
															<th>Position</th>
															<th>Office</th>
															<th>Age</th>
															<th>Start date</th>
															<th>Salary</th>
														</tr>
													</thead>
													<tfoot>
														<tr>
															<th>Name</th>
															<th>Position</th>
															<th>Office</th>
															<th>Age</th>
															<th>Start date</th>
															<th>Salary</th>
														</tr>
													</tfoot>
													<tbody>
														<tr>
															<td>Tiger Nixon</td>
															<td>System Architect</td>
															<td>Edinburgh</td>
															<td>61</td>
															<td>2011/04/25</td>
															<td>$320,800</td>
														</tr>
														<tr>
															<td>Garrett Winters</td>
															<td>Accountant</td>
															<td>Tokyo</td>
															<td>63</td>
															<td>2011/07/25</td>
															<td>$170,750</td>
														</tr>
														<tr>
															<td>Ashton Cox</td>
															<td>Junior Technical Author</td>
															<td>San Francisco</td>
															<td>66</td>
															<td>2009/01/12</td>
															<td>$86,000</td>
														</tr>
														<tr>
															<td>Cedric Kelly</td>
															<td>Senior Javascript Developer</td>
															<td>Edinburgh</td>
															<td>22</td>
															<td>2012/03/29</td>
															<td>$433,060</td>
														</tr>
														<tr>
															<td>Airi Satou</td>
															<td>Accountant</td>
															<td>Tokyo</td>
															<td>33</td>
															<td>2008/11/28</td>
															<td>$162,703</td>
														</tr>
														<tr>
															<td>Brielle Williamson</td>
															<td>Integration Specialist</td>
															<td>New York</td>
															<td>61</td>
															<td>2012/12/02</td>
															<td>$372,000</td>
														</tr>
														<tr>
															<td>Herrod Chandler</td>
															<td>Sales Assistant</td>
															<td>San Francisco</td>
															<td>59</td>
															<td>2012/08/06</td>
															<td>$137,500</td>
														</tr>
														<tr>
															<td>Rhona Davidson</td>
															<td>Integration Specialist</td>
															<td>Tokyo</td>
															<td>55</td>
															<td>2010/10/14</td>
															<td>$327,900</td>
														</tr>
														<tr>
															<td>Colleen Hurst</td>
															<td>Javascript Developer</td>
															<td>San Francisco</td>
															<td>39</td>
															<td>2009/09/15</td>
															<td>$205,500</td>
														</tr>
														<tr>
															<td>Sonya Frost</td>
															<td>Software Engineer</td>
															<td>Edinburgh</td>
															<td>23</td>
															<td>2008/12/13</td>
															<td>$103,600</td>
														</tr>
														<tr>
															<td>Jena Gaines</td>
															<td>Office Manager</td>
															<td>London</td>
															<td>30</td>
															<td>2008/12/19</td>
															<td>$90,560</td>
														</tr>
														<tr>
															<td>Quinn Flynn</td>
															<td>Support Lead</td>
															<td>Edinburgh</td>
															<td>22</td>
															<td>2013/03/03</td>
															<td>$342,000</td>
														</tr>
														<tr>
															<td>Charde Marshall</td>
															<td>Regional Director</td>
															<td>San Francisco</td>
															<td>36</td>
															<td>2008/10/16</td>
															<td>$470,600</td>
														</tr>
														<tr>
															<td>Haley Kennedy</td>
															<td>Senior Marketing Designer</td>
															<td>London</td>
															<td>43</td>
															<td>2012/12/18</td>
															<td>$313,500</td>
														</tr>
														<tr>
															<td>Tatyana Fitzpatrick</td>
															<td>Regional Director</td>
															<td>London</td>
															<td>19</td>
															<td>2010/03/17</td>
															<td>$385,750</td>
														</tr>
														<tr>
															<td>Michael Silva</td>
															<td>Marketing Designer</td>
															<td>London</td>
															<td>66</td>
															<td>2012/11/27</td>
															<td>$198,500</td>
														</tr>
														<tr>
															<td>Paul Byrd</td>
															<td>Chief Financial Officer (CFO)</td>
															<td>New York</td>
															<td>64</td>
															<td>2010/06/09</td>
															<td>$725,000</td>
														</tr>
														<tr>
															<td>Gloria Little</td>
															<td>Systems Administrator</td>
															<td>New York</td>
															<td>59</td>
															<td>2009/04/10</td>
															<td>$237,500</td>
														</tr>
														<tr>
															<td>Bradley Greer</td>
															<td>Software Engineer</td>
															<td>London</td>
															<td>41</td>
															<td>2012/10/13</td>
															<td>$132,000</td>
														</tr>
														<tr>
															<td>Dai Rios</td>
															<td>Personnel Lead</td>
															<td>Edinburgh</td>
															<td>35</td>
															<td>2012/09/26</td>
															<td>$217,500</td>
														</tr>
														<tr>
															<td>Jenette Caldwell</td>
															<td>Development Lead</td>
															<td>New York</td>
															<td>30</td>
															<td>2011/09/03</td>
															<td>$345,000</td>
														</tr>
														<tr>
															<td>Yuri Berry</td>
															<td>Chief Marketing Officer (CMO)</td>
															<td>New York</td>
															<td>40</td>
															<td>2009/06/25</td>
															<td>$675,000</td>
														</tr>
														<tr>
															<td>Caesar Vance</td>
															<td>Pre-Sales Support</td>
															<td>New York</td>
															<td>21</td>
															<td>2011/12/12</td>
															<td>$106,450</td>
														</tr>
														<tr>
															<td>Doris Wilder</td>
															<td>Sales Assistant</td>
															<td>Sidney</td>
															<td>23</td>
															<td>2010/09/20</td>
															<td>$85,600</td>
														</tr>
														<tr>
															<td>Angelica Ramos</td>
															<td>Chief Executive Officer (CEO)</td>
															<td>London</td>
															<td>47</td>
															<td>2009/10/09</td>
															<td>$1,200,000</td>
														</tr>
														<tr>
															<td>Gavin Joyce</td>
															<td>Developer</td>
															<td>Edinburgh</td>
															<td>42</td>
															<td>2010/12/22</td>
															<td>$92,575</td>
														</tr>
														<tr>
															<td>Jennifer Chang</td>
															<td>Regional Director</td>
															<td>Singapore</td>
															<td>28</td>
															<td>2010/11/14</td>
															<td>$357,650</td>
														</tr>
														<tr>
															<td>Brenden Wagner</td>
															<td>Software Engineer</td>
															<td>San Francisco</td>
															<td>28</td>
															<td>2011/06/07</td>
															<td>$206,850</td>
														</tr>
														<tr>
															<td>Fiona Green</td>
															<td>Chief Operating Officer (COO)</td>
															<td>San Francisco</td>
															<td>48</td>
															<td>2010/03/11</td>
															<td>$850,000</td>
														</tr>
														<tr>
															<td>Shou Itou</td>
															<td>Regional Marketing</td>
															<td>Tokyo</td>
															<td>20</td>
															<td>2011/08/14</td>
															<td>$163,000</td>
														</tr>
														<tr>
															<td>Michelle House</td>
															<td>Integration Specialist</td>
															<td>Sidney</td>
															<td>37</td>
															<td>2011/06/02</td>
															<td>$95,400</td>
														</tr>
														<tr>
															<td>Suki Burks</td>
															<td>Developer</td>
															<td>London</td>
															<td>53</td>
															<td>2009/10/22</td>
															<td>$114,500</td>
														</tr>
														<tr>
															<td>Prescott Bartlett</td>
															<td>Technical Author</td>
															<td>London</td>
															<td>27</td>
															<td>2011/05/07</td>
															<td>$145,000</td>
														</tr>
														<tr>
															<td>Gavin Cortez</td>
															<td>Team Leader</td>
															<td>San Francisco</td>
															<td>22</td>
															<td>2008/10/26</td>
															<td>$235,500</td>
														</tr>
														<tr>
															<td>Martena Mccray</td>
															<td>Post-Sales support</td>
															<td>Edinburgh</td>
															<td>46</td>
															<td>2011/03/09</td>
															<td>$324,050</td>
														</tr>
														<tr>
															<td>Unity Butler</td>
															<td>Marketing Designer</td>
															<td>San Francisco</td>
															<td>47</td>
															<td>2009/12/09</td>
															<td>$85,675</td>
														</tr>
														<tr>
															<td>Howard Hatfield</td>
															<td>Office Manager</td>
															<td>San Francisco</td>
															<td>51</td>
															<td>2008/12/16</td>
															<td>$164,500</td>
														</tr>
														<tr>
															<td>Hope Fuentes</td>
															<td>Secretary</td>
															<td>San Francisco</td>
															<td>41</td>
															<td>2010/02/12</td>
															<td>$109,850</td>
														</tr>
														<tr>
															<td>Vivian Harrell</td>
															<td>Financial Controller</td>
															<td>San Francisco</td>
															<td>62</td>
															<td>2009/02/14</td>
															<td>$452,500</td>
														</tr>
														<tr>
															<td>Timothy Mooney</td>
															<td>Office Manager</td>
															<td>London</td>
															<td>37</td>
															<td>2008/12/11</td>
															<td>$136,200</td>
														</tr>
														<tr>
															<td>Jackson Bradshaw</td>
															<td>Director</td>
															<td>New York</td>
															<td>65</td>
															<td>2008/09/26</td>
															<td>$645,750</td>
														</tr>
														<tr>
															<td>Olivia Liang</td>
															<td>Support Engineer</td>
															<td>Singapore</td>
															<td>64</td>
															<td>2011/02/03</td>
															<td>$234,500</td>
														</tr>
														<tr>
															<td>Bruno Nash</td>
															<td>Software Engineer</td>
															<td>London</td>
															<td>38</td>
															<td>2011/05/03</td>
															<td>$163,500</td>
														</tr>
														<tr>
															<td>Sakura Yamamoto</td>
															<td>Support Engineer</td>
															<td>Tokyo</td>
															<td>37</td>
															<td>2009/08/19</td>
															<td>$139,575</td>
														</tr>
														<tr>
															<td>Thor Walton</td>
															<td>Developer</td>
															<td>New York</td>
															<td>61</td>
															<td>2013/08/11</td>
															<td>$98,540</td>
														</tr>
														<tr>
															<td>Finn Camacho</td>
															<td>Support Engineer</td>
															<td>San Francisco</td>
															<td>47</td>
															<td>2009/07/07</td>
															<td>$87,500</td>
														</tr>
														<tr>
															<td>Serge Baldwin</td>
															<td>Data Coordinator</td>
															<td>Singapore</td>
															<td>64</td>
															<td>2012/04/09</td>
															<td>$138,575</td>
														</tr>
														<tr>
															<td>Zenaida Frank</td>
															<td>Software Engineer</td>
															<td>New York</td>
															<td>63</td>
															<td>2010/01/04</td>
															<td>$125,250</td>
														</tr>
														<tr>
															<td>Zorita Serrano</td>
															<td>Software Engineer</td>
															<td>San Francisco</td>
															<td>56</td>
															<td>2012/06/01</td>
															<td>$115,000</td>
														</tr>
														<tr>
															<td>Jennifer Acosta</td>
															<td>Junior Javascript Developer</td>
															<td>Edinburgh</td>
															<td>43</td>
															<td>2013/02/01</td>
															<td>$75,650</td>
														</tr>
														<tr>
															<td>Cara Stevens</td>
															<td>Sales Assistant</td>
															<td>New York</td>
															<td>46</td>
															<td>2011/12/06</td>
															<td>$145,600</td>
														</tr>
														<tr>
															<td>Hermione Butler</td>
															<td>Regional Director</td>
															<td>London</td>
															<td>47</td>
															<td>2011/03/21</td>
															<td>$356,250</td>
														</tr>
														<tr>
															<td>Lael Greer</td>
															<td>Systems Administrator</td>
															<td>London</td>
															<td>21</td>
															<td>2009/02/27</td>
															<td>$103,500</td>
														</tr>
														<tr>
															<td>Jonas Alexander</td>
															<td>Developer</td>
															<td>San Francisco</td>
															<td>30</td>
															<td>2010/07/14</td>
															<td>$86,500</td>
														</tr>
														<tr>
															<td>Shad Decker</td>
															<td>Regional Director</td>
															<td>Edinburgh</td>
															<td>51</td>
															<td>2008/11/13</td>
															<td>$183,000</td>
														</tr>
														<tr>
															<td>Michael Bruce</td>
															<td>Javascript Developer</td>
															<td>Singapore</td>
															<td>29</td>
															<td>2011/06/27</td>
															<td>$183,000</td>
														</tr>
														<tr>
															<td>Donna Snider</td>
															<td>Customer Support</td>
															<td>New York</td>
															<td>27</td>
															<td>2011/01/25</td>
															<td>$112,000</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>	
						</div>
					</div> -->
					<!-- /Row -->
									
				</div>
						<!-- Row -->
						<div class="row">
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
						</div>
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
	</html>
	