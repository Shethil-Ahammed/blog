<?php
	session_start();
	require_once('../model/usersModel.php');

	if(isset($_POST['submit'])){

		$name= $_POST['name'];
		$password= $_POST['password'];

		if($name != '' && $password != ''){

			$status = validate($name, $password);

			if($status){
				setcookie('flag', 'true', time()+3600, '/');
				$_SESSION['name'] = $name;
				header('location: ../view/blog.php');
			}else{
				echo 'invlaid name/password';
			}


		}else{
			echo "null value found...";
		}
	}else{
		echo "invalid request...";
	}
?>