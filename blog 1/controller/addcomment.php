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

$comment= $_POST['comment'];
$postId= $_POST['id'];
// $user_name= $_POST['user_name'];

// echo $user_name;

$sql = "INSERT INTO comment (postID,comment) VALUES ($postId,'$comment')";


if (mysqli_query($conn, $sql)) {
  echo "Comment added successfully";
  header('location: ../index.php');
} else {
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>


