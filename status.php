<?php
include "db.php";

$sql = "SELECT * FROM orders ORDER BY id DESC LIMIT 1";
$result = mysqli_query($conn, $sql);
$order = mysqli_fetch_assoc($result);

if ($order['status'] == "Not Delivered") {
    echo "😔 Oops! Your food did not arrive.<br><br>
          🔁 Please order again<br>
          📞 Ask Mom or Dad for help<br>
          🎁 Sorry! Get a free ice cream next time";
}
?>
