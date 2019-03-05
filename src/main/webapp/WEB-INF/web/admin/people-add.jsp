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
    <link href="../assets_/vendors/bower_components/datatables/media/css/jquery.dataTables.min.css" rel="stylesheet"
        type="text/css" />


    <!-- vector map CSS -->
    <link href="../assets_/vendors/bower_components/jasny-bootstrap/dist/css/jasny-bootstrap.min.css" rel="stylesheet"
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
                <a id="toggle_nav_btn" class="toggle-left-nav-btn inline-block ml-20 pull-left" href="javascript:void(0);"><i
                        class="zmdi zmdi-menu"></i></a>
                <a id="toggle_mobile_search" data-toggle="collapse" data-target="#search_form" class="mobile-only-view"
                    href="javascript:void(0);"><i class="zmdi zmdi-search"></i></a>
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
                    <a href="./index-admin" data-toggle="collapse" data-target="#dashboard_dr">
                        <div class="pull-left"><i class="ti-layout-grid2  mr-20"></i><span class="right-nav-text">หน้าแรก</span></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="dashboard_dr" class="collapse collapse-level-1">

                    </ul>
                </li>

                <li>
                    <a class="active" href="./people-add" data-toggle="collapse" data-target="#app_dr">
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
                    <a href="./holiday-add" data-toggle="collapse" data-target="#app_dr">
                        <div class="pull-left"><i class="ti-notepad mr-20"></i><span class="right-nav-text">ข้อมูลวันหยุด</span></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="app_dr" class="collapse collapse-level-1">
                    </ul>
                </li>
                <li>
                    <a href="./dataadmin-add" data-toggle="collapse" data-target="#app_dr">
                        <div class="pull-left"><i class="icon-user  mr-20"></i><span class="right-nav-text">ข้อมูลผู้ใช้
                            </span></div>
                        <div class="clearfix"></div>
                    </a>
                    <ul id="app_dr" class="collapse collapse-level-1">
                    </ul>
                </li>
                <li>
                    <a href="./calender" data-toggle="collapse" data-target="#app_dr">
                        <div class="pull-left"><i class="icon-calender mr-20"></i><span class="right-nav-text">calendar
                            </span></div>
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
                    <div class="col-sm-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="pull-left">
                                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal1">+
                                        เพิ่มผู้สอน</button>
                                    <div id="myModal1" class="modal fade in" tabindex="-1" role="dialog"
                                        aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                        aria-hidden="true">×</button>
                                                    <h5 class="modal-title" id="myModalLabel">เพิ่มผู้สอน</h5>
                                                </div>
                                                <div class="modal-body">
                                                    <!-- Row
                                                    <div class="panel-wrapper collapse in">
                                                        <div class="row">
                                                            <div class="col-sm-12">
                                                                <div class="form-wrap">
                                                                    <form>
                                                                        <input type="hidden" id="userId" name="userId">
                                                                        <div class="row">
                                                                            <div class="col-md-3">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">รหัสผู้สอน</label>
                                                                                    <input type="text" name="userid"
                                                                                        class="form-control" id="insertuserId"
                                                                                        value="" required="">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">รหัสผ่าน</label>
                                                                                    <input type="text" name="userid"
                                                                                        class="form-control" id="insertuserPass"
                                                                                        value="" required="">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">คำนำหน้า</label>
                                                                                    <input type="text" name="userid"
                                                                                        class="form-control" id="insertprefixName"
                                                                                        value="" required="">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">ชื่อ</label>
                                                                                    <input type="text" name="userFname"
                                                                                        class="form-control" id="insertuserFname"
                                                                                        value="" required="">

                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">นามสกุล</label>
                                                                                    <input type="text" class="form-control"
                                                                                        id="insertuserLname" value=""
                                                                                        required="">

                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">ตำแหน่ง</label>
                                                                                    
                                                                                    <select id="insertpositionTeach"
                                                                                        class="form-control " name="teachWeek"
                                                                                        required="">
                                                                                        <option value="อาจารย์พิเศษ">อาจารย์พิเศษ</option>
                                                                                        <option value="อาจารย์">อาจารย์</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">สาขาวิชา</label>
                                                                                    <input type="text" class="form-control"
                                                                                        id="insertfaculty" value=""
                                                                                        required="">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">คณะ</label>
                                                                                    <input type="text" class="form-control"
                                                                                        id="insertMojor" value=""
                                                                                        required="">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                   
                                                                        <div class="row">

                                                                            <div class="col-md-4">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">มีฐานชั่วโมง/คาบ</label>
                                                                                    <input type="number" class="form-control"
                                                                                        id="insertbaseHour" value=""
                                                                                        required="">
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">เบิกค่าสอนพิเศษได้ไม่เกิน/หน่วยชั่วโมง</label>
                                                                                    <input type="number" class="form-control"
                                                                                        id="insertbaseKrm" value=""
                                                                                        required="">

                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-4">
                                                                                <div class="form-group">
                                                                                    <label class="bmd-label-floating">สถานะผู้ใช้</label>
                                                                             
                                                                                    <select id="insertstatusLogin"
                                                                                        class="form-control " name="teachWeek"
                                                                                        required="">
                                                                                        <option value="U">ผู้สอน</option>
                                                                                        <option value="A">ผู้ดูแลระบบ</option>
                                                                                    </select>

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="modal-footer ">
                                                                            <button type="submit" class="btn btn-success btn-rounded"
                                                                                aria-hidden="false" onclick="peopleInsert()">Save</button>
                                                                            <button type="button" class="btn btn-default btn-rounded"
                                                                                data-dismiss="modal">Cancel</button>
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
                                </div>
                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>

                </div> -->
                <!-- <row> -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default card-view pa-0">
                            <div class="panel-wrapper collapse in">
                                <div class="panel-body pa-0">
                                    <div class="contact-list">
                                        <div class="row">
                                            <aside class="col-lg-2 col-md-4 pr-0">
                                                <div class="mt-20 mb-20 ml-15 mr-15">
                                                    <a href="#myModal" data-toggle="modal" title="Compose" class="btn btn-success btn-block">
                                                        เพิ่มผู้สอน
                                                    </a>
                                                    <!-- Modal -->
                                                    <div aria-hidden="true" role="dialog" tabindex="-1" id="myModal"
                                                        class="modal fade" style="display: none;">
                                                        <div class="modal-dialog">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <button type="button" class="close" data-dismiss="modal"
                                                                        aria-hidden="true">×</button>
                                                                    <h4 class="modal-title" id="myModalLabel">เพิ่มผู้สอน</h4>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <form class="form-horizontal form-material "name="myform" action="insertUser1" method="POST" target="_parent">
                                                                     <!-- <form data-toggle="validator" role="form"> -->
                                                                        <div class="form-group">
                                                                            <div class="col-md-12 mb-20">
                                                                                <label class="control-label mb-10 text-left">รหัสผู้สอน</label>
                                                                                <input type="text" class="form-control" name="userId"
                                                                                    placeholder="รหัสผู้สอน" id="insertuserId"
                                                                                    required>
                                                                            </div>
                                                                            <div class="col-md-12 mb-20">
                                                                                    <input type="hidden" name="length" value="8">
                                                                                <label class="control-label mb-10 text-left">รหัสผ่าน</label>
                                                                                <input type="text" class="form-control"
                                                                                    placeholder="รหัสผ่าน" id="row_password" name="userPass"
                                                                                    value="" required=""disabled>
                                                                                 <input type="button" class="button" value="Generate" onClick="generate();" tabindex="2">
                                                                            </div>
                                                                            <div class="col-md-12 mb-20">
                                                                                <div class="col-sm-2">
                                                                                <label class="control-label mb-10">คำนำหน้า</label>
                                                                            </div>
                                                                           
                                                                                    <div class="radio-list ">
                                                                                            <div class="radio-inline pl-0">
                                                                                                <span class="radio radio-info">
                                                                                                    <input type="radio" name="prefixName" id="radio_5" value="option1">
                                                                                            <label for="radio_5">นาย</label>
                                                                                            </span>
                                                                                            </div>
                                                                                            <div class="radio-inline">
                                                                                                <span class="radio radio-info">
                                                                                                    <input type="radio" name="prefixName" id="radio_6" value="option2">
                                                                                            <label for="radio_6">นาง</label>
                                                                                            </span>
                                                                                            </div>
                                                                                            <div class="radio-inline">
                                                                                                    <span class="radio radio-info">
                                                                                                        <input type="radio" name="prefixName" id="radio_6" value="option2">
                                                                                                <label for="radio_6">นางสาว</label>
                                                                                                </span>
                                                                                                </div>
                                                                                        </div>
                                                                            </div>
                                                                            <div class="col-md-12 mb-20">
                                                                            <div class="col-md-6 ">
                                                                                <label class="control-label mb-10 text-left">ชื่อ</label>
                                                                                <input type="text" name="userFname"
                                                                                    class="form-control" id="userFname"
                                                                                    value="" required>
                                                                            </div>
                                                                            <div class="col-md-6">
                                                                                <label class="control-label mb-10 text-left">นามสกุล</label>
                                                                                <input type="text" class="form-control" name="userLname"
                                                                                    id="insertuserLname" value=""
                                                                                    required="">
                                                                            </div>
                                                                        </div>
                                                                            <div class="col-md-12 mb-20">
                                                                                <label class="control-label mb-10 text-left">ตำแหน่งสอน</label>

                                                                                <select id="insertpositionTeach" class="form-control "
                                                                                    name="positionTeach" required>
                                                                                    <option value="อาจารย์ประจำ">อาจารย์ประจำ</option>
                                                                                    <option value="อาจารย์พิเศษ">อาจารย์พิเศษ</option>
                                                                                    <option value="พนักงานมหาวิทยาลัย">พนักงานมหาวิทยาลัย</option>
                                                                                    <option value="อาจารย์อัตราจ้าง">อาจารย์อัตราจ้าง</option>
                                                                                </select>
                                                                            </div>
                                                                            <div class="col-md-12 mb-20">
                                                                                    <label class="control-label mb-10 text-left">ตำแหน่งประจำ</label>
                                                                                    <input type="text" class="form-control" name="positionUser"
                                                                                    id="insertuserLname" value=""
                                                                                    required>
                                                                                </div>
                                                                            <div class="col-md-12 mb-20">
                                                                                    <label class="control-label mb-10 text-left">คณะ</label>
                                                                                    <input type="text" class="form-control" name="faculty"
                                                                                        id="insertMojor" value="" required>
    
                                                                                </div>
                                                                            <div class="col-md-12 mb-20">
                                                                                <label class="control-label mb-10 text-left">สาขาวิชา</label>
                                                                                <input type="text" class="form-control"name="mojor"
                                                                                    id="insertfaculty" value=""
                                                                                    required>
                                                                            </div>
                                                                            
                                                                            <div class="col-md-12">
                                                                            <div class="col-md-6 mb-20">
                                                                                <label class="control-label mb-10 text-left">มีฐานชั่วโมง/คาบ</label>
                                                                                <input type="number" class="form-control"name="userbaseHour"
                                                                                    id="insertbaseHour" value=""
                                                                                    required>

                                                                            </div>
                                                                            <div class="col-md-6 mb-20">
                                                                                <label class="control-label mb-10 text-left">เบิกค่าสอนพิเศษได้ไม่เกิน/หน่วยชั่วโมง</label>
                                                                                <input type="number" class="form-control"name="userbaseKrm"
                                                                                    id="insertbaseKrm" value=""
                                                                                    required>

                                                                            </div>
                                                                        </div>
                                                                            <div class="col-md-12 mb-20">
                                                                                <label class="control-label mb-10 text-left">สถานะผู้ใช้</label>
                                                                                <select id="insertstatusLogin" class="form-control "
                                                                                    name="statusLogin" required>
                                                                                    <option value="U">ผู้สอน</option>
                                                                                    <option value="A">ผู้ดูแลระบบ</option>
                                                                                </select>

                                                                            </div>
                                                                        </div>
                                                                        <div class="modal-footer">
                                                                                <button type="submit" class="btn btn-info waves-effect"  aria-hidden="false">Save</button>
                                                                                <button type="button" class="btn btn-default waves-effect"
                                                                                    data-dismiss="modal">Cancel</button>
                                                                            </div>
                                                                    </form>
                                                                </div>
                                                               
                                                           
                                                            </div>
                                                            <!-- /.modal-content -->
                                                        </div>
                                                        <!-- /.modal-dialog -->
                                                    </div>
                                                    <!-- /.modal -->
                                                      <!-- Modal -->
                                                      <div aria-hidden="true" role="dialog" tabindex="-1" id="myModalUpdate"
                                                      class="modal fade" style="display: none;">
                                                      <div class="modal-dialog">
                                                          <div class="modal-content">
                                                              <div class="modal-header">
                                                                  <button type="button" class="close" data-dismiss="modal"
                                                                      aria-hidden="true">×</button>
                                                                  <h4 class="modal-title" id="myModalLabel">เพิ่มผู้สอน</h4>
                                                              </div>
                                                              <div class="modal-body">
                                                                  <form class="form-horizontal form-material "name="myform" action="insertUser1" method="POST" target="_parent">
                                                                   <!-- <form data-toggle="validator" role="form"> -->
                                                                      <div class="form-group">
                                                                          <div class="col-md-12 mb-20">
                                                                              <label class="control-label mb-10 text-left">รหัสผู้สอน</label>
                                                                              <input type="text" class="form-control" name="userId"
                                                                                  placeholder="รหัสผู้สอน" id="up_userPass"
                                                                                  required>
                                                                          </div>
                                                                          <div class="col-md-12 mb-20">
                                                                                  <input type="hidden" name="length" value="8">
                                                                              <label class="control-label mb-10 text-left">รหัสผ่าน</label>
                                                                              <input type="text" class="form-control"
                                                                                  placeholder="รหัสผ่าน" id="row_password" name="userPass"
                                                                                  value="" required=""disabled>
                                                                               <input type="button" class="button" value="Generate" onClick="generate();" tabindex="2">
                                                                          </div>
                                                                          <div class="col-md-12 mb-20">
                                                                              <div class="col-sm-2">
                                                                              <label class="control-label mb-10">คำนำหน้า</label>
                                                                          </div>
                                                                         
                                                                                  <div class="radio-list ">
                                                                                          <div class="radio-inline pl-0">
                                                                                              <span class="radio radio-info">
                                                                                                  <input type="radio" name="prefixName" id="radio_5" value="option1">
                                                                                          <label for="radio_5">นาย</label>
                                                                                          </span>
                                                                                          </div>
                                                                                          <div class="radio-inline">
                                                                                              <span class="radio radio-info">
                                                                                                  <input type="radio" name="prefixName" id="radio_6" value="option2">
                                                                                          <label for="radio_6">นาง</label>
                                                                                          </span>
                                                                                          </div>
                                                                                          <div class="radio-inline">
                                                                                                  <span class="radio radio-info">
                                                                                                      <input type="radio" name="prefixName" id="radio_6" value="option2">
                                                                                              <label for="radio_6">นางสาว</label>
                                                                                              </span>
                                                                                              </div>
                                                                                      </div>
                                                                          </div>
                                                                          <div class="col-md-12 mb-20">
                                                                          <div class="col-md-6 ">
                                                                              <label class="control-label mb-10 text-left">ชื่อ</label>
                                                                              <input type="text" name="userFname"
                                                                                  class="form-control" id="up_userFname"
                                                                                  value="" required>
                                                                          </div>
                                                                          <div class="col-md-6">
                                                                              <label class="control-label mb-10 text-left">นามสกุล</label>
                                                                              <input type="text" class="form-control" name="userLname"
                                                                                  id="up_userLname" value=""
                                                                                  required="">
                                                                          </div>
                                                                      </div>
                                                                          <div class="col-md-12 mb-20">
                                                                              <label class="control-label mb-10 text-left">ตำแหน่งสอน</label>

                                                                              <select id="insertpositionTeach" class="form-control "
                                                                                  name="positionTeach" required>
                                                                                  <option value="อาจารย์ประจำ">อาจารย์ประจำ</option>
                                                                                  <option value="อาจารย์พิเศษ">อาจารย์พิเศษ</option>
                                                                                  <option value="พนักงานมหาวิทยาลัย">พนักงานมหาวิทยาลัย</option>
                                                                                  <option value="อาจารย์อัตราจ้าง">อาจารย์อัตราจ้าง</option>
                                                                              </select>
                                                                          </div>
                                                                          <div class="col-md-12 mb-20">
                                                                                  <label class="control-label mb-10 text-left">ตำแหน่งประจำ</label>
                                                                                  <input type="text" class="form-control" name="positionUser"
                                                                                  id="insertuserLname" value=""
                                                                                  required>
                                                                              </div>
                                                                          <div class="col-md-12 mb-20">
                                                                                  <label class="control-label mb-10 text-left">คณะ</label>
                                                                                  <input type="text" class="form-control" name="faculty"
                                                                                      id="insertMojor" value="" required>
  
                                                                              </div>
                                                                          <div class="col-md-12 mb-20">
                                                                              <label class="control-label mb-10 text-left">สาขาวิชา</label>
                                                                              <input type="text" class="form-control"name="mojor"
                                                                                  id="insertfaculty" value=""
                                                                                  required>
                                                                          </div>
                                                                          
                                                                          <div class="col-md-12">
                                                                          <div class="col-md-6 mb-20">
                                                                              <label class="control-label mb-10 text-left">มีฐานชั่วโมง/คาบ</label>
                                                                              <input type="number" class="form-control"name="userbaseHour"
                                                                                  id="insertbaseHour" value=""
                                                                                  required>

                                                                          </div>
                                                                          <div class="col-md-6 mb-20">
                                                                              <label class="control-label mb-10 text-left">เบิกค่าสอนพิเศษได้ไม่เกิน/หน่วยชั่วโมง</label>
                                                                              <input type="number" class="form-control"name="userbaseKrm"
                                                                                  id="insertbaseKrm" value=""
                                                                                  required>

                                                                          </div>
                                                                      </div>
                                                                          <div class="col-md-12 mb-20">
                                                                              <label class="control-label mb-10 text-left">สถานะผู้ใช้</label>
                                                                              <select id="insertstatusLogin" class="form-control "
                                                                                  name="statusLogin" required>
                                                                                  <option value="U">ผู้สอน</option>
                                                                                  <option value="A">ผู้ดูแลระบบ</option>
                                                                              </select>

                                                                          </div>
                                                                      </div>
                                                                      <div class="modal-footer">
                                                                              <button type="submit" class="btn btn-info waves-effect"  aria-hidden="false">Save</button>
                                                                              <button type="button" class="btn btn-default waves-effect"
                                                                                  data-dismiss="modal">Cancel</button>
                                                                          </div>
                                                                  </form>
                                                              </div>
                                                           
                                                         
                                                          </div>
                                                          <!-- /.modal-content -->
                                                      </div>
                                                      <!-- /.modal-dialog -->
                                                  </div>
                                                  <!-- /.modal -->
                                                
                                                  <!-- <a href="#myModalUpdate" data-toggle="modal" title="Compose" class="text-inverse pr-10" title="Edit" data-toggle="tooltip"onclick="myModalUpdate()"><i class="zmdi zmdi-edit txt-warning"></i></a><a href="javascript:void(0)" class="text-inverse" title="Delete" data-toggle="tooltip"><i class="zmdi zmdi-delete txt-danger"></i></a> -->
                                                </div>
                                                <ul class="inbox-nav mb-30">
                                                    <li class="active">
                                                        <a href="#">อาจารประจำ<span class="label label-primary ml-10">12</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="#">อาจารพิเศษ<span class="label label-danger ml-10">20</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="#">พนักงานมหาวิทยาลัย <span class="label label-warning ml-10">2</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="#">อาจารย์อัตราจ้าง<span class="label label-info ml-10">30</span></a>
                                                    </li>
                                                   
                                                </ul>


                                            </aside>

                                            <aside class="col-lg-10 col-md-8 pl-0">
                                                <div class="panel pa-0">
                                                    <div class="panel-wrapper collapse in">
                                                        <div class="panel-body  pa-0">
                                                            <div class="table-responsive mb-30">
                                                                <table id="tableuserAll" class="table  display table-hover mb-30"
                                                                    data-page-size="10">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>รหัส</th>
                                                                            <th>ชื่อ นามสกุล</th>
                                                                            <th>ตำแหน่ง</th>
                                                                            <th>สาขา</th>
                                                                            <th>คณะ</th>
                                                                            <th>ฐานชั่วโมง/คาบ</th>
                                                                            <th>ใช้เบิก/หน่วยชั่วโมง</th>
                                                                            <th>หมายเหตุ</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tfoot>
                                                                        <tr>
                                                                            <th>รหัส</th>
                                                                            <th>ชื่อ นามสกุล</th>
                                                                            <th>ตำแหน่ง</th>
                                                                            <th>สาขา</th>
                                                                            <th>คณะ</th>
                                                                            <th>ฐานชั่วโมง/คาบ</th>
                                                                            <th>ใช้เบิก/หน่วยชั่วโมง</th>
                                                                            <th>หมายเหตุ</th>
                                                                        </tr>
                                                                    </tfoot>
                                                                    <tbody>

                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </aside>
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
    <script src="../assets_/dist/js/dataTables-data.js"></script>
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





    <!-- Data table JavaScript -->
    <script src="../assets_/vendors/bower_components/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../assets_/vendors/bower_components/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../assets_/vendors/bower_components/jszip/dist/jszip.min.js"></script>
    <script src="../assets_/vendors/bower_components/pdfmake/build/pdfmake.min.js"></script>
    <script src="../assets_/vendors/bower_components/pdfmake/build/vfs_fonts.js"></script>
    <script src="../assets_/vendors/bower_components/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../assets_/vendors/bower_components/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../assets_/dist/js/export-table-data.js"></script>
    <script src="../assets_/vendors/bower_components/bootstrap-validator/dist/validator.min.js"></script>

