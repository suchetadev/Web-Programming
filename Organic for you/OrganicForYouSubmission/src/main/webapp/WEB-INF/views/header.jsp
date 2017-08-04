<%-- 
    Document   : header
    Created on : Oct 24, 2016, 12:22:32 PM
    Author     : sucheta
--%>

<%--@page contentType="text/html" pageEncoding="UTF-8"--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="row">
    <div  id="adjust-height">

        <label id="adjust-text">You have taken your step towards healthy living!</label>

        <ul class="nav navbar-nav navbar-right">
          	 <li><a href="registration"><span class="glyphicon glyphicon-user"></span> Register</a></li>
            
            <c:if test="${sessionScope.authenticated == 'enabled'}">
                <li><a href="logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li> 
        	</c:if>
        	<c:if test="${sessionScope.authenticated != 'enabled'}">
                <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> 
        	</c:if>      	
            
        </ul>

    </div>
</div>

<div class="row">
    <div class="company-title text-left">
        Organic For you
        <br/><br/>
        <c:if test="${sessionScope.authenticated == 'enabled'}">
                WELCOME BACK!!
        </c:if>
        <ul class="nav navbar-nav navbar-right menu">
            <li><a href="home">Home</a></li>
            <li><a href="purchase">Purchase</a></li>
            <li><a href="viewCart">View Cart</a></li>
            <c:if test="${sessionScope.admin == 'enabled'}">
                <li><a href="admin">Admin</a></li> 
            </c:if>
            <li><a href="#">Contact us</a></li>
        </ul>
    </div>
</div>