<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Registration</title>
</head>
<body>
<div align="right">
<button><a href="/SportyShoes.com">Home</a></button>
</div>
<div align="center">
<h1>Register User</h1>
<form:form modelAttribute="user" action="userRegistered" method="GET">
Enter Name:<form:input path="name"/><br><br>
Enter Password:<form:input path="password"/><br><br>
<input type="submit" value="Register">
</form:form>
</div>
</body>
</html>