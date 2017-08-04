<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/admin.css">
<link rel="stylesheet" href="resources/css/footer.css">
</head>
<body>
	<div class="container">
		<%@ include file="header.jsp"%>

		<div>
			<table class="table" align="center">
				<tr>
					<td><a href="addUser">Add User</a></td>
				</tr>
				<tr>
					<td><a href="viewUsers">View Users</a></td>
				</tr>
				<tr>
					<td><a href="addProduct">Add Product</a></td>
				</tr>
				<tr>
					<td><a href="viewProducts">View Products</a></td>
				</tr>
			</table>
		</div>


		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>