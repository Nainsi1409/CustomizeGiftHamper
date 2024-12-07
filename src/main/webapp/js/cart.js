function addToCart(productName, productPrice) {
    fetch('AddToCart.jsp', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `productName=${encodeURIComponent(productName)}&productPrice=${encodeURIComponent(productPrice)}`,
    })
    .then(response => response.text())
    .then(data => {
        console.log(data); // Debugging output
        showNotification("Item added to cart successfully!");
    })
    .catch(error => {
        console.error('Error:', error);
        showNotification("Failed to add item to cart. Please try again.");
    });
}

function showNotification(message) {
    const notification = document.getElementById('notification');
    if (notification) {
        notification.textContent = message; // Update the notification message
        notification.style.display = 'block'; // Show the notification
        setTimeout(() => {
            notification.style.display = 'none'; // Hide the notification after 3 seconds
        }, 3000);
    } else {
        console.error("Notification element not found!");
    }
}
function removeFromCart(productName) {
    console.log(`Attempting to remove: ${productName}`); // Log the product name

    fetch('RemoveFromCart.jsp', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: `productName=${encodeURIComponent(productName)}`,
    })
    .then(response => response.text())
    .then(data => {
        console.log(`Response from server: ${data}`); // Log server response
        showNotification(data); // Notify user
        if (data.includes("successfully")) {
            location.reload(); // Reload the page if successful
        }
    })
    .catch(error => {
        console.error('Error:', error);
        showNotification("Failed to remove item. Please try again.");
    });
}
