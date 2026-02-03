<?php
$servername = "localhost";
$username = "root";  // default for XAMPP
$password = "";
$dbname = "kids_food_app";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
