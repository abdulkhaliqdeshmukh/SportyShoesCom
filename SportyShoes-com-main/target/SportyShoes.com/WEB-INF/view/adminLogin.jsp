<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Welcome to Admin Login</h1><br><br>
<h2 align="center">Please enter your Credentials</h2>
<h3 align=center>
<form:form action="adminLogincheck" modelAttribute="admin" method="GET">
Enter UserName:<form:input path="name"/><br><br>
Enter UserPassword:<form:input path="password"/><br><br>
<input type="submit" value="Log In">
</form:form>
</h3>
</body>
</html>