<%@ page import="java.util.*" %>
<%@ include file="Header.jsp" %>
<html>
<head>
    <title>Payment Status</title>
    <link rel="stylesheet" href="css/paymentProcess.css">
</head>
<body>
    <div class="payment-container">
        <%
            String cardName = request.getParameter("cardName");
            String cardNumber = request.getParameter("cardNumber");
            String expiry = request.getParameter("expiry");
            String cvv = request.getParameter("cvv");
            String totalAmount = request.getParameter("totalAmount");

            // Simulate payment processing
            boolean isValid = cardNumber.length() == 5 && cvv.length() == 3;

            if (isValid) {
        %>
        <div class="payment-success">
            <h2 class="fade-in">Payment Successful!</h2>
            <p class="slide-in">Thank you, <strong><%= cardName %></strong>. Your payment of <span class="amount">&#8377;<%= totalAmount %></span> has been processed successfully.</p>
            <a href="index.jsp" class="btn-home btn-animate">Return to Home</a>
        </div>
        <%
                session.removeAttribute("cart"); // Clear the cart after successful payment
            } else {
        %>
        <div class="payment-failed">
            <h2 class="fade-in">Payment Failed!</h2>
            <p class="slide-in">Invalid card details. Please try again.</p>
            <a href="Payment.jsp?totalAmount=<%= totalAmount %>" class="btn-retry btn-animate">Go Back</a>
        </div>
        <%
            }
        %>
    </div>
    <%@ include file="Footer.jsp" %>
</body>
</html>
