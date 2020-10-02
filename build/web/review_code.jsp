
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
             PreparedStatement pstmt = conn.prepareStatement("insert into review_table(review_date,user_id,doctor_id,review,rating) values(?,?,?,?,?)");
            
            String msg= request.getParameter("msg");
            String rating = request.getParameter("rating");
            String date1 = new java.util.Date().toLocaleString();
            String doctor_id = request.getParameter("doctor_id");
            String user_id = session.getAttribute("user_id").toString();

            pstmt.setString(1, date1);
            pstmt.setString(2, user_id);
            pstmt.setString(3, doctor_id);
            pstmt.setString(4, msg);
            pstmt.setString(5, rating);
            int i = pstmt.executeUpdate();
            if (i == 1) {
                out.println("Rows inserted");
            }

            conn.close();

            

            
            
            
            %>
    </body>
</html>
