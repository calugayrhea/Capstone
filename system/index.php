<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
<style type="text/css">
	body{
		background-image:url('bg.jpg');
		background-repeat: no-repeat;
		background-attachment: fixed;
		background-size: cover;
		padding: 150px 150px;
	}
	form{
		border: 2px solid orange;
		background: lightblue;
		border-radius: 15px;
		width: 350px;
		height: 250px;
	}
	h1{
		text-align: center;
	}
	label{
		font-size: 18px;
	}
	input{
		border-radius: 5px;
		width: 200px;
	}
	button {
	background: green;
	color: white;
	border-radius: 5px;
	border: none;
	width: 100px;
	}
	.button2 {
	background: blue;
	}
	button:hover{
	opacity: .7;
	}
	.error{
   	background: red;
   	color: white;
   	width: 200px;
   	border-radius: 5px;
   	}
	
</style>
</head>
<body>
	<center>
	<form action="login.php" method="POST">
		
		<h1>Log In</h1>

		<?php if(isset($_GET['error'])) { ?>
     	<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>

		<label>Username:&nbsp;&nbsp;</label>
		<input type="text" name="user" placeholder="Please Enter your Username"><br><br>

		<label>Password:&nbsp;&nbsp;</label>
		<input type="password" name="pass" placeholder="Please Enter your Username"><br><br>

		<button type="submit" name="login">LOGIN</button>&nbsp;&nbsp;&nbsp;&nbsp;<button class="button2" type="reset" name="reset">CLEAR</button><br><br>
		
		<br>No Account yet?<a href="signup.php">Register>></a>
	</form>
	</center>
</body>
</html>