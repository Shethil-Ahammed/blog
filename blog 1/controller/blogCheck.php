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

$btitle= $_POST['btitle'];
$bblog= $_POST['bblog'];


$sql = "INSERT INTO blog (title, paragraph) VALUES ('$btitle', '$bblog')";


if (mysqli_query($conn, $sql)) {
  echo "New blog added successfully";
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>

