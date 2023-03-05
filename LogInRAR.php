<html>
	<head>
		<title>Log-In</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="bootstrap-styles.css" > 
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	
	
	</head>
	
	<!-- Header -->
		<div class="jumbotron text-center">
		<h1 style='color:crimson;'>Log In</h1> 
		<p>Log in below. New to our site? Sign up now!</p> 
		</div>
	
	<!-- Log In Info -->
	<form action='somefile.php' method='post'>
		<div class="text-center">
		Username:<br>
		<div class="text-center">
		<input type="text" name="username"><br>
		Password:<br>
		<div class="text-center">
		<input type="text" name="password"><br><br>
	</form>
	<!-- Log In Button -->
	<form action="PreliminaryRAR.php">
	<div class="text-center">
    <button type="submit">Log In</button>
	</div>
    </form>
	
	<!-- New User Button -->
	<form action="registerRAR.php">
	<div class="text-center">
    <button type="submit">Sign Up</button>
	</div>
    </form> 
</html>