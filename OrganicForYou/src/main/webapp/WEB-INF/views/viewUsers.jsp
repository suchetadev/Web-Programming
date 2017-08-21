<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Users</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/admin.css">
<link rel="stylesheet" href="resources/css/footer.css">
 
</head>

<body>

<div class="container">
		<%@ include file="header.jsp"%>
		<br/><br/><br/>
		<h1 align=center>Users List</h1>
		<br/> <br/>
		 
		
		<table class="table table-hover table-striped">
		<thead>
			<tr>
				<th>Id</th>
				<th>FirstName</th>
				<th>LastName</th>
				<th>Email</th>
				<th>Phone Number</th>
				<th>Password</th>
				<th>Role</th>
			</tr>		
  			</thead>
  			<c:forEach var="user" items="${users}">   
  				 <tr>  
   					<td>${user.user_id}</td>  
   					<td>${user.firstName}</td>  
  					<td>${user.lastName}</td>  
   					<td>${user.email}</td>  
   					<td>${user.phoneNumber}</td>
   					<td>${user.password}</td>
   					<td>${user.role}</td>
  				    <td><a href="editUser/${user.user_id}">Edit</a></td>  
  				    <td><a href="deleteUser/${user.user_id}">Delete</a></td>  
   				</tr>  
   			</c:forEach>  
  		 </table>  
  		 <br/>  
   		
   		 <h4><a href="addUser">Add New Employee</a></h4> 
		 <br>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>