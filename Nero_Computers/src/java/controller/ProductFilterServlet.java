package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author Sahan Maitipe
 */

public class ProductFilterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String category = request.getParameter("category");
        
        if (category.equals("All")) {
            response.sendRedirect("ViewAllProductsServlet");
        } else {
            response.sendRedirect("SelectBrandPageServlet?category=" + category);
        }
    }
}
