<?php

	if(!isset($first_name)){
		$first_name = "";
	}
	if(!isset($last_name)){
		$last_name = "";
	}
	if(!isset($phone_number)){
		$phone_number = "";
	}
	if(!isset($no_of_persons)){
		$no_of_persons = "";
	}
	if(!isset($no_of_bags)){
		$no_of_bags = "";
	}
	
	
	//for session code
	
	$dsn = 'mysql:host=localhost;dbname=config';
	$name = 'root';
	$pwd = null;
			
	try{
		$db = new PDO($dsn, $name, $pwd);
		session_start();
		$check_user = $_SESSION["login_user"];
		
				
		$query = "SELECT username FROM users WHERE username = :check_user";
		
		$statement = $db->prepare($query);
		$statement->bindValue(':check_user',$check_user);
		$statement->execute();
		$valid_user = $statement->fetch();	
		
		if(!isset($valid_user[0])){
			
			$statement->closeCursor();
			header("location:login_form.php");
		}
	}
	catch(Exception $e){
		
		$error_message = $e->getMessage();
		echo"<p>Error message : $error_message </p>";
	}

?>

<!doctype html>

<!--
	This document displays the pick up form for the user
-->
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Pick up form....</title>
		<link rel="stylesheet" href="./css/normalize.css">
		<link rel="stylesheet" href="./css/pickup_form.css">
		<link rel="stylesheet" href="./css/footer.css">
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
			<h1>Pickup Form </h1>
		</header>
	
		<main>
				
			<form method="GET" action="display_info.php">
				<div> Enter your following details : </div>
				
				<label for="first_name"> First Name</label><br>
				<input type="text" name="first_name" value="<?php echo htmlspecialchars($first_name); ?>" ></input>
				<span class="star"> <?php if(empty($errors['first_name'])){ ?>
				<?php echo "*"; ?>
				<?php } ?> </span>
				<?php if(!empty($errors['first_name'])){ ?>
				<span class="error"> 
				<?php echo htmlspecialchars($errors['first_name']); ?>
				</span>
				<?php } ?><br><br>
				
				<label for="last_name"> Last Name</label><br>
				<input type="text" name="last_name" value="<?php echo htmlspecialchars($last_name); ?>" ></input>
				<span class="star"> <?php if(empty($errors['last_name'])){ ?>
				<?php echo "*"; ?>
				<?php } ?> </span>
				<?php if(!empty($errors['last_name'])){ ?>
				<span class="error"> 
				<?php echo htmlspecialchars($errors['last_name']); ?>
				</span>
				<?php } ?><br><br>
				
				<label for="phone_number"> Phone Number</label><br>
				<input type="text" name="phone_number" value="<?php echo htmlspecialchars($phone_number); ?>" ></input>
				<?php if(!empty($errors['phone_number'])){ ?>
				<span class="error"> 
				<?php echo htmlspecialchars($errors['phone_number']); ?>
				</span>
				<?php } ?><br><br>
				
				<label for="no_of_persons"> Number of persons</label><br>
				<input type="text" name="no_of_persons" value="<?php echo htmlspecialchars($no_of_persons); ?>" ></input>
				<span class="star"> <?php if(empty($errors['no_of_persons'])){ ?>
				<?php echo "* &nbsp;&nbsp;&nbsp;(per person $10)"; ?>
				<?php } ?> </span>
				<?php if(!empty($errors['no_of_persons'])){ ?>
				<span class="error"> 
				<?php echo htmlspecialchars($errors['no_of_persons']); ?>
				</span>
				<?php } ?><br><br>
				
				<label for="no_of_bags"> Number of bags</label><br>
				<input type="text" name="no_of_bags" value="<?php echo htmlspecialchars($no_of_bags); ?>" ></input>
				<span class="star"> <?php if(empty($errors['no_of_bags'])){ ?>
				<?php echo "* &nbsp;&nbsp;&nbsp;(per bag $5)"; ?>
				<?php } ?> </span>
				<?php if(!empty($errors['no_of_bags'])){ ?>
				<span class="error"> 
				<?php echo htmlspecialchars($errors['no_of_bags']); ?>
				</span>
				<?php } ?><br><br>
				
				<label for="pickup_location"> Pickup location</label></br>
				<select name="pickup_location">
					<option value="Rajarampuri">Rajarampuri ($20)</option>
					<option value="Rankala">Rankala ($30)</option>
					<option value="Pratibhanagar">Pratibhanagar ($30)</option>
					<option value="ST stand">ST stand ($15)</option>
					<option value="Bindu Chauk">Bindu Chauk ($10)</option>
					<option value="Mahalaxmi Temple">Mahalaxmi Temple ($40)</option>
				</select>
				<span class="star">*</span><br>
				
				<input type="submit" value="Submit"></input>
			
		
			</form>
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
