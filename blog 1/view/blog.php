<?php 

session_start();
$name = $_SESSION['name'];


if(isset($name)) {
	
	
?>


<!DOCTYPE html>
<html>
<head>
	<title>Write a Blog</title>
</head>
<body>

<?php echo "<h3> Welcome $name  </h3>" ?>

		<form method="post" action="../controller/blogCheck.php">
			<fieldset>
				
			            
						<td>Blog Title</td>
						<td><input type="text" name="btitle"></td>

                        <br> <br><br> 
                        <br> 
					
						<td>Blog</td>
						<input type="text" name="bblog" style="width: 50%;height: 160px;">

                        <br> <br><br> 
                        
				
						<td></td>
						<td><input type="submit" name="submit" value="Submit"></td>

						<!-- <a class="nav-item nav-link" href="../index.php">Home</a> -->
						<input type="button" onclick="window.location.href='../index.php';" value="Home" />
						<input type="button" onclick="window.location.href='../controller/logout.php';" value="Logout" />
				
			</fieldset>
		</form>


        
</body>
</html>


<?php } else{
header('location: login.php');

}

?>