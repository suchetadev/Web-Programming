<%-- 
    Document   : home
    Created on : Oct 18, 2016, 10:04:17 PM
    Author     : sucheta
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/headerWithCara.css">
<link rel="stylesheet" href="resources/css/purchase.css">
<link rel="stylesheet" href="resources/css/footer.css">
</head>
<body>
	<div class="container">
		<%@ include file="headerWithCara.jsp"%>

		<div class="row">
			<div class="text-center">
				<nav class="navbar navbar-default">
					<ul class="nav navbar-nav">
						<li><a href="vegetable">Vegetable</a></li>
						
						<li><a href="fruit">Fruits</a></li>
						
						<li><a href="oil">Oils</a></li>
					</ul>
				</nav>
			</div>
		</div>

		<div class="row">
			<div id="items">

				<c:if test="${product_type == 'All'}">
					<c:forEach var="product" items="${products}">
						<div id="small_container" class="col-sm-4 container">
							<img  alt="pic" src="${product.productImgSrc}">
							<h4 class="text-center">
								
								<b>${product.productName}</b>
								
							</h4>
							<h5 class="text-left">
								Old Price : <strike>$${product.productOldCost}</strike> &nbsp;New Price : $${product.productCost}
							</h5>
							
							<h5>Unit: ${product.productUnit}
							&nbsp;&nbsp;&nbsp;
							</h5>
							
							<b><a class="link" href="addToCart/${product.productId}">Add To Cart</a></b>
							
						</div>
					</c:forEach>
				</c:if>

				<c:forEach var="product" items="${products}">
					<c:if test="${product.productType == product_type}">
						<div id="small_container" class="col-sm-4 container">							
							<img  alt="pic" src="${product.productImgSrc}">
							<h4 class="text-center">
								
								<b>${product.productName}</b>
								
							</h4>
							<h5 class="text-left">
								Old Price : <strike>$${product.productOldCost}</strike> &nbsp;New Price : $${product.productCost}
							</h5>
							
							<h5>Unit: ${product.productUnit}
							&nbsp;&nbsp;&nbsp;
							</h5>
							
							
							<b><a class="link" href="addToCart/${product.productId}">Add To Cart</a></b>
							
							
						</div>
					</c:if>
				</c:forEach>

			</div>
		</div>
		<div>
			<br> <br> <br> <br>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>
