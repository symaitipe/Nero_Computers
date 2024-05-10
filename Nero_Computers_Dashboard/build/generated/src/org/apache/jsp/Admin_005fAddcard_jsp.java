package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public final class Admin_005fAddcard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Add New Product</title>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
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
      out.write("            <h2>Add New Product</h2>\n");
      out.write("            <form action=\"/action_page.php\">\n");
      out.write("                <label for=\"productCategory\">Product Category:</label>\n");
      out.write("                <select id=\"productCategory\" name=\"productCategory\">\n");
      out.write("                    ");

                        // JDBC Connection
                        Connection conn = null;
                        PreparedStatement pstmt = null;
                        ResultSet rs = null;

                        try {
                            // Load the MySQL JDBC driver
                            Class.forName("com.mysql.jdbc.Driver");

                            // Connect to the database
                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/nero_computers", "root", "");

                            // Prepare SQL statement
                            String sql = "SELECT CategoryName FROM categories";
                            pstmt = conn.prepareStatement(sql);

                            // Execute SQL statement
                            rs = pstmt.executeQuery();

                            // Loop through the result set and populate options
                            while (rs.next()) {
                                String categoryName = rs.getString("CategoryName");
                    
      out.write("\n");
      out.write("                    <option value=\"");
      out.print( categoryName);
      out.write('"');
      out.write('>');
      out.print( categoryName);
      out.write("</option>\n");
      out.write("                    ");

                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            // Close resources
                            try {
                                if (rs != null) {
                                    rs.close();
                                }
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
      out.write("                </select>\n");
      out.write("\n");
      out.write("                <label for=\"Brand\">Brand:</label>\n");
      out.write("                <select id=\"Brand\" name=\"Brand\">\n");
      out.write("                    <option value=\"acer\">ACER</option>\n");
      out.write("                    <option value=\"ASUS\">ASUS</option>\n");
      out.write("                    <option value=\"HP\">HP</option>\n");
      out.write("                    <option value=\"LENOVO\">LENOVO</option>\n");
      out.write("                    <option value=\"DELL\">DELL</option>\n");
      out.write("                    <option value=\"APPLE\">APPLE</option>\n");
      out.write("                </select>           \n");
      out.write("\n");
      out.write("                <label for=\"imageUrl\">Image URL:</label>\n");
      out.write("                <input type=\"url\" id=\"imageUrl\" name=\"imageUrl\">\n");
      out.write("\n");
      out.write("                <label for=\"productDescription\">Product Description:</label>\n");
      out.write("                <textarea id=\"productDescription\" name=\"productDescription\" ></textarea>\n");
      out.write("\n");
      out.write("                <label for=\"price\">Price:</label>\n");
      out.write("                <input type=\"text\" id=\"price\" name=\"price\" >\n");
      out.write("\n");
      out.write("                <button type=\"submit\">Submit</button>\n");
      out.write("                <button type=\"button\">Cancel</button>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
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
