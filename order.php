<?php
include 'db.php';

$food = $_POST['food'];
$quantity = $_POST['quantity'];

// Random delivery outcome
$delivered = (rand(0,1) == 1) ? 'Delivered' : 'Failed';

// Save order to database
$stmt = $conn->prepare("INSERT INTO orders (food_name, quantity, status) VALUES (?, ?, ?)");
$stmt->bind_param("sis", $food, $quantity, $delivered);
$stmt->execute();
$stmt->close();
$conn->close();

// Return status
echo $delivered;
?>
