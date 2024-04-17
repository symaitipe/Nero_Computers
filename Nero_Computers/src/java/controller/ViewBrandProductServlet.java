package controller;

import dao.ProductDAO;
import dto.Product;
import java.io.IOException;
import java.sql.SQLException;
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
public class ViewBrandProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {

            String category = request.getParameter("category");
            String brand = request.getParameter("brand");

            // Retrieve products for the selected brand and category from the database
            ProductDAO productDao = ProductDAO.getInstance();
            List<Product> productList = productDao.getProductsByBrandAndCategory(brand, category);

            request.setAttribute("products", productList);

            RequestDispatcher rd = request.getRequestDispatcher("JSPS/viewBrandProducts.jsp");
            rd.forward(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }
    }
}
