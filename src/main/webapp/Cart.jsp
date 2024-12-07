<%@ page import="java.util.*" %>
<%@ include file="Header.jsp" %>
<html>
<head>
    <title>Your Cart</title>
    <link rel="stylesheet" href="css/cart.css">
</head>
<body>
    <div class="cart-container">
        <h1 class="cart-heading">Your Shopping Cart</h1>
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
                    int total = 0;

                    if (cart != null && !cart.isEmpty()) {
                        for (Map<String, Object> item : cart) {
                            String name = (String) item.get("name");
                            int price = (int) item.get("price");
                            total += price;
                %>
                <tr class="cart-row">
                    <td><%= name %></td>
                    <td>&#8377;<%= price %></td>
                    <td>
                        <button class="remove-btn" onclick="removeFromCart('<%= name %>')">Remove</button>
                    </td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="3" class="empty-cart">Your cart is empty!</td>
                </tr>
                <% } %>
            </tbody>
        </table>

        <div class="cart-summary">
            <h3>Total: <span class="total-amount">&#8377;<%= total %></span></h3>
            <%
                if (total > 0) {
            %>
            <form action="Payment.jsp" method="POST" class="checkout-form">
                <input type="hidden" name="totalAmount" value="<%= total %>">
                <button type="submit" class="checkout-btn">Proceed to Payment</button>
            </form>
            <%
                }
            %>
        </div>
    </div>
    <script src="js/cart.js"></script>
    <%@ include file="Footer.jsp" %>
</body>
</html>
