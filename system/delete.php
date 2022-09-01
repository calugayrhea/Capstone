<?php
include 'db.php';

    $delid = $_GET['delid'];
    $query = " DELETE from plant where id = '".$delid."'";
    $result = mysqli_query($conn,$query);
    if($result)
    {
        $selectplant = "SELECT p_name from plant WHERE id='".$delid."' ";
        $queryplant = mysqli_query($conn, $selectplant);
        while($row=mysqli_fetch_assoc($queryplant))
        {
            $selected = $row['p_name'];
        }
        header("Location: dashboard.php?success=Your plant('".$selected."') has been Deleted successfully");
        exit();
    }
    else
    {
        header("Location: dashboard.php?error=unknown error occurred");
        exit();
    }
?>