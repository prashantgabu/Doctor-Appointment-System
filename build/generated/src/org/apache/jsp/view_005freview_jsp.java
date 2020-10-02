package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class view_005freview_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/dheader.jsp");
    _jspx_dependants.add("/footer.jsp");
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
      out.write("        <title>Your Life</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
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
      out.write("                <a class=\"navbar-brand\" href=\"dhome.jsp\">Hey<span>Doctor</span></a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#ftco-nav\" aria-controls=\"ftco-nav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"oi oi-menu\"></span> Menu\n");
      out.write("                </button>\n");
      out.write("\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"ftco-nav\">\n");
      out.write("                    <ul class=\"navbar-nav ml-auto\">\n");
      out.write("                        <li class=\"nav-item\"><a href=\"dhome.jsp\" class=\"nav-link\">Home</a></li>\n");
      out.write("                        <li class=\"nav-item\"><span class=\"nav-link\">Welcome ");
      out.print(session.getAttribute("fullname").toString());
      out.write("</span></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <li class=\"nav-item\"><a href=\"dprofile.jsp\" class=\"nav-link\">Profile</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"view_scd.jsp\" class=\"nav-link\">Schedule</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"view_booking.jsp\" class=\"nav-link\">Booking</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"view_review.jsp\" class=\"nav-link\">Reviews</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"d_feedback.jsp\" class=\"nav-link\">Feedback</a></li>\n");
      out.write("                        <li class=\"nav-item\"><a href=\"logout.jsp\" class=\"nav-link\">Logout</a></li>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("\n");


    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
      out.write('\n');
      out.write('\n');


    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");

      out.write('\n');
      out.write('\n');

      String doctor_id="1";
    if(session.getAttribute("doctor_id")==null)
    {
        response.sendRedirect("login.jsp");
    }
    else
    {
        doctor_id= session.getAttribute("doctor_id").toString();
        
    
  
    
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("<section class=\"home-slider owl-carousel\">\n");
      out.write("    <div class=\"slider-item  bread-item\" style=\"background-image: url('images/bg_1.jpg');\" data-stellar-background-ratio=\"0.5\"> \n");
      out.write("        <div class=\"overlay\"></div>\n");
      out.write("        <div class=\"container\" data-scrollax-parent=\"true\">\n");
      out.write("            <div class=\"row slider-text align-items-end\">\n");
      out.write("                <div class=\"col-md-7 col-sm-12 ftco-animate mb-5\">\n");
      out.write("                    <p class=\"breadcrumbs\" data-scrollax=\" properties: { translateY: '70%', opacity: 1.6}\"><span class=\"mr-2\"><a href=\"index.html\">Home</a></span></p>\n");
      out.write("                    <h1 class=\"mb-3\" data-scrollax=\" properties: { translateY: '70%', opacity: .9}\">Reviews</h1>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
      out.write("\n");
      out.write("<section class=\"ftco-section contact-section ftco-degree-bg\">\n");
      out.write("    <table class=\"table-bordered table-striped table-hover table \">\n");
      out.write("        <tr>\n");
      out.write("            <th>Date</th>\n");
      out.write("            <th>Name of user</th>\n");
      out.write("            <th>Email of user</th>\n");
      out.write("            <th>Contact no. of user</th>\n");
      out.write("            <th>Review</th>\n");
      out.write("            <th>Rating</th>\n");
      out.write("            <th>Options</th>\n");
      out.write("\n");
      out.write("        </tr>\n");
      out.write("        ");

            if (request.getParameter("review_id") != null) {

                String qdel = "delete from review_table where review_id=" + request.getParameter("review_id");
                Statement stdel = conn.createStatement();
                stdel.executeUpdate(qdel);
            }
            String vdoctor_id =request.getParameter("doctor_id");
            String q = "select i.*,u.name as username,u.email as email,u.contact as contact from review_table i,doctor_register d,register_user u where i.doctor_id=d.doctor_id and i.user_id=u.user_id and d.doctor_id=" + doctor_id;

           //String q = "Select * from review_table where doctor_id=" + doctor_id;
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                String review_id = rs.getString("review_id");
                String review_date = rs.getString("review_date");
                String user_id = rs.getString("user_id");
                String review = rs.getString("review");
                String rating = rs.getString("rating");
                String email = rs.getString("email");
                String username = rs.getString("username");
                String contact = rs.getString("contact");


        
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td>");
      out.print(review_date);
      out.write("</td>\n");
      out.write("            <td>");
      out.print(username);
      out.write("</td>\n");
      out.write("            <td>");
      out.print(email);
      out.write("</td>\n");
      out.write("            <td>");
      out.print(contact);
      out.write("</td>\n");
      out.write("            <td>");
      out.print(review);
      out.write("</td>\n");
      out.write("            <td>");
      out.print(rating);
      out.write("</td>\n");
      out.write("            <td>\n");
      out.write("             <a href=\"view_review.jsp?review_id=");
      out.print(review_id);
      out.write("\" class=\"btn btn-outline-danger\" onclick=\"return confirm('do you want to delete ?')\"> Delete </a>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        ");
}
      out.write("\n");
      out.write("    </table>\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row block-9\">\n");
      out.write("            <div class=\"col-md-6 pr-md-5\">\n");
      out.write("\n");
      out.write("                <!-- <form action=\"#\" style=\" width: 200px;\">-->\n");
      out.write("\n");
      out.write("                <!-- </form>-->\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</section>\n");
}
      out.write('\n');
      out.write("<footer class=\"ftco-footer ftco-bg-dark ftco-section\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("        <div class=\"row mb-5\">\n");
      out.write("            <div class=\"col-md-3\">\n");
      out.write("                <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("                    <h2 class=\"ftco-heading-2\">Hey Doctor</h2>\n");
      out.write("                    <p>Keeping You Healthy</p>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-2\">\n");
      out.write("                <div class=\"ftco-footer-widget mb-4 ml-md-5\">\n");
      out.write("                    <h2 class=\"ftco-heading-2\">Quick Links</h2>\n");
      out.write("                    <ul class=\"list-unstyled\">\n");
      out.write("                        <li><a href=\"aboutus.jsp\" class=\"py-2 d-block\">About</a></li>\n");
      out.write("                        <li><a href=\"uprofile.jsp\" class=\"py-2 d-block\">My Profile</a></li>\n");
      out.write("                        <li><a href=\"umybook.jsp\" class=\"py-2 d-block\">My Appointments</a></li>\n");
      out.write("                        <li><a href=\"ufeedback.jsp\" class=\"py-2 d-block\">Feedback</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-4 pr-md-4\">\n");
      out.write("                <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("                    <h2 class=\"ftco-heading-2\">Recent Quotes</h2>\n");
      out.write("                    <div class=\"block-21 mb-4 d-flex\">\n");
      out.write("                        <div class=\"text\">\n");
      out.write("                            <h3 class=\"heading text-white\">Illness is the doctor to whom we pay most heed; to kindness, to knowledge, we make promise only; pain we obey.</h3>\n");
      out.write("                            <div class=\"meta\">\n");
      out.write("                                <div>-Leena Dutta</div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"col-md-3\">\n");
      out.write("                <div class=\"ftco-footer-widget mb-4\">\n");
      out.write("                    <h2 class=\"ftco-heading-2\">Office</h2>\n");
      out.write("                    <div class=\"block-23 mb-3\">\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"#\"><span class=\"icon icon-phone\"></span><span class=\"text\">+91 7016618215</span></a></li>\n");
      out.write("                            <li><span class=\"icon icon-envelope\"></span><span class=\"text\">heydoctorinfo@gmail.com</span></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"row\">\n");
      out.write("            <div class=\"col-md-12 text-center\">\n");
      out.write("\n");
      out.write("                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class=\"icon-person\" aria-hidden=\"true\"></i> by Prashant\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</footer>\n");
      out.write("   \n");
      out.write("  \n");
      out.write("\n");
      out.write("  <!-- loader -->\n");
      out.write("  <div id=\"ftco-loader\" class=\"show fullscreen\"><svg class=\"circular\" width=\"48px\" height=\"48px\"><circle class=\"path-bg\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke=\"#eeeeee\"/><circle class=\"path\" cx=\"24\" cy=\"24\" r=\"22\" fill=\"none\" stroke-width=\"4\" stroke-miterlimit=\"10\" stroke=\"#F96D00\"/></svg></div>\n");
      out.write("\n");
      out.write("  <!-- Modal -->\n");
      out.write("  <div class=\"modal fade\" id=\"modalRequest\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"modalRequestLabel\" aria-hidden=\"true\">\n");
      out.write("    <div class=\"modal-dialog\" role=\"document\">\n");
      out.write("      <div class=\"modal-content\">\n");
      out.write("        <div class=\"modal-header\">\n");
      out.write("          <h5 class=\"modal-title\" id=\"modalRequestLabel\">Make an Appointment</h5>\n");
      out.write("          <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("            <span aria-hidden=\"true\">&times;</span>\n");
      out.write("          </button>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"modal-body\">\n");
      out.write("          <form action=\"#\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("            \n");
      out.write("              <input type=\"text\" class=\"form-control\" id=\"appointment_name\" placeholder=\"Full Name\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("              <input type=\"text\" class=\"form-control\" id=\"appointment_email\" placeholder=\"Email\">\n");
      out.write("            </div>\n");
      out.write("            <div class=\"row\">\n");
      out.write("              <div class=\"col-md-6\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  <input type=\"text\" class=\"form-control appointment_date\" placeholder=\"Date\">\n");
      out.write("                </div>    \n");
      out.write("              </div>\n");
      out.write("              <div class=\"col-md-6\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  <!-- <label for=\"appointment_time\" class=\"text-black\">Time</label> -->\n");
      out.write("                  <input type=\"text\" class=\"form-control appointment_time\" placeholder=\"Time\">\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("              <textarea name=\"\" id=\"appointment_message\" class=\"form-control\" cols=\"30\" rows=\"10\" placeholder=\"Message\"></textarea>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("              <input type=\"submit\" value=\"Make an Appointment\" class=\"btn btn-primary\">\n");
      out.write("            </div>\n");
      out.write("          </form>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("  <script src=\"js/jquery.min.js\"></script>\n");
      out.write("  <script src=\"js/jquery-migrate-3.0.1.min.js\"></script>\n");
      out.write("  <script src=\"js/popper.min.js\"></script>\n");
      out.write("  <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("  <script src=\"js/jquery.easing.1.3.js\"></script>\n");
      out.write("  <script src=\"js/jquery.waypoints.min.js\"></script>\n");
      out.write("  <script src=\"js/jquery.stellar.min.js\"></script>\n");
      out.write("  <script src=\"js/owl.carousel.min.js\"></script>\n");
      out.write("  <script src=\"js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("  <script src=\"js/aos.js\"></script>\n");
      out.write("  <script src=\"js/jquery.animateNumber.min.js\"></script>\n");
      out.write("  <script src=\"js/bootstrap-datepicker.js\"></script>\n");
      out.write("  <script src=\"js/jquery.timepicker.min.js\"></script>\n");
      out.write("  <script src=\"js/scrollax.min.js\"></script>\n");
      out.write("  <script src=\"js/main.js\"></script>\n");
      out.write("    \n");
      out.write("  </body>\n");
      out.write("</html>");
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
