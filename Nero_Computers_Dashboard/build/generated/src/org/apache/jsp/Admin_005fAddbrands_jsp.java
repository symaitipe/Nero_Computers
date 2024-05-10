package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;

public final class Admin_005fAddbrands_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add new Brand</title>\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                font-family: Arial, sans-serif;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                background-color:lightgray;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .add-product-form {\n");
      out.write("                width: 600px;\n");
      out.write("                margin: 100px auto;\n");
      out.write("                padding: 20px;\n");
      out.write("                border: 1px solid black;\n");
      out.write("                border-radius: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .add-product-form h2 {\n");
      out.write("                text-align: center;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .add-product-form label {\n");
      out.write("                display: block;\n");
      out.write("                margin-bottom: 5px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .add-product-form input[type=\"text\"],\n");
      out.write("            .add-product-form input[type=\"url\"],\n");
      out.write("            .add-product-form textarea {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 10px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("                border-radius: 3px;\n");
      out.write("                margin-bottom: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .add-product-form select {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 10px;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("                border-radius: 3px;\n");
      out.write("                margin-bottom: 15px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .add-product-form button {\n");
      out.write("                background-color: #4CAF50;\n");
      out.write("                color: white;\n");
      out.write("                padding: 10px 20px;\n");
      out.write("                border: none;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                cursor: pointer;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .add-product-form button:hover {\n");
      out.write("                background-color: #3e8e41;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"add-product-form\">\n");
      out.write("            <h2>Add New Brand</h2>\n");
      out.write("            <form action=\"\" method=\"post\" onsubmit=\"return validateForm()\">\n");
      out.write("                <label for=\"Brand\">Brand Name:</label>\n");
      out.write("                <input type=\"text\" id=\"brand\" name=\"brand\" required>\n");
      out.write("                <button type=\"submit\">Add</button>\n");
      out.write("                <button type=\"button\" onclick=\"window.location.href = 'your_cancel_page.jsp'\">Cancel</button>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("            <script>\n");
      out.write("                function validateForm() {\n");
      out.write("                    var brandName = document.getElementById(\"brand\").value;\n");
      out.write("                    if (brandName.trim() == \"\") {\n");
      out.write("                        alert(\"Brand Name cannot be empty\");\n");
      out.write("                        return false;\n");
      out.write("                    }\n");
      out.write("                    return true;\n");
      out.write("                }\n");
      out.write("            </script>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");

            // JDBC Connection
            Connection conn = null;
            PreparedStatement pstmt = null;

            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.jdbc.Driver");

                // Connect to the database
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nero_computers", "root", "");

                // Retrieve brand name from the form
                String brandName = request.getParameter("brand");

                // Check if brandName is empty
                if (brandName == null || brandName.trim().isEmpty()) {
                    throw new Exception("Brand Name cannot be empty");
                }

                // Prepare SQL statement
                String sql = "INSERT INTO brands (BrandName) VALUES (?)";
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, brandName);

                // Execute SQL statement
                pstmt.executeUpdate();

                // Display success message or redirect to a success page
                out.println("<p>Brand added successfully!</p>");

            } catch (Exception e) {
                // Handle any exceptions
                out.println("<p>Error: " + e.getMessage() + "</p>");
                e.printStackTrace();
            } finally {
                // Close resources
                try {
                    if (pstmt != null) {
                        pstmt.close();
                    }
                    if (conn != null) {
                        conn.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
