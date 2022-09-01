
<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['user_name']))
{
?>
	<!DOCTYPE html>
	<html>
	<head>
		<title>Clients</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
	<style type="text/css">
		body{
			background-image:url('itbg.jpg');
			background-repeat: no-repeat;
			background-attachment: fixed;
			background-size: cover;
		}
		.topnav {
			background-color: #333;
			overflow: hidden;
		}
		.topnav a {
  			float: left;
  			color: #f2f2f2;
  			text-align: center;
  			padding: 14px 16px;
  			text-decoration: none;
  			font-size: 17px;
		}
		.topnav a:hover {
  			background-color: #ddd;
  			color: black;
  		}
  		.topnav a.active {
  			background-color: #04AA6D;
  			color: white;
		}
		.header{
			background-color:blue;
			border-radius: 10px;
			color:white;
			text-align:center;
		}
		table,th,td{
			border:1px solid black;
		}
	</style>
	</head>
	<body>
		<div class="topnav">
			<a href="dashboard.php">Medicinal Plants</a>
			<a href="upload.php">Upload</a>
			<a class="active" href="clients.php">Clients</a>
			<a style="float:right;" href="logout.php">Log Out</a>
		</div>
		<div class="header"> <h1>Plant Medic Finder</h1></div>
		<p1 style="font-size: 25px;">Welcome,  <p2 style="color:blue;"><?php echo $_SESSION['full_name'] ?></p2></p1>
		<br><br>
		<center>
		<table>
				<tr>
					<th colspan="8">Clients/AppUsers</th>
				</tr>
				<tr>
					<th>Fullname</th>
					<th>Username</th>
					<th>Password</th>
					<th>Email</th>
					<th>Home Address</th>
					<th>Contact No.</th>
					<th colspan="2">Actions</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
		</table>
		</center>
	</body>
	</html>
<?php 
} else {
    header("Location: index.php");
    exit();
}
?>