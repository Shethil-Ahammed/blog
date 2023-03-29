<!DOCTYPE html>
<html>
<head>
	<title>Write a Blog</title>
</head>
<body>
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

						<input type="button" onclick="window.location.href='../controller/logout.php';" value="Logout" />
				
			</fieldset>
		</form>

        
</body>
</html>