<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Header Page</title>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="resources/css/home.css">
<link rel="stylesheet" href="resources/css/footer.css">
<link rel="stylesheet" href="resources/css/headerWithCara.css">
</head>
<body>
	<div class="container">

		<%@ include file="headerWithCara.jsp"%>
		
		<div id="para">
				<span id="firstletter">O</span>rganic food is food produced by methods that comply with the standards of organic farming. Standards vary worldwide, but organic farming in general features practices that strive to cycle resources, promote ecological balance, and conserve biodiversity. Organizations regulating organic products may restrict the use of certain pesticides and fertilizers in farming. In general, organic foods are also usually not processed using irradiation, industrial solvents or synthetic food additives.Currently, the European Union, the United States, Canada, Mexico, Japan, and many other countries require producers to obtain special certification in order to market food as organic within their borders. In the context of these regulations, organic food is produced in a way that complies with organic standards set by regional organizations, national governments and international organizations. Although the produce of kitchen gardens may be organic, selling food with an organic label is regulated by governmental food safety authorities, such as the US Department of Agriculture (USDA) or European Commission (EC).There is not sufficient evidence in medical literature to support claims that organic food is safer or healthier than conventionally grown food. While there may be some differences in the nutrient and antinutrient contents of organically- and conventionally-produced food, the variable nature of food production and handling makes it difficult to generalize results.Claims that organic food tastes better are generally not supported by evidence.
		</div>
			<br>


		<div class=" text-center" id="testimonial">
		<br><br>
		<h2>What our customers say</h2>
		<div id="myCarousel1" class="carousel slide text-center " data-ride="carousel">
			
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel1" data-slide-to="1"></li>
				<li data-target="#myCarousel1" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active">
					<h4>
                      <b>"</b> We have been ordering Organic Fruits and Vegetables from www.isayorganic.com since the past month or so and I must say 
                      <br>that it has been really good. Cash on delivery (where you have the option of refusing anything that you <b>"</b>
                      <br><br>- Tanya Varma
					</h4>
				</div>
				<div class="item">
					<h4>
					<b>"</b> Keep your greens free of pesticides-go for organic. I order at my convenience online from I Say Organic and <br> 
					have farm fresh vegetables delivered at my doorstep! <b>"</b>
					<br><br> - Dr. Abha Sabhiki
					</h4>
				</div>
				<div class="item">
					<h4>
					<b>"</b> I Say Organic has been a boon in todays world. The staff is very cordial and their service is very quick,<br>
						 they are supporting a social cause too. Their prompt and fresh deliveries in the comfort of your house is great. <b>"</b>
						 <br><br> - Aditi Soni
					</h4>
				</div>
			</div>
			<br><br><br>
			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel1" role="button"
				data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel1" role="button"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
		</div>
	
	<%@ include file="footer.jsp"%>
	</div>

</body>
</html>