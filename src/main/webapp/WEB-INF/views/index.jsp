<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<!-- Custom CSS goes below Bootstrap CSS -->
<link rel="stylesheet" href="/style.css" />
</head>
<body>
<div class="container">
	<table class="table">
			<thead>
			<tr>
				<th>Item</th><th>Quantity</th><th>Description</th><th>Price</th><th>Action</th>
			</tr>
			</thead>
             <tbody>
             	<c:forEach var="item" items="${item}">
             		<tr>
             			<td>${item.name}</td>
             			<td>${item.quantity}</td>
             			<td>${item.description}</td>
             			<td>${item.price}</td>
             			<td>
             				<a class= "btn btn-light btn-sm" href="/item/${item.id}/update">Edit</a>
             				<a class= "btn btn-light btn-sm" href="/item/${item.id}/delete">Delete</a>
             			</td>
             		</tr>
             	</c:forEach>
             </tbody>
		</table>
		
		<a class="btn btn-secondary" href="item/create">Add</a>
		</div>
</body>
</html>