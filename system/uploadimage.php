<?php
  include 'db.php';

  if (isset($_POST['name'])) {
  	$name = $_POST['name'];
  } esle return;
  if (isset($_POST['data'])) {
  	$data = $_POST['data'];
  } esle return;
  $path = "image/$name";

  $query ="insert into plant (p_image) values ('".$path."') ";
  file_put_contents($path, base64_decode($data));
  $arr=[];
  $exe = mysqli_query($conn,$query);
  if($exe){
  	$arr["success"]="true";
  } else {
  	$arr["success"]="false";
  }
  print(json_encode($arr));
  /*
  $product_owner = $_POST['product_owner'];
  $productname = $_POST['productname'];
  $productprice = $_POST['productprice'];
  $producttype = $_POST['producttype'];
  $image = $_POST['image'];

  //$realImage = base64_decode($image);

  $connect->query("INSERT INTO product (product_name, product_price, product_type, product_owner, image) VALUES 
('".$productname."','".$productprice."','".$producttype."','".$product_owner."','".$image."')")
	*/

?>