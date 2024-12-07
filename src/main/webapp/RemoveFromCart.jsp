<%@ page import="java.util.*" %>
<%
    String productName = request.getParameter("productName");
    System.out.println("Product to remove: " + productName); // Log product name

    if (productName != null && !productName.isEmpty()) {
        List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");

        if (cart != null) {
            System.out.println("Cart before removal: " + cart); // Log cart contents
            boolean itemRemoved = cart.removeIf(item -> productName.equals(item.get("name")));

            if (itemRemoved) {
                System.out.println("Item removed: " + productName); // Log success
                session.setAttribute("cart", cart); // Update session
                System.out.println("Cart after removal: " + cart); // Log updated cart
                out.print("Item removed successfully!");
            } else {
                System.out.println("Item not found: " + productName); // Log failure
                out.print("Item not found in cart!");
            }
        } else {
            System.out.println("Cart is empty!"); // Log empty cart
            out.print("Cart is empty!");
        }
    } else {
        System.out.println("Invalid product name received!"); // Log invalid name
        out.print("Invalid product name!");
    }
%>
