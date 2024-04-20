package controller;

import dao.UserDAO;
import dto.User;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sahan Maitipe
 */
public class createUserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null && action.equals("signup")) {
            try {
                signUp(request, response);
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    private void signUp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        User newUser = new User();
        newUser.setUsername(username);
        newUser.setPassword(password);
        newUser.setEmail(email);

        try {
            if (UserDAO.getInstance().createUser(newUser)) {
                // User created successfully, redirect to success page
                String successMessage = "User registered successfully!";
                request.setAttribute("successMessage", successMessage);
                request.getRequestDispatcher("/JSPS/userSignupAlert.jsp").forward(request, response);
            } else {
                // Assuming there was an error during user registration
                String errorMessage = "Username already exists!";
                request.setAttribute("errorMessage", errorMessage);
                request.getRequestDispatcher("/JSPS/userSignupAlert.jsp").forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException ex) {
            // Handle database or other errors
            ex.printStackTrace();
        }
    }

}
