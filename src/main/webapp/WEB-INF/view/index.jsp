<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Insert title here</title>
  <link rel="stylesheet" href="/assets/css/login.css">
</head>
<%
	String result = "";
%>
<%
	result = (String) request.getAttribute("messessError");
%>

<body>
  <div class="login">
  <%-- <%
    if (result.equals("F")) {
  %>
    <div class="alert alert-danger">
      <strong>Faill ! </strong> You Login Faill !!
    </div>
    <%
    } else if (result.equals("L")) {
  %>
    <div class="alert alert-success">
      <strong>Success </strong> Logout Success
    </div>
  <%
    }
  %> --%>

    <div class="login-triangle"></div>

    <h2 class="login-header">Log in</h2>

    <form class="login-container" name="index" action="index" method="post">

      <p for="exampleInputEmail1"><input type="text" placeholder="Username" name="username"></p>
      <p for="exampleInputPassword1"><input type="password" placeholder="Password" name="password"></p>
      <p><input type="submit" value="Login"></p>

    </form>

  </div>
</body>

</html>