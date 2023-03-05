<html>

<?php

require_once  'RARDB-directory.php';

$conn = new mysqli($hn, $un, $pw, $db);
if($conn->connect_error) die($conn->connect_error);

if(isset($_GET['rest_id'])){

$rest_id = $_GET['rest_id'];

$query = "SELECT * FROM restaurants WHERE rest_id=$rest_id";

$result = $conn->query($query); 
if(!$result) die($conn->error);

$rows = $result->num_rows;

for($j=0; $j<$rows; $j++)
{
	//$result->data_seek($j); 
	$row = $result->fetch_array(MYSQLI_ASSOC); 
	
echo <<<_END

	<pre>
	<form action='UpdateRestRAR.php' method='post'>
	Restaurant Name: <input type='text' name='rest_name' value='$row[rest_name]'>
	Address: <input type='text' name='address' value='$row[address]'>
	Phone: <input type='text' name='phone' value='$row[phone]'>
	Email: <input type='text' name='email' value='$row[email]'>
	Owner Name: <input type='text' name='owner_name' value='$row[owner_name]'>
	Premium: <input type='text' name='premium_member' value='$row[premium_member]'>
	ID: $row[rest_id]			
	</pre>
	
	
		<input type='hidden' name='update' value='yes'>
		<input type='hidden' name='rest_id' value='$row[rest_id]'>
		<input type='submit' value='Update Restauarant'>	
	</form>
	
_END;

}

}

if(isset($_POST['update'])){
	
	$rest_id = $_POST['rest_id'];
	$rest_name = $_POST['rest_name'];
	$address = $_POST['address'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$owner_name = $_POST['owner_name'];
	$premium_member = $_POST['premium_member'];
	
	$query = "UPDATE restaurants set rest_name='$rest_name', address='$address', phone='$phone', email='$email', owner_name='$owner_name', premium_member='$premium_member' WHERE rest_id=$rest_id";
	
	$result = $conn->query($query); 
	if(!$result) die($conn->error);
	
	header("Location: RestPageRAR.php");
	
}

$conn->close();

?>

</html>