<?php
session_start();
include 'db.php';

	$editid =$_GET['editid'];
	$filename = $_FILES['image']['name'];
	// Select file type
	$imageFileType = strtolower(pathinfo($filename,PATHINFO_EXTENSION));
	// valid file extensions
	$extensions_arr = array("jpg","jpeg","png","gif");

   //$filename = $_FILES["pimg"]["name"];
    $tempname = $_FILES["image"]["tmp_name"];
   // $folder = "./images/" . $filename;
   //move_uploaded_file($tempname, $folder);

	if(empty($filename))
	{
        header("Location: edimage.php?editid=$editid");
	    exit();
	} 
	else
	{
		if ( in_array($imageFileType,$extensions_arr))
		{
			if(move_uploaded_file($tempname,'image/'.$filename))
			{
				// Image db update sql
				$query = "UPDATE plant SET p_image='".$filename."' WHERE id='".$editid."' ";
				if(mysqli_query($conn, $query))
				{
					$selectplant = "SELECT p_name from plant WHERE id='".$editid."' ";
					$queryplant = mysqli_query($conn, $selectplant);
					while($row=mysqli_fetch_assoc($queryplant))
					{
						$selected = $row['p_name'];
					}
					header("Location: dashboard.php?success=Your plant('".$selected."') has been Updated successfully");
	        		exit();	
				}
				else
				{
		  			header("Location: dashboard.php?error=unknown error occurred");
					exit();
				}
			}
			else
			{
				echo 'Error in uploading file - '.$_FILES['image']['name'].'<br/>';
			}
		}
	}
?>