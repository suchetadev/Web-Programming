<%-- 
    Document   : login.jsp
    Created on : Oct 16, 2016, 10:47:07 AM
    Author     : sucheta
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Login page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="resources/css/bootstrap.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="resources/css/header.css">
        <link rel="stylesheet" href="resources/css/login.css">
        <link rel="stylesheet" href="resources/css/footer.css">
    </head>

    <body>
        <div class="container">
            <%@ include file="header.jsp" %>
            <div class="container form-container">
                <form name="myForm" method="post" action="/cs/validate">
                    <div>
                        <h2><small>SIGN IN!</small></h2>
                        <hr>
                    </div>

                    <div>
                        <c:if test="${message != null}">
                            <p class="text-danger">${message}</p>
                        </c:if>
                    </div>
                    <div class="form-group">
                        <label> Email Address :</label>
                        <input type="email" name="email" class="form-control" placeholder="Email">
                        <div id="error_email" class="error"></div>
                    </div>

                    <div class="form-group">
                        <label> Password :</label>
                        <input type="password" name="password" class="form-control" placeholder="Password">
                        <div id="error_password" class="error"></div>
                    </div>

                    <input type="submit" class="btn btn-default" name="submit" value="Sign In"><br><br>

                    <div>
                        Create a new account?
                        <span><a href="registration">Register</a></span>
                    </div>
                </form>
                
            </div>
            <div>
					<br> <br> <br> <br>
				</div>
				<%@ include file="footer.jsp"%>
        </div>
    </body>   
</html>
