<?php
include "db.php";

mysqli_query($conn, "UPDATE orders SET status='cancelled' WHERE id=1");

echo "❌ Order cancelled. Refund initiated!";
?>
