package controller;

import dao.CartDAO;
import dto.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sahan Maitipe
 */
public class AddToCartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productID;
        String username;
        int userID;

        try {
            productID = Integer.parseInt(request.getParameter("productID"));
            username = request.getParameter("username");
            userID = Integer.parseInt(request.getParameter("userID"));

            int quantity = 1;

            Cart cart = new Cart();
            cart.setUserID(userID);
            cart.setProductID(productID);
            cart.setQuantity(quantity);

            CartDAO cartDAO = CartDAO.getInstance();
            boolean success = cartDAO.addToCart(cart);

            if (success) {
                request.setAttribute("successMessage", "Item Added To Cart Successfully.");
            } else {
                request.setAttribute("errorMessage", "Error Adding Item To Cart. Please Try Again.");
            }

            request.getRequestDispatcher("JSPS/viewAll.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "You must Login First To Add Items.");
            request.getRequestDispatcher("JSPS/viewAll.jsp").forward(request, response);
        }
    }
}
