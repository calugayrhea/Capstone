<?php
error_reporting(0);
include 'db.php';
if(!$conn)
{
    echo "Database connection failed";
}
$full_name = $_POST['full_name'];
$contact_number = $_POST['contact_number'];
$home_address = $_POST['home_address'];
$email_address = $_POST['email_address'];
$pass_word = $_POST['pass_word'];

$sql = "SELECT email_address FROM appuser WHERE email_address = '".$email_address."'";
$result = mysqli_query($conn,$sql);
$count = mysqli_num_rows($result);
if($count == 1){
    echo json_encode("Error");
}else{
    $insert = "INSERT INTO appuser(full_name,pass_word,email_address,home_address,contact_number) VALUES ('".$full_name."','".$pass_word."','".$email_address."','".$home_address."','".$contact_number."')";
        $query = mysqli_query($conn,$insert);
        if($query){
            echo json_encode("Success");
        }
}
?>