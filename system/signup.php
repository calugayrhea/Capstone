<!DOCTYPE html>
<html>
<head>
	<title>SignUp</title>
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
		border-radius: 15px;
		background: lightblue;
		width: 350px;
	}
	h1{
		text-align: center;
	}
	label{
		font-size: 17px;
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
	.error, {
   	background: red;
   	color: white;
   	width: 200px;
   	border-radius: 5px;
   	}
   	.success {
   	background: green;
   	color: white;
   	width: 200px;
   	border-radius: 5px;
   	}
</style>
</head>

<body>
	<center>
<form action="validation.php" method="POST">
	
	Create your own Account Now!<br><a href="login.php">I already have an Account>></a>
	<h1>Sign Up</h1>
	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
    <?php } ?>
    <?php if (isset($_GET['success'])) { ?>
               <p class="success"><?php echo $_GET['success']; ?></p>
          <?php } ?>
	<label>Full Name:&nbsp;&nbsp;</label>
	<input type="text" name="name" placeholder="Please Enter your Name"><br><br>
	<label>Username:&nbsp;&nbsp;</label>
	<input type="text" name="user" placeholder="Please Enter your Username"><br><br>
	<label>Password:&nbsp;&nbsp;</label>
	<input type="password" name="pass" placeholder="Please Enter your Password"><br><br>
	<button type="submit" name="register">REGISTER</button>&nbsp;&nbsp;&nbsp;&nbsp;<button class="button2" type="reset" name="reset">CLEAR</button>
	
</form>
</center>
</body>

</html>