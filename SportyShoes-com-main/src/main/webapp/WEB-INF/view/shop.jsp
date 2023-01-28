<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping</title>
</head>
<body>
<div align="right">
<button><a href="/SportyShoes.com">Home</a></button>
</div>
<div align="center">
<h1>Products for Shopping</h1>
<table border=1>
<thead><tr>
<td>Id</td>
<td>Name</td>
<td>Price</td>
<td>Buy</td>
<td>Category</td>
</tr></thead>
<c:forEach var="user" items="${product}">
<tr>
<td>${user.id}</td>
<td>${user.name}</td>
<td>${user.price}</td>
<td>${user.category}</td>
<td><a href="orderConfirm?productId=${user.id}">Buy</a>
</tr>
</c:forEach>
</table>

</div>
</body>
</html>