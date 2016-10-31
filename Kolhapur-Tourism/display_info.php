<?php
	
	/************************************************

       Description: PHP page validates and log the user input and if successfull then displays the information submitted by user  
       Author: 	  Sucheta Suresh Patil
	
    *************************************************/

	$first_name = $_GET["first_name"];
	$last_name = $_GET["last_name"];
	$phone_number = $_GET["phone_number"];
	$no_of_persons = $_GET["no_of_persons"];
	$no_of_bags = $_GET["no_of_bags"];
	$pickup_location = $_GET["pickup_location"];
	
	function log_contents(){
		
		global $first_name,$last_name,$phone_number,$no_of_persons,$no_of_bags,$pickup_location;
		
		$information = "\n\n First Name : ".$first_name."\n Last Name : ".$last_name."\n Phone Number : ".$phone_number."\n Number of Persons : ".$no_of_persons."\n Number of Bags : ".$no_of_bags."\n Pickup Location : ".$pickup_location;
				
		date_default_timezone_set('America/Los_Angeles');
		$date = date('Y_m_d');
		$file_name = "log_".$date.".txt";
	
		//open file in a+ mode
		$myfile = fopen($file_name,"a+");
	
		//write information to a log file
		fprintf($myfile,"%s",$information);
	
		fclose($myfile);

	}
	
	function validate_input(){
		
		global $first_name,$last_name,$phone_number,$no_of_persons,$no_of_bags,$pickup_location;
		
		//array for errors
		$errors = array();
		
		//validate first_name
		if(empty($first_name)){
			
			$errors['first_name'] = "Please enter the first name.";
		}
		else if(!preg_match("/^[a-zA-Z ]*$/",$first_name)){
  
			$errors['first_name'] = "Only letters and white space allowed"; 
		}
		else{
			
			$errors['first_name'] = null;		
		}

		//validate last_name
		if(empty($last_name)){
			
			$errors['last_name'] = "Please enter the last name.";
		}
		else if(!preg_match("/^[a-zA-Z ]*$/",$last_name)){
  
			$errors['last_name'] = "Only letters and white space allowed"; 
		}
		else{
			
			$errors['last_name'] =  null;			
		}
		
		//validate phone_number
		if(!preg_match("/^[0-9]{3}-[0-9]{3}-[0-9]{4}$/",$phone_number)){
  
			$errors['phone_number'] = "Phone number in format(xxx-xxx-xxxx)"; 
		}
		else{
			
			$errors['phone_number'] =  null;
			
		}
		
		//validate no_of_persons
		if(empty($no_of_persons)){
			
			$errors['no_of_persons'] = "Please enter the number of persons.";
		}
		else if(!preg_match("/^[1-9]{1}$/",$no_of_persons)){
  
			$errors['no_of_persons'] = "No of perons in range 1-9"; 
		}
		else{
			
			$errors["no_of_persons"] = null;
		}
		
		//validate no_of_bags
		if(empty($no_of_bags)){
			
			$errors['no_of_bags'] = "Please enter the number of bags.";
		}
		else if(!preg_match("/^[1-5]{1}$/",$no_of_bags)){
  
			$errors['no_of_bags'] = "No of bags in range 1-5"; 
		}
		else{
			
			$errors["no_of_bags"] =  null;
		}
		
		if(isset($errors['first_name']) || isset($errors['last_name']) || isset($errors['phone_number']) || isset($errors['no_of_persons'])
		|| isset($errors['no_of_bags']) || isset($errors['pickup_location']))
		{
			include("pickup_form.php");
			exit();
		}
		
		
	}
	
	function total(){
		
		global $no_of_persons,$no_of_bags,$pickup_location;
		$sum = 0;
		
		if($pickup_location = "Rajarampuri"){
			$sum = 20+($no_of_persons * 10)+($no_of_bags * 5);
		    
		}
		if($pickup_location = "Rankala" || $pickup_location = "Pratibhanagar" ){
			$sum = 30+($no_of_persons * 10)+($no_of_bags * 5);
		    
		}
		if($pickup_location = "ST stand"){
			$sum = 15+($no_of_persons * 10)+($no_of_bags * 5);
		    
		}
		if($pickup_location = "Bindu Chauk"){
			$sum = 10+($no_of_persons * 10)+($no_of_bags * 5);
		    
		}
		if($pickup_location = "Mahalaxmi Temple"){
			$sum = 40+($no_of_persons * 10)+($no_of_bags * 5);
		    
		}
		return $sum;
	}
	
	//call function to log the information
	log_contents();
	
	//call validate function
	validate_input();

