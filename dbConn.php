<?php

$db = mysqli_connect("localhost","root","liam1234","techinstinct");

if(!$db)
{
    die("Connection failed: " . mysqli_connect_error());
}

?>