<?php

//import credentials for db
require_once  'RARDB-directory.php';

//connect to db
$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_POST['delete']))
{
	$rest_name = $_POST['rest_name'];

	$query = "DELETE FROM restaurants WHERE rest_name = '$rest_name' ";
	
	//Run the query
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	//Return to the viewAllClassics page
	header("Location: RestPageRAR.php");
	
}

?>