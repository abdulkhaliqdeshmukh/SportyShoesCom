<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
</head>
<body>
<h1 align="center">Manage Products</h1>
<div align="center">
<table border=1>
<thead><tr>
<td>Id</td>
<td>Name</td>
<td>Price</td>
<td>Category</td>
</tr></thead>
<c:forEach var="user" items="${product}">
<tr>
<td>${user.id}</td>
<td>${user.name}</td>
<td>${user.price}</td>
<td>${user.category}</td>
</tr>
</c:forEach>
</table><br>
<button><a href="add">Add Product</a></button>
</div>
</body>
</html>