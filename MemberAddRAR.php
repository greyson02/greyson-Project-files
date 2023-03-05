<!-- Admin adding a member -->

<html>

	<head>
		<title>Add Member Page</title>
	</head>
	
	<body>
		<form method='post' action='MemberAddRAR.php'>
			<pre>
			First Name: <input type='text' name='firstname'>
			Last Name: <input type='text' name='lastname'>
			Username: <input type='text' name='username'>
			Password: <input type='text' name='password'>
			Email: <input type='text' name='email'>
			Phone Number: <input type='text' name='phone'>
			<input type ='submit' value='Register'>
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
if(isset($_POST['username'], $_POST['password'], $_POST['firstname'], $_POST['lastname'], $_POST['email'], $_POST['phone'])) 
{
	//Get data from POST object
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$username = $_POST['username'];
	$password = $_POST['password'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	
	$query = "INSERT INTO member (first_name, last_name, user_name, password, email, phone) VALUES ('$firstname', '$lastname','$username', '$password', '$email', '$phone')";
	
	//echo $query.'<br>';
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	//Forward to main member home page
	header("Location: MemberPageRAR.php");
		
}

?>