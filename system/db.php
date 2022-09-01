<?php

	$sname= "localhost";
	$uname= "root";
	$password = "";
	$db_name = "systemdatabase";

	$conn = mysqli_connect($sname, $uname, $password, $db_name);

	if (!$conn) {
		die("failed to connect!");
	}
?>