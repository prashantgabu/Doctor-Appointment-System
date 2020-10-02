
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");
%>


<%
    String doctor_id = "1";
    if (session.getAttribute("doctor_id") == null) {
        response.sendRedirect("login.jsp");
    } else {
        doctor_id = session.getAttribute("doctor_id").toString();

    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%            String cpwd = request.getParameter("cpwd");
            String npwd = request.getParameter("npwd");
            String rpwd = request.getParameter("rpwd");
            //view
            if (npwd.equals(rpwd)) {
                Statement stmt = conn.createStatement();

                String q = "Update doctor_register set password='" + npwd
                        + "' where password='" + cpwd + "' and doctor_id=" + doctor_id;

                int n = stmt.executeUpdate(q);

                if (n > 0) {

                    response.sendRedirect("change_password.jsp?valid=Password Changed");

                } else {
                    response.sendRedirect("change_password.jsp?valid=Old Password not match");

                }
            } else {
                response.sendRedirect("change_password.jsp?valid=Password and Confirm not match");
            }
        %>
        }
    </body>
</html>
