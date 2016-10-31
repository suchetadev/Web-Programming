<?php

	
	$error = " ";
	$confirmation = "";
	if(isset($_POST["submit"])){
		
		if(empty($_POST["username"]) || empty($_POST["email"])|| empty($_POST["password"]) || empty($_POST["password_again"])){
			
			$error = "Please enter all fields ....";
		}
		else{
			
			$username = $_POST["username"];
			$email = $_POST["email"];
			$password = $_POST["password"];
			$password_again = $_POST["password_again"];
			
			//insert data into database
			$dsn = 'mysql:host=localhost;dbname=config';
			$name = 'root';
			$pwd = null;
			
			try{
				$db = new PDO($dsn, $name, $pwd);
				
				$query = "INSERT INTO users (username,email,password) VALUES (:username,:email,:password)";
				
				$statement = $db->prepare($query);
				$statement->bindValue(':username',$username);
				$statement->bindValue(':email',$email);
				$statement->bindValue(':password',$password);
				$statement->execute();
				$statement->closeCursor();
				
				$confirmation = "Your account is created, you can login now!";
			}
			catch(Exception $e){
				$error_message = $e->getMessage();
				echo"<p>Error message : $error_message </p>";
			}
		}//end else
	} 
?>


<!doctype html>

<!--
	This document displays log in form to user
-->
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Registration form....</title>
		<link rel="stylesheet" href="./css/normalize.css">
		<link rel="stylesheet" href="./css/registration.css">
	</head>
	<body>
		<header>
			<h1>Kolhapur Tourism</h1>
		</header>
	
		<main>
				
			<form method="POST" action="">
				<div id="header">Create account<?php echo "<br>".$confirmation; ?></div>
				
				<label for="username"> User Name :</label><br>
				<input type="text" name="username"></input><span class="star">*</span><br>
				
				<label for="email"> Email :</label><br>
				<input type="text" name="email"></input><span class="star">*</span><br>
				
				<label for="password"> Password :</label><br>
				<input type="password" name="password"></input><span class="star">*</span><br>
				
				<label for="password_again"> Password again :</label><br>
				<input type="password" name="password_again"></input><span class="star">*</span><br>
				
				<input type="submit" name="submit" value="Create your account"></input><br>
				<span class="error"><?php echo $error; ?></span>
				<hr>
				
				<div id="account">Already have an account?
				<a href="login_form.php">Sign in</a>
				</div>
				
			</form>
		</main>

		<footer>			
			<div align="center">
				<br><br>
				Copyright 2016-2018 | All rights reserved | Sucheta Patil.
			</div>
		</footer>
	</body>
</html>
