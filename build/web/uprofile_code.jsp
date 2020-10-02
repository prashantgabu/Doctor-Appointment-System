

<%//@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");
%>


<%
    String user_id = "1";
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("ulogin.jsp");
    } else {
        user_id = session.getAttribute("user_id").toString();

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
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String contact = request.getParameter("contact");
            String dob = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String city = request.getParameter("city");

            Statement stmt = conn.createStatement();
            String q1 = "update register_user set name='" + name
                    + "',email='" + email
                    + "',contact='" + contact
                    + "',dob='" + dob
                    + "',gender='" + gender
                    + "',address='" + address
                    + "',city='" + city
                    + "' where user_id=" + user_id;

            stmt.executeUpdate(q1);
            out.println(q1);


        %>
    </body>
</html>
