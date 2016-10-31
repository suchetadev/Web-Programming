<%-- 
    Document   : headerWithCara
    Created on : Oct 24, 2016, 1:46:04 PM
    Author     : sucheta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="row">
    <div  id="adjust-height">

        <label id="adjust-text">You have taken your step towards healthy living!</label>

        <ul class="nav navbar-nav navbar-right">
            <li><a href="registration.jsp"><span class="glyphicon glyphicon-user"></span> Register</a></li>
            <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>

    </div>
</div>

<div class="row">
    <div class="company-title text-left">
        Organic For you
        <br/><br/>
        <ul class="nav navbar-nav navbar-right menu">
            <li><a href="home.jsp">Home</a></li>
            <li><a href="purchase.jsp">Purchase</a></li>
            <li><a href="#">View Cart</a></li>
            <li><a href="#">Contact us</a></li>
        </ul>
    </div>
</div>

<div class="row">

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/veggie.png" alt="Chania">
            </div>

            <div class="item">
                <img src="img/pulses.png" alt="Chania">
            </div>

            <div class="item">
                <img src="img/veggie.png" alt="Flower">
            </div>

            <div class="item">
                <img src="img/pulses.png" alt="Flower">
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>
