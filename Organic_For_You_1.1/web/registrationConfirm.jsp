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
        <link rel="stylesheet" href="css/registrationConfirm.css">
        <link rel="stylesheet" href="css/normalize.css">
    </head>
    <body>
        <header>
            <h1>Your registration is Done! </h1>
        </header>
        
        <main>
            <table>
                <tr>
                    <th colspan="2"> Here is the information that you entered :</th>
                </tr>
                
                <tr>
                    <td><label>First Name :</label></td>
                    <td class="left"><label>${user.firstName}</label></td>
                </tr>
                
                <tr>
                    <td><label> Last Name :</label></td>
                    <td class="left"><label> ${user.lastName}</label></td>
                </tr>
                
                <tr>
                    <td><label> Email Address :</label></td>
                    <td class="left"><label> ${user.email}</label></td>
                </tr>
                
                <tr>
                    <td><label> Phone Number :</label></td>
                    <td class="left"><label> ${user.phoneNumber}</label></td>
                </tr>
                
                <tr>
                    <td><label> Date of Birth :</label></td>
                    <td class="left"><label> ${user.month}/${user.day}/${user.year}</label></td>
                </tr>
            </table>
        </main>
            
        <footer>			
            <div align="center">
            <br><br>
		Copyright 2016-2018 | All rights reserved | Sucheta Patil.
            </div>
        </footer>
    </body>
</html>
