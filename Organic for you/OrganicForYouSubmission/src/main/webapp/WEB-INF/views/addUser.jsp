<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add User</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/admin.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/registration.css">
<link rel="stylesheet" href="resources/css/bootstrap-social.css">
 <script src="resources/js/formValidate.js"></script> 
</head>

<body>

<div class="container">
		<%@ include file="header.jsp"%>
		
		<div class="container form-container">
                <form name="myForm" method="post" action="/cs/registerUser" onsubmit="return validateForm()">
                    
                    <div>
                        <h2><small>Add New User Information</small></h2>
                        <hr>
                    </div>

                    <div class="form-group">
                        <label> First Name :</label>
                        <input type="text" name="firstName" class="form-control" placeholder="Text input">
                        <div id="error_firstName" class="error"></div>
                    </div>

                    <div class="form-group">
                        <label> Last Name :</label>
                        <input type="text" name="lastName" class="form-control" placeholder="Text input">
                        <div id="error_lastName" class="error"></div>
                    </div>

                    <div class="form-group">
                        <label> Email Address :</label>
                        <input type="email" name="email" class="form-control" placeholder="Email">
                        <div id="error_email" class="error"></div>
                    </div>

                    <div class="form-group">
                        <label> Phone Number :</label>
                        <input type="text" name="phoneNumber" class="form-control" placeholder="Phone number">
                        <div id="error_phoneNumber" class="error"></div>
                    </div>
  
					<div class="form-group">
                        <label> User Role :</label>
                        <input type="text" name="role" class="form-control" placeholder="Text input">
                       
                    </div>

                    <div>
                        <h2><small>Login Information</small></h2>
                        <hr>
                    </div>

                    <div class="form-group">
                        <label> Password :</label>
                        <input type="password" name="password" class="form-control" placeholder="Password">
                        <div id="error_password" class="error"></div>
                    </div>
                    <div class="form-group">
                        <label> Confirm Password :</label>
                        <input type="password" name="passwordConfirm" class="form-control" placeholder="Confirm password">
                        <div id="error_passwordConfirm" class="error"></div>
                    </div>


                    <input type="submit" class="btn btn-default" name="submit" value="Add User"><br><br>

                </form>
		</div>


		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>