<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.cs.bru.model.User"%>
<%@ page import="java.util.List"%>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel='stylesheet'
	href='webjars/bootstrap/3.2.0/css/bootstrap.min.css'>

<%
   User  bean = null;
   User  bean1 = null;
	List<User > list = null;
%>

<%
	bean = (User) request.getSession().getAttribute("loing");
    list = (List<User>) request.getSession().getAttribute("listUser");

%>

</head>
<body style="margin-top: 5%">
	<form name="welcome" action="#" method="post">
		<input type="hidden" name="stIdcard" id="stIdcard">
		<div class="container">
			<div class="alert alert-success" align="right">
				<strong>Welcome </strong>
				<%=bean.getUserFname()%>
				<a href="javascript: document.logoutForm.submit()"
					class="btn btn-danger">Logout</a>
			</div>
			<table class="table table-bordered">
				<tr>
					<th class="text-center">ลำดับ</th>
					<th class="text-center">username</th>
					<th class="text-center">BaseKrm</th>
					<th class="text-center">Faculty</th>
					<th class="text-center">Mojor</th>
					<th class="text-center">PositionTeach</th>
					<th class="text-center">UserLname</th>
					<th class="text-center">Action</th>
				
				</tr>
				<%
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr class="text-center">
					<td><%=i + 1%></td>
						<td><%=list.get(i).getUserFname()%></td>
						<td><%=list.get(i).getBaseKrm()%></td>
						<td><%=list.get(i).getFaculty()%></td>
						<td><%=list.get(i).getMojor()%></td>
						<td><%=list.get(i).getPositionTeach()%></td>
						<td><%=list.get(i).getUserLname()%></td>
					
				
				<%-- 	<td><%=list.get(i).getUserFname()%></td> --%>
					
				 	<td><a href="javascript: document.insertForm.submit()"><span
							class="glyphicon glyphicon-plus"> </span></a> <a
						onclick="gotoUpdate('<%=list.get(i).getUserFname()%>')"><span
							class="glyphicon glyphicon-search"> </span></a> <a
						onclick="gotoDetele('<%=list.get(i).getUserFname()%>')"><span
							class="glyphicon glyphicon-trash"> </span></a></td> 

				</tr>
				<%
					}
				%>
			</table>

		</div>
		<script type="text/javascript">
			function gotoUpdate(filter) {
				document.getElementById("stIdcard").value = filter;
				document.welcome.action="gotoUpdate";
				document.welcome.submit();
			}
			function gotoDetele(filter) {
				document.getElementById("stIdcard").value = filter;
				document.welcome.action="delete";
				document.welcome.submit();
			}
		</script>
	</form>
	<form name="logoutForm" action="logout" method="post" th:hidden="true"></form>
	<form name="insertForm" action="gotoInsert" method="post"
		th:hidden="true"></form>


	<script type="text/javascript" src="webjars/jquery/2.1.1/jquery.min.js"></script>
	<script type="text/javascript"
		src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>