<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Product</title>
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

</head>

<body>

<div class="container">
		<%@ include file="header.jsp"%>
		
		<div class="container form-container">
                <form name="myForm" method="post" action="/cs/addProductToDb">
                    
                    <div>
                        <h2><small>Add New Product Information</small></h2>
                        <hr>
                    </div>

                    <div class="form-group">
                        <label> Product Type :</label>
                        <input type="text" name="productType" class="form-control" placeholder="Text input">
                        
                    </div>

                    <div class="form-group">
                        <label> Product Name :</label>
                        <input type="text" name="productName" class="form-control" placeholder="Text input">
                        
                    </div>

                    <div class="form-group">
                        <label> Product Cost :</label>
                        <input type="text" name="productCost" class="form-control" placeholder="Number">
                        
                    </div>

                    <div class="form-group">
                        <label> Product Old Cost :</label>
                        <input type="text" name="productOldCost" class="form-control" placeholder="Number">
                       
                    </div>
                  

					<div class="form-group">
                        <label> Product Unit :</label>
                        <input type="text" name="productUnit" class="form-control" placeholder="Number">
                       
                    </div>

                  
				    <div class="form-group">
                        <label> Product Quantity :</label>
                        <input type="text" name="productQuantity" class="form-control" placeholder="Number">
                       
                    </div>
				    
                   


                    <input type="submit" class="btn btn-default" name="submit" value="Add Product"><br><br>

                </form>
		</div>


		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>