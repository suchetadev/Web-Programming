<?php

	//start session here
	session_start();
	
	$error=" ";
	if(isset($_POST["submit"])){
		
		if(empty($_POST["username"]) || empty($_POST["password"])){
			
			$error = "Please enter the user name and password ..";
		}
		else{
			
			$username = $_POST["username"];
			$password = $_POST["password"];
			
			//search the database for valid user
			$dsn = 'mysql:host=localhost;dbname=config';
			$name = 'root';
			$pwd = null;
			
			try{
				$db = new PDO($dsn, $name, $pwd);
				$query = "SELECT username,password FROM users WHERE username = :username AND password = :password";
				
				$statement = $db->prepare($query);
				$statement->bindValue(':username',$username);
				$statement->bindValue(':password',$password);
				$statement->execute();
				$user = $statement->fetch();
				
				
				if(isset($user[0])){
					
					$_SESSION["login_user"] = $username;//initialize session
					header("Location:pickup_form.php");
				}
				else{
					
					$error = "Username or password is invalid.";
				}
				
				$statement->closeCursor();
			
			}
			catch(Exception $e){
				$error_message = $e->getMessage();
				echo"<p>Error message : $error_message </p>";
			}
		}
	}
	

?>

<!doctype html>

<!--
	This document displays log in form to user
-->
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Login form....</title>
		<link rel="stylesheet" href="./css/normalize.css">
		<link rel="stylesheet" href="./css/login_form.css">
	</head>
	<body>
		<header>
			<h1>Kolhapur Tourism </h1>
		</header>
	
		<main>
				
			<form method="POST" action="">
				<div id="header">Sign in for booking</div>
				
				<label for="username"> User Name :</label><br>
				<input type="text" name="username"></input><br>
				
				<label for="password"> Password :</label><br>
				<input type="password" name="password"></input><br>
				
				<input type="submit" name="submit" value="Login"></input>
				<span class="error"><?php  echo $error; ?></span>
				<hr>
				
				<div id="new_user">New User?</div>
				<a href="registration.php"><input type="button" value="Create your new account"></input></a>
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
