<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Reports</title>
</head>
<body>
<h1 align="center">Purchase Reports</h1><br><br>
<div align="center">
<table border=1>
<thead><tr>
<td>Order Id</td>
<td>User Id</td>
<td>User Name</td>
<td>Product Id</td>
<td>Product Name</td>
<td>Product Price</td>
<td>Product Category</td>
<td>Purchase Time</td>
</tr></thead>
<c:forEach var="user" items="${orderlist}">
<tr>
<td>${user.id}</td>
<td>${user.userId}</td>
<td>${user.userName}</td>
<td>${user.productId}</td>
<td>${user.productName}</td>
<td>${user.productPrice}</td>
<td>${user.productCategory}</td>
<td>${user.purchaseTime}</td>
</tr>
</c:forEach>
</table>

</div>
</body>
</html>