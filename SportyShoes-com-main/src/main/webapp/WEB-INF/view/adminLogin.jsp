<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>
<div align="right">
<button><a href="/SportyShoes.com">Home</a></button>
</div>
<h1 align="center">Welcome to Admin Login</h1><br><br>
<h2 align="center">Please enter your Credentials</h2>
<h3 align=center>
<form:form action="adminLogincheck" modelAttribute="admin" method="GET">
Enter Admin Name:<form:input path="name"/><br><br>
Enter Admin Password:<form:password path="password"/><br>
<br><form:errors path="check" cssClass="error"></form:errors><br>
<input type="submit" value="Log In">
</form:form>
</h3>
</body>
</html>