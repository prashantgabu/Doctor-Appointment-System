

<%//@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.*" %>
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
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String contact = request.getParameter("contact");
            String dob = request.getParameter("dob");
            String specialist = request.getParameter("specialist");
            String gender = request.getParameter("gender");
            String exp = request.getParameter("exp");
            String bio = request.getParameter("bio");
            String savechanges = request.getParameter("savechanges");
            String propic = request.getParameter("propic");

            Statement stmt = conn.createStatement();
            String q1 = "update doctor_profile set specialist='" + specialist
                    + "',exp='" + exp
                    + "',bio='" + bio
                    + "' where doctor_id=" + doctor_id;
            String q2 = "update doctor_register set fname='" + fname
                    + "',lname='" + lname
                    + "',contact='" + contact
                    + "',dob='" + dob
                    + "',gender='" + gender
                    + "' where doctor_id=" + doctor_id;

            stmt.executeUpdate(q1);
            stmt.executeUpdate(q2);
            out.println(q1);
            out.println(q2);


        %>
    </body>
</html>
