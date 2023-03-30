<?php
	
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blog";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$uname= $_POST['uname'];
$upassword= $_POST['upassword'];

$sql = "INSERT INTO user (name,password) VALUES ('$uname','$upassword')";


if (mysqli_query($conn, $sql)) {
  echo "Ssuccessfully Added";
  header('location: ../view/Login.php');
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>


