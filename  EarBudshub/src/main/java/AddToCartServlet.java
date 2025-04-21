import java.io.IOException;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class AddToCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        List<Map<String, Object>> cart = (List<Map<String, Object>>) session.getAttribute("cart");

        if (cart == null) {
            cart = new ArrayList<>();
        }

        String name = request.getParameter("productName");
        String desc = request.getParameter("productDescription");
        String category = request.getParameter("productCategory");
        double price = Double.parseDouble(request.getParameter("productPrice"));
        int quantity = Integer.parseInt(request.getParameter("productStock"));

        Map<String, Object> item = new HashMap<>();
        item.put("name", name);
        item.put("description", desc);
        item.put("category", category);
        item.put("price", price);
        item.put("quantity", quantity);

        cart.add(item);
        session.setAttribute("cart", cart);

        response.sendRedirect("Cart.jsp");
    }
}
