<?php
error_reporting(0);
 include 'db.php';

 $email_address = $_POST['email_address'];
 $pass_word = $_POST['pass_word'];
 $sql = "SELECT * FROM appuser WHERE email_address = '".$email_address."' AND pass_word = '".$pass_word."'";
 $result = mysqli_query($conn,$sql);
 $count = mysqli_num_rows($result);
 if($count == 1){
    echo json_encode("Success");
 } 
 else{
    echo json_encode("Error");
 }
 
?>