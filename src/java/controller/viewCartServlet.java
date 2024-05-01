package controller;

import dao.CartDAO;
import dto.CartItem;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sahan Maitipe
 */
public class viewCartServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int userID = (int) request.getSession().getAttribute("userID");
        CartDAO cartDAO = null;

        try {
            cartDAO = CartDAO.getInstance();
            List<CartItem> cartItems = cartDAO.getProductDetailsForUser(userID);
            
            request.setAttribute("cartItems", cartItems);
            
            RequestDispatcher rd = request.getRequestDispatcher("/JSPS/cartItems.jsp");
            rd.forward(request, response);
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
