<?php
session_start();
include 'db.php';

if(isset($_POST['name']) && isset($_POST['user']) && isset($_POST['pass'] ) )
{
	function validate($data)
	{
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$name = validate($_POST['name']);
	$user = validate($_POST['user']);
	$pass = validate($_POST['pass']);


	if(empty($name))
	{
        header("Location: signup.php?error=Full Name is required");
	    exit();
	}
	else if(empty($user))
	{
        header("Location: signup.php?error=User Name is required");
	    exit();
	}
	else if(empty($pass))
	{
        header("Location: signup.php?error=Password is required");
	    exit();
	}

	else
	{
		$sql = "select * from webuser where full_name='$name' || user_name='$user' ";
		$result = mysqli_query($conn, $sql);

		if (mysqli_num_rows($result) > 0)
		{
			header("Location: signup.php?error=The Name or the Username is already taken try another");
	        exit();
		}
		else
		{
			$query = "insert into webuser(full_name, user_name, pass_word) values('$name', '$user', '$pass')";
        	$result = mysqli_query($conn, $query);
        	if ($result)
        	{
           		header("Location: signup.php?success=Your account has been created successfully");
	        	exit();
        	}
        	else
        	{
	        	header("Location: signup.php?error=unknown error occurred");
				exit();
			}
		}

	}
}
else
{
	header("Location: index.php");
	exit();
}
?>