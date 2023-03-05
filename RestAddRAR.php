<!-- Admin adding a restauarant -->

<html>

	<head>
		<title>Add Restaurant Page</title>
	</head>
	
	<body>
		<form method='post' action='RestAddRAR.php'>
			<pre>
			Restaurant Name: <input type='text' name='rest_name'>
			Address: <input type='text' name='address'>
			Phone: <input type='text' name='phone'>
			Email: <input type='text' name='email'>
			Owner: <input type='text' name='owner_name'>
			Premium (Y/N): <input type='text' name='premium_member'>
			<input type ='submit' value='Add Restaurant'>
			</pre>
		</form>
	</body>
	
</html>

<?php
//import credentials for db
require_once  'RARDB-directory.php';

//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

//check if ISBN exists
if(isset($_POST['rest_name'], $_POST['address'], $_POST['phone'], $_POST['email'], $_POST['owner_name'], $_POST['premium_member'])) 
{
	//Get data from POST object
	$rest_name = $_POST['rest_name'];
	$address = $_POST['address'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$owner_name = $_POST['owner_name'];
	$premium = $_POST['premium_member'];
	
	$query = "INSERT INTO restaurants (rest_name, address, phone, email, owner_name, premium_member) VALUES ('$rest_name', '$address','$phone', '$email', '$owner_name', '$premium')";
	
	//echo $query.'<br>';
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	//Forward to main member home page
	header("Location: RestPageRAR.php");
		
}

?>