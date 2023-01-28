<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Confirmed</title>
</head>
<body>
<div align="right">
<button><a href="showbuycat">Shop More</a></button>
</div>
<div align="center">
<h1>Congratulations!!!</h1>
<br>
<br>
<h2>
Thank you ${history.userName}. Your order for ${history.productName} at Rs.${history.productPrice}/- has been confirmed!!!
</h2>
</div>
</body>
</html>