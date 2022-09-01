
<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['user_name']))
{
?>
	<!DOCTYPE html>
	<html>
	<head>
		<title>Medicinal Plants</title>
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
		table{
			border:1px solid black;
			width: auto;
		}
		th,td{
			border:1px solid black;
			padding: 5px;
		}
		.j{
			text-align: justify;
		}
		.error{
			color:red;
		}
		.success{
			color:green;
		}
	</style>
	</head>
	<body>
		<div class="topnav">
			<a class="active" href="dashboard.php">Medicinal Plants</a>
			<a href="upload.php">Upload</a>
			<a href="clients.php">Clients</a>
			<a style="float:right;" href="logout.php">Log Out</a>
		</div>
		<div class="header"> <h1>Plant Medic Finder</h1></div>
		<p1 style="font-size: 25px;">Welcome,  <p2 style="color:blue;"><?php echo $_SESSION['full_name'] ?></p2></p1>
		<br><br>
		<center>
			<?php
				if(isset($_GET['error']))
				{
			?>
     			<p class="error"><?php echo $_GET['error']; ?></p>
     		<?php   
     			}
     		?>
     		<?php
				if(isset($_GET['success']))
				{
			?>
     			<p class="success"><?php echo $_GET['success']; ?></p>
     		<?php   
     			}
     		?>
		<table>
				<tr>
					<th colspan="6"><h2>Uploaded Plants</h2></th>
				</tr>
				<tr>
					<th>Name</th>
					<th>Location</th>
					<th>Image</th>
					<th>Description</th>
					<th colspan="2">Actions</th>
				</tr>

				<?php
					include 'db.php';
					$query = "SELECT * from plant ORDER BY p_name";
					$result = mysqli_query($conn,$query);
					while ($row=mysqli_fetch_assoc($result))
					{
				?>
				<tr class="j">
					<td><?php echo $row['p_name']?></td>
					<td><?php echo $row['p_location']?></td>
					<td><img src="image/<?=$row['p_image']?>" height="150" width="150"></td>
					<td><?php echo $row['p_description']?></td>
					<td><a href="edit.php?editid=<?php echo $row['id']?>">Edit</a></td>
					<td><a href="delete.php?delid=<?php echo $row['id']?>">Delete</a></td>
				</tr>
				<?php
					}
				?>
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