</body>
<script>
    /*DataTable Init*/

    "use strict";

    $(document).ready(function () {
        "use strict";

        $('#userAll').DataTable();
        $('#datable_2').DataTable({
            "lengthChange": false
        });
    });

    /*Export Table Init*/
    $(document).ready(function () {
            $('#tebleListUser1').DataTable({
                // dom: 'Bfrtip',
                // buttons: [
                //     { extend:'copy', attr: { id: 'allan' } }, 'csv', 'excel', 'pdf', 'print'
                // ]
            });
        }),


        $(document).ready(function () {
            // var userid = $("#userRoleid").val();
            $.ajax({
                type: "GET",
                contentType: "application/json",
                url: "/userAll",
                dataType: 'json',
                success: function (msg) {
                    var table = "";
                    if (msg.userId != null) {
                        for (var i = 0; i < msg.length; i++) {

                            table +=
                                '<tr>' +
                                '<td>' + msg[i].userId + '</td>' +
                                '<td>' + msg[i].prefixName + " " + msg[i].userFname + " " + msg[i].userLname +
                                '</td>' +
                                '<td>' + msg[i].positionTeach + '</td>' +
                                '<td>' + msg[i].faculty + '</td>' +
                                '<td>' + msg[i].mojor + '</td>' +
                                '<td>' + msg[i].baseHour + '</td>' +
                                '<td>' + msg[i].baseKrm + '</td>' +

                                // '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
                                '</tr>';
                        }
                        $('#userAll1 tbody').append(table);
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
    $(document).ready(function () {
        var table = $('#tableuserAll').DataTable({
            "sAjaxSource": "/userAll",
            "sAjaxDataProp": "",
            "order": [
                [0, "asc"]
            ],
            "aoColumns": [
                {

                    "mData": "",
                    "mRender": function (data, type, full) {
                        // return data='<input type="text" id="updateuserid" value='+full.userId+'>';
                        return full.userId;
                    }
                },
                {
                    "mData": "",
                    "mRender": function (data, type, full) {
                        return full.userFname + "  " + full.userLname;
                    }
                },
                {
                    "mData": "userLname"
                },
                {
                    "mData": "faculty"
                },
                {
                    "mData": "mojor"
                },
                {
                    "mData": "userbaseHour"
                },
                {
                    "mData": "userbaseKrm"
                },{
                    "mData": "",
                    "mRender": function (data, type, full) {
                        return data='<a href="#myModalUpdate" data-toggle="modal" title="Compose" onclick="myModalUpdate()" class="text-inverse pr-10" title="Edit" data-toggle="tooltip"><i class="zmdi zmdi-edit txt-warning"></i></a>';
                    }
                }


            ]
        })
          // Do DELETE a Customer via JQUERY AJAX
    function deleteid() {

var tebleTeachId = $(this).parent().find('input').val();
var workingObject = $(this);

$.ajax({
    type: "DELETE",
    url: "/updateTableTeaching/" + tebleTeachId,
    success: function (resultMsg) {
        workingObject.closest("tr").remove();

        // re-css for table
        $("#customerTable1 tbody tr:odd").addClass("info");
        $("#customerTable1 tbody tr:even").addClass("success");
    },
    error: function (e) {
        // alert("ERROR: 11", e,);
        // console.log("ERROR: 11", e,);
    }
});
};
    });

    function peopleInsert() {


        var insertUser = {

            userId: $('#insertuserId').val(),
            userPass: $('#insertuserPass').val(),
            prefixName: $('#insertprefixName').val(),
            userFname: $('#insertuserFname').val(),
            userLname: $('#insertuserLname').val(),
            positionTeach: $('#insertpositionTeach').val(),
            faculty: $('#insertfaculty').val(),
            mojor: $('#insertMojor').val(),
            baseHour: $('#insertbaseHour').val(),
            baseKrm: $('#insertbaseKrm').val(),
            statusLogin: $('#insertstatusLogin').val()
        };
        $.ajax({
            type: "POST",
            url: "/insertUser",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(insertUser),
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
function randomPassword(length) {
    var chars = "abcdefghijklmnopqrstuvwxyz!@#$%_&ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
    var pass = "";
    for (var x = 0; x < length; x++) {
        var i = Math.floor(Math.random() * chars.length);
        pass += chars.charAt(i);
    }
    return pass;
}

function generate() {
    myform.row_password.value = randomPassword(myform.length.value);
}
</script>
<script>
function myModalUpdate() {

		
            var	userbean = $('#updateuserid').val();
		
		$.ajax({
			type: "GET",
			url: "/Customers/"+userBean,
			contentType: "application/json; charset=utf-8",
	//		data: JSON.stringify(UserBean),
			dataType: "json",
			success: function (msg) {
			
				if (msg.userId != null) {
					$('#up_userPass').val(msg.userId);
                    $('#up_userPass').val(msg.userPass);
                    $('#up_prefixName').val(msg.prefixName);
                    $('#up_userFname').val(msg.userFname);
                    $('#up_userLname').val(msg.userLname);
                    $('#up_positionTeach').val(msg.positionTeach);
                    $('#up_positionUser').val(msg.positionUser);
                    $('#up_faculty').val(msg.faculty);
                    $('#up_mojor').val(msg.mojor);
                    $('#up_userbaseHour').val(msg.userbaseHour);
                    $('#up_userbaseKrm').val(msg.userbaseKrm);

				} else if (msg.userId == null) {
					$('#alert').append('<center>ไม่มีข้อมูล</center>');
				}
			}

		});

	};
</script>
<!-- <script>
$(document).ready(function () {
    var ppos;
    var positionTeachSET =' <select id="insertpositionTeach" class="form-control " name="teachWeek"required="">'+
                            '<option value="A">อาจารย์พิเศษ</option>'+
                            '<option value="อาจารย์พิเศษ">ผู้ดูแลระบบ</option>'+
                             '</select>';
         $('#positionTeachSETshow').append(positionTeachSET);
    // var position = $('#insertpositionTeach').val();
    var position= $('#insertpositionTeach').val();
    var pos="";
    if (position =='อาจารย์พิเศษ') {
        pos="";
    } else {
        
        pos='<div class="row">'+
          '<div class="col-md-6">'+
             '<div class="form-group">'+
                 '<label class="bmd-label-floating">สาขาวิชา</label>'+
                    '<input type="text" class="form-control"'+
                       'id="insertfaculty" value=""required="">'+
                 '</div>'+
                   '</div>'+
                     '<div class="col-md-6">'+
                    '<div class="form-group">'+
                     '<label class="bmd-label-floating">คณะ</label>'+
                     '<input type="text" class="form-control"'+
                     'id="insertMojor" value=""required="">'+
                     '</div>'+
                     '</div>'+
                      '</div>';
    }
    $('#pos').append(pos);
        
});
</script> -->

</html>