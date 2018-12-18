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
			<div class="page-wrapper">
				<div class="container-fluid pt-25">
					<!-- Row -->
					<div class="row">
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
					</div>
					<!-- /Row -->
	
					<!-- Row -->
					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-5 col-xs-12">
							<div class="panel card-view">
								<div class="panel-heading small-panel-heading relative">
									<div class="pull-left">
										<h6 class="panel-title">Invoices</h6>
									</div>
									<div class="clearfix"></div>
									<div class="head-overlay"></div>
								</div>
								<div class="panel-wrapper collapse in">
									<div class="panel-body row pa-0">
										<div class="sm-data-box">
											<div class="container-fluid">
												<div class="row">
													<div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
														<span class="weight-500 uppercase-font block">due</span>
														<span class="txt-dark block counter">$<span class="counter-anim">15678</span></span>
													</div>
													<div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
														<span class="weight-500 uppercase-font block">overdue</span>
														<span class="txt-dark block counter">$<span class="counter-anim">45678</span></span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="panel card-view">
								<div class="panel-heading small-panel-heading relative">
									<div class="pull-left">
										<h6 class="panel-title">Monthly Revenue</h6>
									</div>
									<div class="clearfix"></div>
									<div class="head-overlay"></div>
								</div>
								<div class="panel-wrapper collapse in">
									<div class="panel-body row pa-0">
										<div class="sm-data-box">
											<div class="container-fluid">
												<div class="row">
													<div class="col-xs-6 text-center pl-0 pr-0 data-wrap-left">
														<span class="block"><i class="zmdi zmdi-trending-up txt-success font-18 mr-5"></i><span class="weight-500 uppercase-font">growth</span></span>
														<span class="txt-dark block counter">$<span class="counter-anim">15,678</span></span>
													</div>
													<div class="col-xs-6 text-center  pl-0 pr-0 data-wrap-right">
														<div id="sparkline_4" style="width: 100px; overflow: hidden; margin: 0px auto;"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-default card-view">
									<div class="panel-heading">
									<div class="pull-left">
										<h6 class="panel-title txt-dark">My Stats</h6>
									</div>
									<div class="clearfix"></div>
								</div>
									<div class="panel-wrapper collapse in">
										<div class="panel-body row">
											<div class="">
												<div class="pl-15 pr-15 mb-15">
													<div class="pull-left">
														<i class="zmdi zmdi-collection-folder-image inline-block mr-10 font-16"></i>
														<span class="inline-block txt-dark">Active Projects</span>
													</div>
													<span class="inline-block txt-warning pull-right weight-500">12</span>
													<div class="clearfix"></div>
												</div>
												<hr class="light-grey-hr mt-0 mb-15"/>
												<div class="pl-15 pr-15 mb-15">
													<div class="pull-left">
														<i class="zmdi zmdi-format-list-bulleted inline-block mr-10 font-16"></i>
														<span class="inline-block txt-dark">Task Pending</span>
													</div>
													<span class="inline-block txt-danger pull-right weight-500">23</span>
													<div class="clearfix"></div>
												</div>
												<hr class="light-grey-hr mt-0 mb-15"/>
												<div class="pl-15 pr-15 mb-15">
													<div class="pull-left">
														<i class="zmdi zmdi-ticket-star inline-block mr-10 font-16"></i>
														<span class="inline-block txt-dark">Support Tickets</span>
													</div>
													<span class="inline-block txt-primary pull-right weight-500">43</span>
													<div class="clearfix"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
						</div>
	
						<div class="col-lg-9 col-md-8 col-sm-7 col-xs-12">
							<div class="panel panel-default card-view">
								<div class="panel-heading">
									<div class="pull-left">
										<h6 class="panel-title txt-dark">Project Status</h6>
									</div>
									<div class="pull-right">
										<a href="#" class="pull-left inline-block full-screen mr-15">
											<i class="zmdi zmdi-fullscreen"></i>
										</a>
										<div class="pull-left inline-block dropdown">
											<a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false" role="button"><i class="zmdi zmdi-more-vert"></i></a>
											<ul class="dropdown-menu bullet dropdown-menu-right"  role="menu">
												<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-reply" aria-hidden="true"></i>Update</a></li>
												<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-share" aria-hidden="true"></i>Edit</a></li>
												<li role="presentation"><a href="javascript:void(0)" role="menuitem"><i class="icon wb-trash" aria-hidden="true"></i>Remove</a></li>
											</ul>
										</div>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="panel-wrapper collapse in">
									<div class="panel-body row pa-0">
										<div class="table-wrap">
											<div class="table-responsive">
											  <table class="table table-hover mb-0">
												<thead>
												  <tr>
													<th>Task</th>
													<th>Progress</th>
													<th>Deadline</th>
													</tr>
												</thead>
												<tbody>
												  <tr>
													<td>CMVM Digitisation of paper records</td>
													<td><div class="progress progress-xs mb-0 ">
														<div class="progress-bar progress-bar-danger" style="width: 35%"></div>
													  </div></td>
													<td>Jan 18, 2017</td>
	
												  </tr>
												  <tr>
													<td>Data management plans</td>
													<td><div class="progress progress-xs mb-0 ">
														<div class="progress-bar progress-bar-warning" style="width: 50%"></div>
													  </div></td>
													<td>Dec 1, 2016</td>
	
												  </tr>
												  <tr>
													<td>REF readiness</td>
													<td><div class="progress progress-xs mb-0 ">
														<div class="progress-bar progress-bar-success" style="width: 100%"></div>
													  </div></td>
													<td>Nov 12, 2016</td>
	
												  </tr>
												  <tr>
													<td>Storage Strategy</td>
													<td><div class="progress progress-xs mb-0 ">
														<div class="progress-bar progress-bar-primary" style="width: 70%"></div>
													  </div></td>
													<td>Oct 9, 2016</td>
	
												  </tr>
												  <tr>
													<td>Network Infrastructure strategy</td>
													<td><div class="progress progress-xs mb-0 ">
														<div class="progress-bar progress-bar-primary" style="width: 85%"></div>
													  </div></td>
													<td>Sept 2, 2016</td>
	
												  </tr>
												  <tr>
													<td>Flexible Server hosting</td>
													<td><div class="progress progress-xs mb-0 ">
														<div class="progress-bar progress-bar-warning" style="width: 50%"></div>
													  </div></td>
													<td>August 11, 2015</td>
	
												  </tr>
												   <tr>
													<td>Virtual Desktop software access</td>
													<td><div class="progress progress-xs mb-0 ">
														<div class="progress-bar progress-bar-warning" style="width: 50%"></div>
													  </div></td>
													<td>June 11, 2016</td>
	
												  </tr>
												  <tr>
													<td>Server hosting Issues</td>
													<td><div class="progress progress-xs mb-0 ">
														<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
													  </div></td>
													<td>August 11, 2016</td>
	
												  </tr>
												  <tr>
													<td>Cpanel Issues</td>
													<td><div class="progress progress-xs mb-0 ">
														<div class="progress-bar progress-bar-warning" style="width: 60%"></div>
													  </div></td>
													<td>Sep 11, 2016</td>
	
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
					<!-- Row -->
	
					<!-- Row -->
					<div class="row">
						<div class="col-sm-12">
							<div class="panel panel-default card-view">
								<div class="panel-heading">
									<div class="pull-left">
										<h6 class="panel-title txt-dark">customer support</h6>
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
															<th>ticket ID</th>
															<th>Customer</th>
															<th>issue</th>
															<th>Date</th>
															<th>Status</th>
															<th>Actions</th>
														</tr>
													</thead>
													<tbody>
														<tr>
															<td>#85457898</td>
															<td>Jens Brincker</td>
															<td>Elmer chart</td>
															<td>Oct 27</td>
															<td>
																<span class="label label-primary">done</span>
															</td>
															<td><a href="javascript:void(0)" class="pr-10" data-toggle="tooltip" title="completed" ><i class="zmdi zmdi-check"></i></a> <a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete"></i></a></td>
														</tr>
														<tr>
															<td>#85457897</td>
															<td>Mark Hay</td>
															<td>PSD resolution</td>
															<td>Oct 26</td>
															<td>
																<span class="label label-warning ">Pending</span>
															</td>
															<td><a href="javascript:void(0)" class="pr-10" data-toggle="tooltip" title="completed" ><i class="zmdi zmdi-check"></i></a> <a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete"></i></a></td>
														</tr>
														<tr>
															<td>#85457896</td>
															<td>Anthony Davie</td>
															<td>Cinnabar</td>
															<td>Oct 25</td>
															<td>
																<span class="label label-primary">done</span>
															</td>
															<td><a href="javascript:void(0)" class="pr-10" data-toggle="tooltip" title="completed" ><i class="zmdi zmdi-check"></i></a> <a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete"></i></a></td>
														</tr>
														<tr>
															<td>#85457895</td>
															<td>David Perry</td>
															<td>Felix PSD</td>
															<td>Oct 25</td>
															<td>
																<span class="label label-danger">pending</span>
															</td>
															<td><a href="javascript:void(0)" class="pr-10" data-toggle="tooltip" title="completed" ><i class="zmdi zmdi-check"></i></a> <a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete"></i></a></td>
														</tr>
														<tr>
															<td>#85457894</td>
															<td>Anthony Davie</td>
															<td>Beryl iphone</td>
															<td>Oct 25</td>
															<td>
																<span class="label label-primary">done</span>
															</td>
															<td><a href="javascript:void(0)" class="pr-10" data-toggle="tooltip" title="completed" ><i class="zmdi zmdi-check"></i></a> <a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete"></i></a></td>
														</tr>
														<tr>
															<td>#85457893</td>
															<td>Alan Gilchrist</td>
															<td>Pogody button</td>
															<td>Oct 22</td>
															<td>
																<span class="label label-warning ">Pending</span>
															</td>
															<td><a href="javascript:void(0)" class="pr-10" data-toggle="tooltip" title="completed" ><i class="zmdi zmdi-check"></i></a> <a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete"></i></a></td>
														</tr>
														<tr>
															<td>#85457892</td>
															<td>Mark Hay</td>
															<td>Beavis sidebar</td>
															<td>Oct 18</td>
															<td>
																<span class="label label-primary">done</span>
															</td>
															<td><a href="javascript:void(0)" class="pr-10" data-toggle="tooltip" title="completed" ><i class="zmdi zmdi-check"></i></a> <a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete"></i></a></td>
														</tr>
														<tr>
															<td>#85457891</td>
															<td>Sue Woodger</td>
															<td>Pogody header</td>
															<td>Oct 17</td>
															<td>
																<span class="label label-danger">pending</span>
															</td>
															<td><a href="javascript:void(0)" class="pr-10" data-toggle="tooltip" title="completed" ><i class="zmdi zmdi-check"></i></a> <a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete"></i></a></td>
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
				</div>
				<!-- Footer -->
				<footer class="footer container-fluid pl-30 pr-30">
					<div class="row">
						<div class="col-sm-12">
							<p>2017 &copy; Elmer. Pampered by Hencework</p>
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
	</body>
	</html>
	