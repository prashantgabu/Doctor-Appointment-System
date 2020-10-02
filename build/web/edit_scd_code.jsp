<%-- 
    Document   : edit_scd_code
    Created on : 26 Jan, 2019, 9:57:44 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
        <%
            //String morning = request.getParameter("morning");
            //  String evening = request.getParameter("evening");
            String sess = request.getParameter("sess");
            String time_from = request.getParameter("time_from");
            String time_to = request.getParameter("time_to");
            String hospital_name = request.getParameter("hospital_name");
            String contact = request.getParameter("contact");
            String location = request.getParameter("location");
            String daysathos = "";
            if (request.getParameter("monday") != null) {
                daysathos += "Monday ";
            }
            if (request.getParameter("tuesday") != null) {
                daysathos += "Tuesday";
            }
            if (request.getParameter("wednesday") != null) {
                daysathos += "Wednesday";
            }
            if (request.getParameter("thursday") != null) {
                daysathos += "Thursday";
            }
            if (request.getParameter("friday") != null) {
                daysathos += "Friday";
            }
            if (request.getParameter("saturday") != null) {
                daysathos += "Saturday";
            }
            String limits = request.getParameter("limits");
            String schedule_id = request.getParameter("schedule_id");

            Statement stmt = conn.createStatement();
            String q = "update schedule set sess='" + sess
                    + "',time_from='" + time_from
                    + "',hospital_name='" + hospital_name
                    + "',contact='" + contact
                    + "',location='" + location
                    + "',daysathos='" + daysathos
                    + "',limits='" + limits
                    + "' where schedule_id=" + schedule_id;

            stmt.executeUpdate(q);
            response.sendRedirect("view_scd.jsp");
            conn.close();
        %>
    </body>
</html>
