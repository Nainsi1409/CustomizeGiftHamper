

<%@ page import="java.util.*" %>
<%
    String productName = request.getParameter("productName");
    String productPriceStr = request.getParameter("productPrice");

    if (productName != null && productPriceStr != null) {
        int productPrice = Integer.parseInt(productPriceStr);

        // Retrieve or create the session cart
        List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
        }

        // Add product to cart
        Map<String, Object> product = new HashMap<>();
        product.put("name", productName);
        product.put("price", productPrice);
        cart.add(product);
        System.out.println("Cart contents: " + session.getAttribute("cart"));

        // Update session attribute
        session.setAttribute("cart", cart);

        out.print("Product added to cart successfully!");
    } else {
        out.print("Invalid product data!");
    }
%>