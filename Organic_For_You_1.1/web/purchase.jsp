<%-- 
    Document   : home
    Created on : Oct 18, 2016, 10:04:17 PM
    Author     : sucheta
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/headerWithCara.css">
        <link rel="stylesheet" href="css/purchase.css">
    </head>
    <body>
        <div class="container">
            <%@ include file="headerWithCara.jsp" %>

            <div class="row">   
                <div class="text-center">
                    <nav class="navbar navbar-default">
                        <ul class="nav navbar-nav">
                            <li><a href="display?action=vegetable">Vegetable</a></li>
                            <li><a href="display?action=fruit">Fruits</a></li>
                            <li><a href="display?action=oil">Oils</a></li>
                        </ul>
                    </nav>
                </div>
            </div>

            <div class="row">
                <div id="items">
                    <c:forEach var="product" items="${requestScope.products}">
                        <c:if test="${product.productType == requestScope.product_type}">                    
                            <div id="small_container" class="col-sm-4 container">
                                <h4 class="text-center"><b>${product.productName}</b></h4>
                                <h4 class="text-left">Old Price : <strike>$${product.old_cost}</strike></h4>
                                <h4 class="text-left">New Price : $${product.cost}</h4>
                                <h4>Unit: ${product.unit}</h4>            
                            </div>                        

                        </c:if>
                    </c:forEach>

                </div>
            </div>
            
        </div>
    </body>
</html>
