package controller;

import dao.UserDAO;
import dto.User;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sahan Maitipe
 */
public class UserLoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = null;
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            UserDAO userDAO = UserDAO.getInstance();
            user = userDAO.getUserByUsernameAndPassword(username, password);

            if (user != null) {
                // User found, create a session and store user information
                HttpSession session = request.getSession();
                session.setAttribute("userID", user.getUserID());
                session.setAttribute("username", user.getUsername());
                response.sendRedirect("JSPS/userLoginSuccess.jsp");
            } else {
                response.sendRedirect("JSPS/userLoginError.jsp");
            }

        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    
    

}
