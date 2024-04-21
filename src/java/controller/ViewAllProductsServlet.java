package controller;

import javax.servlet.RequestDispatcher;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.ProductDAO;
import dto.Product;

/**
 *
 * @author Sahan Maitipe
 */

public class ViewAllProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        try {
            // Retrieve products from DAO
            ProductDAO productDao = ProductDAO.getInstance();
            List<Product> productList = productDao.getAllProducts();
            
            request.setAttribute("products",productList);
            
            RequestDispatcher rd = request.getRequestDispatcher("JSPS/viewAll.jsp");
            rd.forward(request, response);
            
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        } 
    }
}
