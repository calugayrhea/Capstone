
<?php 
	session_start();
	include('db.php');

	if (isset($_SESSION['id']) && isset($_SESSION['user_name']))
	{
		$editid = $_GET['editid'];
		$query = "SELECT * from plant WHERE id='".$editid."'";
		$result = mysqli_query($conn,$query);
		$row=mysqli_fetch_array($result)
?>
		<!DOCTYPE html>
		<html>
		<head>
			<title>Upload</title>
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
				<a href="dashboard.php">Medicinal Plants</a>
				<a class="active" href="upload.php">Upload</a>
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

		<form method="POST" action="update.php?editid=<?php echo $editid;?>" enctype="multipart/form-data">
			<label for="pname">Name:</label><br>
			<input type="text" name="pname" value="<?php echo $row['p_name'] ?>" required="" ><br><br>
			<label for="ploc">Location:</label><br>
			<input type="text" name="ploc" value="<?php echo $row['p_location'] ?>" required=""><br><br>
			<label for="pdes">Description:</label><br>
			<textarea name="pdes" rows="10" cols="50" required=""><?php echo $row['p_description'] ?></textarea><br><br>
			<img src="image/<?=$row['p_image']?>" height="150" width="150"><br><br>
			<input type="submit" name="upbtn" value="Update">
		</form>
		</center>
	</body>
	</html>

<?php 
} 
else
{
    header("Location: index.php");
    exit();
}
?>