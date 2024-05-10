package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_005fnavbar_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Nero</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css\">\n");
      out.write("        <!-- Font Awesome CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            .spaceDiv{\n");
      out.write("                height: 2vh;\n");
      out.write("            }\n");
      out.write("            .footer-card {\n");
      out.write("                border-color: greenyellow;\n");
      out.write("                border-radius: 15px; \n");
      out.write("                margin-bottom: 20px;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            #navbarSupportedContent{\n");
      out.write("                display:flex;\n");
      out.write("                justify-content: space-between;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <!-- Navbar -->\n");
      out.write("        <nav class=\"navbar navbar-expand-lg  navbar-dark bg-dark\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\n");
      out.write("                <div> <img src=\"/Nero_Computers/assets/logo.jpg\" style=\"height:80px; width:80px\"></div>\n");
      out.write("                <div style=\"padding-left:400px;\">\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <form action=\"/Nero_Computers/ProductFilterServlet\" method=\"GET\" class=\"form-inline\">\n");
      out.write("                                <label for=\"category\" class=\"mr-sm-2\" style=\"font-weight: bold; color: white;\">Select Category</label>\n");
      out.write("                                <select id=\"category\" name=\"category\" class=\"form-control mr-sm-2 wide-select\"  style=\"width: 300px;\">\n");
      out.write("                                    <option value=\"All\">All Categories</option>\n");
      out.write("                                    <option value=\"Laptops\">Laptops</option>\n");
      out.write("                                    <option value=\"Smartphones\">Smartphones</option>\n");
      out.write("                                    <option value=\"Tablets\">Tablets</option>\n");
      out.write("                                    <option value=\"Accessories\">Accessories</option>\n");
      out.write("                                </select>\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-primary\"><i class=\"fas fa-search\"></i> Search</button>\n");
      out.write("                            </form>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <div>\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"/Nero_Computers/index.html\"><i class=\"fas fa-home\"></i> Home</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\" id=\"loginNavItem\">\n");
      out.write("                            <a class=\"nav-link\" href=\"/Nero_Computers/JSPS/login.jsp\"><i class=\"fas fa-user\"></i> Login</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"/Nero_Computers/JSPS/cartView.jsp\"><i class=\"fas fa-shopping-cart\"></i> Cart</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"/Nero_Computers/JSPS/confirmUserLogout.jsp\"><i class=\"fas fa-sign-out-alt\"></i> Logout</a>\n");
      out.write("                        </li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap JS and jQuery -->\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!--Internal Script for validate the user (if someone has logged in already)-->\n");
      out.write("        <script>\n");
      out.write("            document.addEventListener(\"DOMContentLoaded\", function () {\n");
      out.write("                console.log(\"hello\");\n");
      out.write("                var loginNavItem = document.getElementById(\"loginNavItem\");\n");
      out.write("                var username = localStorage.getItem(\"username\");\n");
      out.write("                console.log(username);\n");
      out.write("\n");
      out.write("\n");
      out.write("                if (username) {\n");
      out.write("                    loginNavItem.innerHTML = '<a class=\"nav-link\" href=\"#\"><i class=\"fas fa-user\"></i> ' + username + '</a>';\n");
      out.write("                    console.log(username);\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("        </script>\n");
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
