
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

            String fullname = session.getAttribute("fullname").toString();
            String email = session.getAttribute("femail").toString();
            String todaydate = new java.util.Date().toLocaleString();
            String date = request.getParameter("date");
            String msg = request.getParameter("msg");
            // String feed_id = session.getAttribute("feed_id").toString();

            pstmt.setString(1, fullname);
            pstmt.setString(2, email);
            pstmt.setString(3, todaydate);
            pstmt.setString(4, msg);
            int i = pstmt.executeUpdate();
            if (i == 1) {
                response.sendRedirect("d_feedback.jsp");
            }

            conn.close();


        %>
    </body>
</html>