?>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Display information....</title>
		<link rel="stylesheet" href="./css/normalize.css">
		<link rel="stylesheet" href="./css/pickup_form.css">
		<link rel="stylesheet" href="./css/footer.css">
		
		<style>
			#ceter{
				margin-left: 100px;
			}
		
		</style>
	</head>
	<body>
		<header>
			<ul>
				<li><a href="home.html" title="Home">Home</a></li> 
				<li><a href="about_kolhapur.html" title="About Kolhapur">About Kolhapur</a></li>
				<li><a href="reach_kolhapur.html" title="How to reach">How to reach?</a></li>
				<li><a href="pickup_form.php" title="Booking">Booking</a></li>
				<li><a href="plan_your_trip.html" title="Plan your trip">Plan your trip</a></li>
				<li><a href="logout.php" title="Log out">Log out</a></li>
			</ul>
			<br><br><br><br><br>
			<h1 style="font-size:65px;">Welcome <?php echo $first_name."!" ?></h1>
		</header>
	
		<main>
			
			<div> Congrats, We got your information.</div>
			
			
			<label for="first_name" style="margin-left:450px;"> First Name : </label>
			<span class="info"><?php echo $first_name; ?></span><br>
			
			<label for="last_name" style="margin-left:450px;"> Last Name : </label>
			<span><?php echo $last_name; ?></span><br>
			
			<label for="phone_number" style="margin-left:450px;"> Phone Number : </label>
			<span><?php echo $phone_number; ?></span><br>
			
			<label for="no_of_persons" style="margin-left:450px;"> Number of persons : </label>
			<span><?php echo $no_of_persons; ?></span><br>
			
			<label for="no_of_bags" style="margin-left:450px;"> Number of bags : </label>
			<span><?php echo $no_of_bags; ?></span><br>
			
			<label for="pickup_location" style="margin-left:450px;"> Pickup location : </label>
			<span><?php echo $pickup_location; ?></span><br><br><br>
			
			<label for="total" style="margin-left:450px;"> Your total pickup expenses will be : </label>
			<span><?php echo htmlspecialchars(total()); ?></span>
			
			
		</main>

		<footer>
			<br><br>
			<table class="footer_table">
				<tr class="footer_tr">
					<th class="footer_th">Useful Links</th>
					<th class="footer_th">What to do in Kolhapur?</th>
					<th class="footer_th">Food</th>
					<th class="footer_th">Near by</th>
					<th class="footer_th">My account</th>
				</tr>
				<tr class="footer_tr">
					<td class="footer_td"><a href="" title="Shivaji Universty">Shivaji Universty</a></td>
					<td class="footer_td"><a href="food_kolhapur.html" title="Kolhapuri Special Foods">Kolhapuri Special Foods</a></td>
					<td class="footer_td"><a href="" title="Kolhapuri Nonveg Food">Kolhapuri Nonveg Food</a></td>
					<td class="footer_td"><a href="" title="Kokan">Konkan</a></td>
					<td class="footer_td"><a href="" title="Login">Login</a></td>
				</tr>
				<tr class="footer_tr">
					<td class="footer_td"><a href="" title="Red bus">Red bus</a></td>
					<td class="footer_td"><a href="" title="Entertainment">Entertainment</a></td>
					<td class="footer_td"><a href="" title="Special foods">Special foods</a></td>
					<td class="footer_td"><a href="" title="Mahabaleshwar">Mahabaleshwar</a></td>
					<td class="footer_td"><a href="" title="Register">Register</a></td>
				</tr>
				<tr class="footer_tr">
					<td class="footer_td"><a href="" title="Mahalaxmi temple">Mahalaxmi temple</a></td>
					<td class="footer_td"><a href="" title="Festivals celebrated in Kolhapur">Festivals celebrated in Kolhapur</a></td>
					<td class="footer_td"></td>
					<td class="footer_td"><a href="" title="Satara">Satara</a></td>
				</tr>
			</table>
				
			<br><br><br>
			<hr>
			
			<div align="center">
				Copyright 2016-2018 | All rights reserved | Sucheta Patil.
			</div>
		</footer>
	</body>
</html>