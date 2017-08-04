<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Edit Form</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../resources/css/header.css">
<link rel="stylesheet" href="../resources/css/admin.css">
<link rel="stylesheet" href="../resources/css/footer.css">
</head>
<body>
	<div class="container">
		<%@ include file="header.jsp"%>
		<h1>Edit User</h1>
			<form:form method="POST" action="/cs/editSave">
			<table class = "table">				
				<tr>
					<td>First Name :</td>
					<td><form:input path="firstName" /></td>
				</tr>
				<tr>
					<td>Last Name :</td>
					<td><form:input path="lastName" /></td>
				</tr>
				<tr>
					<td>Email :</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>Phone Number :</td>
					<td><form:input path="phoneNumber" /></td>
				</tr>
				
				<tr>
					<td>Password :</td>
					<td><form:input path="password" /></td>
				</tr>
				<tr>
					<td>Confirmed Password :</td>
					<td><form:input path="passwordConfirm" /></td>
				</tr>
				<tr>
					<td>Role :</td>
					<td><form:input path="role" /></td>
				</tr>
				<tr>
					<td><form:input type="hidden" path="user_id" /></td>
				</tr>
				
				<tr>
					<td></td>
					<td><input type="submit" value="Update" /></td>
				</tr>
			</table>
		</form:form>
	


		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>