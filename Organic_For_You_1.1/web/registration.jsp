<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Registration page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/header.css">
        <link rel="stylesheet" href="css/registration.css">

        <script src="js/formValidate.js"></script> 

    </head>

    <body>
        <div class="container">
            <%@ include file="header.jsp" %>
            <div class="container form-container">
                <form name="myForm" method="post" action="formRegistration" onsubmit="return validateForm()">
                    <input type="hidden" name="action" value="register">

                    <div>
                        <h2><small>Personal Information</small></h2>
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
                        <label> Date of Birth :</label>
                        <input  type="number" min="1" max="12" name="month" class=" form-inline width " placeholder="mm">
                        <input  type="number" min="1" max="31" name="day" class="form-inline width" placeholder="dd">
                        <input  type="number" min="1990" max="2016" name="year" class="form-inline width form-inline" placeholder="yy">
                    </div>
                    <div id="error_dob" class="error"></div>

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


                    <input type="submit" class="btn btn-default" name="submit" value="Submit"><br><br>

                </form>
            </div>
        </div>
    </body>   
</html>
