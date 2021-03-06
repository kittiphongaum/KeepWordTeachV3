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
						<a  href="./holiday-add" data-toggle="collapse" data-target="#app_dr">
							<div class="pull-left"><i class="ti-notepad mr-20"></i><span class="right-nav-text">ข้อมูลวันหยุด</span></div>
							<div class="clearfix"></div>
						</a>
						<ul id="app_dr" class="collapse collapse-level-1">
						</ul>
					</li>
					<li>
						<a class="active" href="./dataadmin-add" data-toggle="collapse" data-target="#app_dr">
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