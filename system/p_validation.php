<?php
session_start();
include 'db.php';

	$pname=$_POST['pname'];
	$ploc=$_POST['ploc'];
	$pdes=$_POST['pdes'];
	$filename = $_FILES['image']['name'];
	// Select file type
	$imageFileType = strtolower(pathinfo($filename,PATHINFO_EXTENSION));
	// valid file extensions
	$extensions_arr = array("jpg","jpeg","png","gif");

   //$filename = $_FILES["pimg"]["name"];
    $tempname = $_FILES["image"]["tmp_name"];
   // $folder = "./images/" . $filename;
   //move_uploaded_file($tempname, $folder);

	if(empty($pname))
	{
        header("Location: upload.php?error=Plant Name is required");
	    exit();
	}
	elseif(empty($ploc))
	{
        header("Location: upload.php?error=Plant's Location is required");
	    exit();
	}
	elseif(empty($pdes))
	{
        header("Location: upload.php?error=Description is required");
	    exit();
	}
	elseif(empty($filename))
	{
        header("Location: upload.php?error=Image is required");
	    exit();
	} else {
		if( in_array($imageFileType,$extensions_arr))
		{
			// Upload files and store in database
			if(move_uploaded_file($tempname,'image/'.$filename))
			{
				// Image db insert sql
				//$insert = "INSERT into image(file_name,uploaded_on,status) values('$filename',now(),1)";
				$query = "INSERT into plant(p_name, p_location, p_description, p_image) values('$pname', '$ploc', '$pdes','$filename')";
				if(mysqli_query($conn, $query))
				{
		  			header("Location: upload.php?success=Your plant has been added successfully");
	        		exit();
				}
				else
				{
		  			header("Location: upload.php?error=unknown error occurred");
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