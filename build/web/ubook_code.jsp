<%-- 
    Document   : add_scd_code
    Created on : 26 Jan, 2019, 12:57:21 PM
    Author     : User
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.io.*"%>
<%/*
      String doctor_id="1";
    if(session.getAttribute("doctor_id")==null)
    {
        response.sendRedirect("login.jsp");
    }
    else
    {
        doctor_id= session.getAttribute("doctor_id").toString();
        
    }
  
   */ %>

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
     
            
            String schedule_id = request.getParameter("schedule_id");
          
            String todaydate = new java.util.Date().toLocaleString();
            String book_date = request.getParameter("book_date");
            String name= request.getParameter("name");
            String doctor_id = request.getParameter("doctor_id");
            String user_id = session.getAttribute("user_id").toString();
            String age= request.getParameter("age");
            
            ///*************** schedule
            String qs ="select * from schedule where schedule_id=" + schedule_id;
            Statement sts = conn.createStatement();
            ResultSet rss = sts.executeQuery(qs);
            int cnt = 0;
            if(rss.next()) {
                cnt = Integer.parseInt(rss.getString("limits"));
            }
            
            
            ///*************** appoint
        String qapp ="select * from appoint where book_date='" + book_date + "' and schedule_id=" + schedule_id;
        
            Statement stapp = conn.createStatement();
            ResultSet rsapp = stapp.executeQuery(qapp);
            int cntapp = 0; 
            while(rsapp.next()) {
                cntapp++;
            }
            
            if( cntapp< cnt)
            {
            PreparedStatement pstmt = conn.prepareStatement("insert into appoint(book_date,schedule_id,patient,age,user_id,doctor_id,todaydate,status) values(?,?,?,?,?,?,?,?)");
            
            pstmt.setString(1, book_date);
            pstmt.setString(2, schedule_id);
            pstmt.setString(3, name);
            pstmt.setString(4, age);
            pstmt.setString(5, user_id);
            pstmt.setString(6, doctor_id);
            pstmt.setString(7, todaydate);
            pstmt.setString(8, "booked");
            int i = pstmt.executeUpdate();
            
            
            }
            else
            {
                out.println("limit over");
            }
            conn.close();

            

            
            
            
            %>
    </body>
</html>
