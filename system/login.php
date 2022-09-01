<?php
session_start();
include 'db.php';

if(isset($_POST['user']) && isset($_POST['pass']) )
{
	function validate($data)
	{
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}

	$user = validate($_POST['user']);
	$pass = validate($_POST['pass']);


	if(empty($user))
	{
        header("Location: index.php?error=User Name is required");
	    exit();
	}
	else if(empty($pass))
	{
        header("Location: index.php?error=Password is required");
	    exit();
	}
	else
	{
		$query = "select * from webuser where user_name='$user' && pass_word='$pass' ";
		$result = mysqli_query($conn, $query);
		
		if (mysqli_num_rows($result) === 1)
		{
			$row = mysqli_fetch_assoc($result);
            
            if ($row['user_name'] === $user && $row['pass_word'] === $pass)
            {
            	$_SESSION['id'] = $row['id'];
            	$_SESSION['full_name'] = $row['full_name'];
            	$_SESSION['user_name'] = $row['user_name'];
            	
            	header("Location: dashboard.php");
		        exit();
            }
            else
            {
				header("Location: index.php?error=Incorect User name or password");
		        exit();
			}
		}

		else
		{
			header("Location: index.php?error=Incorect User name or password");
	        exit();
		}
	}
}else{
	header("Location: index.php");
	exit();
}
?>