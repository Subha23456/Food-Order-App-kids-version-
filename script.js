function orderFood(food) {
    let inputId = food.replace(/\s+/g,'') + "Qty";
    let qtyInput = document.getElementById(inputId);
    let quantity = parseInt(qtyInput.value) || 1;

    alert(`Your order confirm 🚴 ${quantity} ${food} is on the way...`);

    // AJAX request to save order
    let xhr = new XMLHttpRequest();
    xhr.open("POST", "order.php", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function() {
        if(xhr.readyState == 4 && xhr.status == 200){
            let result = xhr.responseText;
            if(result == 'Delivered'){
                window.location.href = "success.html?food=" + encodeURIComponent(food) + "&qty=" + quantity;
            } else {
                window.location.href = "failed.html?food=" + encodeURIComponent(food) + "&qty=" + quantity;
            }
        }
    };
    xhr.send("food=" + encodeURIComponent(food) + "&quantity=" + quantity);
}
