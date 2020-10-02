package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/mainheader.jsp");
  }

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    <head>\n");
      out.write("        <title>Hey Doctor</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/open-iconic-bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/animate.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.carousel.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/owl.theme.default.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/magnific-popup.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/aos.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/ionicons.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap-datepicker.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/jquery.timepicker.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/flaticon.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/icomoon.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light\" id=\"ftco-navbar\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"main.jsp\">Hey<span>Doctor</span></a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"oi oi-menu\">Home</span>\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        <li class=\"nav-item\"><a href=\"main.jsp\" class=\"nav-link\">Home</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"ulogin.jsp\" class=\"nav-link\">Login</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"vsearch.jsp\" class=\"nav-link\">Doctors</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"aboutus.jsp\" class=\"nav-link\">About</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"feedback.jsp\" class=\"nav-link\">Feedback</a></li>\n");
      out.write("                        \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <!-- END nav -->\n");
      out.write("\n");


    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("<link rel=\"stylesheet\" href=\"css/mycss.css\">\n");
      out.write("<body style=\"background-image:  url('backgrounds/bg6.png'); background-size: 100%\">\n");
      out.write("    <section class=\"ftco-section contact-section ftco-degree-bg\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"\" style=\"width: 100%;\">\n");
      out.write("                <a href=\"a_login.jsp\" class=\"btn btn-outline-info col-md-3 bg-light\">Admin Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                <a href=\"ulogin.jsp\" class=\"btn btn-outline-info col-md-3 bg-light\">User Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("                <a href=\"login.jsp\" class=\"btn btn-outline-info col-md-4 bg-light\">Are you a Doctor? Login Here</a>&nbsp;&nbsp;\n");
      out.write("                <hr>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row block-9\">\n");
      out.write("                <div class=\"col-md-6 pr-md-5\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                    <form action=\"login_code.jsp\" method=\"post\">\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"text\" name=\"email\" class=\"form-control\" placeholder=\"Enter Your Email-id\" title=\"Enter Valid Email Address\" required pattern=\"[^@]+@[^@]+\\.[a-zA-Z]{2,6}\">\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <input type=\"password\" name=\"pwd\" class=\"form-control\" placeholder=\"Enter Your Password\" required>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                            <input type=\"submit\" name=\"login\" value=\"Login\" class=\"btn btn-primary py-3 px-5\">\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("\n");
      out.write("                            ");

                                if (request.getParameter("valid") != null) {
                                    out.print("<span style='color:red'> Invalid email or password </span>");
                                } else if (request.getParameter("msg") != null) {
                                    out.print("<span style='color:red'> Status is not active </span>");
                                }

                            
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <span class=\"\"><a href=\"forget.jsp\">Don't remember your password?</a></span>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <a href=\"dregister_1.jsp\"><b>Don't have an account? REGISTER HERE</b></a>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section>\n");
      out.write("</body>");
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
