<?php
include 'db.php';
$query = "select * from plant";
$result = mysqli_query($conn,$query);
if($result)
{
	$arr = [];
	while($row = mysqli_fetch_array($result))
	{
		$arr[] = $row;
	}
	print json_encode($arr);
}
?>