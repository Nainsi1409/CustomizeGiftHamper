<%@ page import="java.util.*" %>
<%@ include file="Header.jsp" %>
<html>
<head>
    <title>Secure Payment Gateway</title>
    <link rel="stylesheet" type="text/css" href="css/payment.css">
</head>
<body>
    <div class="payment-container">
        <h1 class="animate-heading">Secure Payment Portal</h1>
        <div class="payment-summary animate-summary">
            <h2>Order Summary</h2>
            <p>Total Amount: <span class="amount">&#8377;<%= request.getParameter("totalAmount") %></span></p>
        </div>
        <form action="ProcessPayment.jsp" method="POST" class="payment-form animate-form">
            <input type="hidden" name="totalAmount" value="<%= request.getParameter("totalAmount") %>">

            <div class="form-group">
                <label for="cardName">Name on Card</label>
                <input type="text" id="cardName" name="cardName" placeholder="e.g., Nainsi" required>
            </div>

            <div class="form-group">
                <label for="cardNumber">Card Number</label>
                <input type="text" id="cardNumber" name="cardNumber" maxlength="16" placeholder="e.g., 1234 5678 9012 3456" required>
            </div>

            <div class="form-row">
                
                <div class="form-group">
                    <label for="cvv">CVV</label>
                    <input type="password" id="cvv" name="cvv" maxlength="3" placeholder="123" required>
                </div>
            </div>

            <div class="form-group">
                <label for="address">Delivery Address</label>
                <textarea id="address" name="address" rows="3" placeholder="e.g., 123 Street Name, City, State" required></textarea>
            </div>

            <div class="form-group">
                <label for="deliveryDate">Delivery Date</label>
                <input type="date" id="deliveryDate" name="deliveryDate" required>
            </div>

            <button type="submit" class="pay-button animate-button">Pay Now</button>
        </form>
    </div>
    <%@ include file="Footer.jsp" %>
</body>
</html>
