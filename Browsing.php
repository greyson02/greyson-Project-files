<html>
	<head>
		<title>Browse Restaurants</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="bootstrap-styles.css" > 
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	
	
	</head>
	
		<!-- Navbar -->
<?php
	include 'navbarRAR.php';
?>
	
	
	<!-- Header -->
		<div class="jumbotron text-center">
		<h1 style='color:crimson;'>Rate a Restaurant</h1> 
		<p>Find your next great meal</p> 
		</div>
	
	<!-- Filter -->
	<div class="text-center">
	<h3 style= 'color:crimson;'>Select Restaurants by</h3>
	</div>
	
	<!-- dropdown -->
	
	<select name='category' id='category'>
		<option value='Food Item' $A>Food Item</option>
		<option value='Rating' $B>Rating</option>
		<option value='Follower Count' $C>Follower Count</option>
    </select>
	
</html>

<?php

	

?>