package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Admin_005fCategory_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Categories</title>\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body class=\"container\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Admin_navbar.jsp", out, false);
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <h3>To add category</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <a href=\"Admin_Addcategory.jsp\" class=\"btn btn-primary\" >Add</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <h3>To add product brand</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <a href=\"Admin_Addbrands.jsp\" class=\"btn btn-primary\" >Add</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <h3>To add product card</h3>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col\">\n");
      out.write("                <a href=\"Admin_Addcard.jsp\" class=\"btn btn-primary\" >Add</a>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("        <br>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"card col-md-4\"> <img class=\"card-img-top\" src=\"AdminImages/category1.jpeg\" alt=\"Card image cap\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h5 class=\"card-title\">ASUS Vivobook 16 X1605VA (Intel Core i5-13500H, 8GB RAM, 512GB SSD)</h5>\n");
      out.write("                    <p class=\"card-text\">\n");
      out.write("                        <span style=\"color: red;\">Rs. 229,000.00</span><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <a href=\"Admin_Edit.jsp\" class=\"btn btn-primary\" style=\"background-color: red; color: white;\">Edit</a>\n");
      out.write("                <a href=\"\" class=\"btn btn-primary\" style=\"background-color: graytext; color: white;\">Delete</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card col-md-4\"> <img class=\"card-img-top\" src=\"AdminImages/category2.jpeg\" alt=\"Card image cap\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("\n");
      out.write("                    <h5 class=\"card-title\">ASUS VIVOBOOK 16 X1605VA I7-13700H|8GB|512GB|16.0 WUXGA</h5>\n");
      out.write("                    <p class=\"card-text\">\n");
      out.write("                        <span style=\"color: red;\">Rs. 289,000.00</span><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <a href=\"Admin_Edit.jsp\" class=\"btn btn-primary\" style=\"background-color: red; color: white;\">Edit</a>\n");
      out.write("                <a href=\"\" class=\"btn btn-primary\" style=\"background-color: graytext; color: white;\">Delete</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"card col-md-4\"> <img class=\"card-img-top\" src=\"AdminImages/category3.jpeg\" alt=\"Card image cap\">\n");
      out.write("                <div class=\"card-body\">\n");
      out.write("                    <h5 class=\"card-title\">ASUS VIVOBOOK 15 A1502ZA I3-1215U|4GB|256NVME|DOS</h5>\n");
      out.write("                    <p class=\"card-text\">\n");
      out.write("                        <span style=\"color: red;\">Rs. 128,000.00</span><br>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <a href=\"Admin_Edit.jsp\" class=\"btn btn-primary\" style=\"background-color: red; color: white;\">Edit</a>\n");
      out.write("                        <a href=\"\" class=\"btn btn-primary\" style=\"background-color: graytext; color: white;\">Delete</a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
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
