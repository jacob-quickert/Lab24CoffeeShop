<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>${ title }</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" />
<!-- Custom CSS goes below Bootstrap CSS -->
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<div class="container">
		<h1>${ title }</h1>
		
		<!-- A form without an action submits back to the same URL, which is what we want here. -->
		<form method="post">
			<div class="form-group">
			    <label for="name">Item</label>
			    <!-- pre-populate the input value from the existing food (if any) -->
			     <input class="form-control" id="name" name="name" value="${item.name}" required minlength="2" autocomplete="off">
			</div>
			<div class="form-group">
			    <label for="quantity">Quantity</label>
			     <input class="form-control" id="quantity" name="quantity" value="${item.quantity}" required minlength="2" autocomplete="off">
			</div>
			<div class="form-group">
			    <label for="description">Description</label>
			    <input class="form-control" id="description" name="description" value="${item.description}" required minlength="2" autocomplete="off">
			</div>
			<div class="form-group">
			    <label for="price">Price</label>
			    <input class="form-control" id="price" name="price" value="${item.price}" required minlength="2" autocomplete="off">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
			 <a href="/" class="btn btn-link">Cancel</a>
		</form>
	</div>
</body>
</html>