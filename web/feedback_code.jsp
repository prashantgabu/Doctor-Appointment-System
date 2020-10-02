<%-- 
    Document   : add_scd_code
    Created on : 26 Jan, 2019, 12:57:21 PM
    Author     : User
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");
            PreparedStatement pstmt = conn.prepareStatement("insert into feedback(name,email,date,message) values(?,?,?,?)");

            String fullname = request.getParameter("fullname");
            String email = request.getParameter("email");
            String todaydate = new java.util.Date().toLocaleString();
            String msg = request.getParameter("msg");
           // String feed_id = session.getAttribute("feed_id").toString();

            
            pstmt.setString(1, fullname);
            pstmt.setString(2, email);
            pstmt.setString(3, todaydate);
            pstmt.setString(4, msg);
            int i = pstmt.executeUpdate();
            if (i == 1) {
                response.sendRedirect("feedback.jsp");
            }

            conn.close();


        %>
    </body>
</html>
