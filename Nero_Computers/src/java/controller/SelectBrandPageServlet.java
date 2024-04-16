package controller;

import dao.BrandDAO;
import dto.Brand;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sahan Maitipe
 */
public class SelectBrandPageServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String category = request.getParameter("category");

            BrandDAO brandDAO = BrandDAO.getInstance();
            List<Brand> brands = brandDAO.getBrandsByCategory(category);

            request.setAttribute("category", category);
            request.setAttribute("brands", brands);

            request.getRequestDispatcher("brandSelection.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }

    }
}
