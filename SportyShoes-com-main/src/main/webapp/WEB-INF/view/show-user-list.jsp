<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
</head>
<body>
<div align="center">
<h1 align="center">User List</h1><br><br>
<table border=1>
<thead><tr>
<td>Id</td>
<td>Name</td>
<td>Password</td>
</tr></thead>
<c:forEach var="user" items="${userlist}">
<tr>
<td>${user.id}</td>
<td>${user.name}</td>
<td>${user.password}</td>
</tr>
</c:forEach>
</table>

</div>
</body>
</html>