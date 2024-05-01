package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Sahan Maitipe
 */
public class userLogoutServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
        HttpSession session = request.getSession(false); 

        if (session != null && session.getAttribute("username") != null) {
            // Someone is logged in, so clear the session
            session.removeAttribute("userID"); 
            session.removeAttribute("username");
            session.invalidate();
        }
        response.sendRedirect("/Nero_Computers/index.html");
    }


}
