<?php
	include 'db.php';
	$query = "select * from plant";
	$result = mysqli_query($conn,$query);
	$arr=[];
	while ($row=mysqli_fetch_assoc($result))
	{
		$arr[]=$row;
	}
	print(json_encode($arr));
?>
