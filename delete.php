<?php

include "dbConn.php"; // Using database connection file here

$id = $_GET['id']; // get id through query string

$del = mysqli_query($db,"delete from userstandings where id = '$id'"); // delete query

if($del)
{
    mysqli_close($db); // Close connection
    header("location:myleagues.php"); // redirects back to league standings
    exit;	
}
else
{
    echo "Error deleting record"; // display error message if not delete
}
?>