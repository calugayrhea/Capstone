<?php
session_start();
include 'db.php';

	$editid =$_GET['editid'];
	$pname=$_POST['pname'];
	$ploc=$_POST['ploc'];
	$pdes=$_POST['pdes'];
	

	if(empty($pname))
	{
        header("Location: edit.php?editid=$editid");
	    exit();
	}
	elseif(empty($ploc))
	{
        header("Location: edit.php?editid=$editid");
	    exit();
	}
	elseif(empty($pdes))
	{
        header("Location: edit.php?editid=$editid");
	    exit();
	}else
	{
		// Image db update sql
		$query = "UPDATE plant SET p_name='".$pname."', p_location='".$ploc."', p_description='".$pdes."' WHERE id='".$editid."' ";
		if(mysqli_query($conn, $query))
		{
			
			header("Location: edimage.php?editid=$editid;");
	        exit();	
		}
		else
		{
		  header("Location: edimage.php?editid=$editid;");
		  exit();
		}
	}	
?>