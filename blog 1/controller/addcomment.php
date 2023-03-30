<?php

session_start();
	
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

$comment= $_POST['comment'];
$postId= $_POST['id'];
$user= $_SESSION['name'];
// $user_name= $_POST['user_name'];

// echo $user_name;

if(!isset($user)){
  $user= 'user';
}

$sql = "INSERT INTO comment (postID,comment,user) VALUES ($postId,'$comment','$user')";


if (mysqli_query($conn, $sql)) {
  header('location: ../index.php');
  // echo $user;
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>


