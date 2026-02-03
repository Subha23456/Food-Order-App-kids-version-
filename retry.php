<?php
include "db.php";

mysqli_query($conn, "UPDATE orders SET status='not_delivered' WHERE id=1");

echo "🔄 We are trying again to deliver your food!";
?>
