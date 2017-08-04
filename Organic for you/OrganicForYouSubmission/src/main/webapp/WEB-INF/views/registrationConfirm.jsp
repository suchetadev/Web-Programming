<%-- 
    Document   : registrationConfirm
    Created on : Oct 3, 2016, 2:16:34 PM
    Author     : sucheta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Done</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/registrationConfirm.css">

</head>
<body>
	<div class="container">
		<%@ include file="header.jsp"%>
		
			<div>
				<h1>Your registration is Done!</h1>
			</div>
				<h3>Here is the information that you entered :</h3>
			<div>
			
			</div>
			<br><br>
			<div>
				<table class="table" align="center">
					
					<tr>
						<td><label>First Name :</label></td>
						<td class="left"><label>${firstName}</label></td>
					</tr>

					<tr>
						<td><label> Last Name :</label></td>
						<td class="left"><label> ${lastName}</label></td>
					</tr>

					<tr>
						<td><label> Email Address :</label></td>
						<td class="left"><label> ${email}</label></td>
					</tr>

					<tr>
						<td><label> Phone Number :</label></td>
						<td class="left"><label> ${phoneNumber}</label></td>
					</tr>

					
					
					<tr id="email">
						<td colspan="2"><label> Your information has been sent to your mail !!!!</label></td>
						
					</tr>
				</table>
			</div>
			<%@ include file="footer.jsp" %>
		</div>
		
	
</body>
</html>
