<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View Cart</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/headerWithCara.css">
<link rel="stylesheet" href="resources/css/viewCart.css">
<link rel="stylesheet" href="resources/css/footer.css">

</head>
<body>
	<div class="container">
		<%@ include file="headerWithCara.jsp"%>

		<h1 align="center">Your Shopping Cart</h1>

		<div class="row">
			<div id="items">
				<c:forEach items="${sessionScope.mycart}" var="product">
					<div id="small_container" class="col-sm-4 container">
						<img alt="pic" src="${product.productImgSrc}">
						<h4 class="text-center">
							<b>${product.productName}</b>
						</h4>
						<h5 class="text-center">Price : $${product.productCost}</h5>
					</div>				
				</c:forEach>
			</div>
		</div>
		<br/><br/><br/>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>