<?php
$servername = 'localhost';
$username = 'root';
$password = '';
$db='diary';
$conn = mysqli_connect($servername,$username,$password,$db);
if (!$conn) 
{
    die("Connection failed: " . mysqli_connect_error());
}
?>