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
            PreparedStatement pstmt = conn.prepareStatement("insert into schedule(sess,time_from,time_to,status,doctor_id,hospital_name,contact,location,daysathos,limits) values(?,?,?,?,?,?,?,?,?,?)");
            
            String sess= request.getParameter("sess");
            String timefrom = request.getParameter("timefrom");
            String timeto = request.getParameter("timeto");
            String hospitalname = request.getParameter("hospitalname");
            String contact= request.getParameter("contact");
            String location= request.getParameter("location");
            String days="";
            if(request.getParameter("monday")!=null)
                days += "Monday ";
            if(request.getParameter("tuesday")!=null)
                days += "Tuesday ";
            if(request.getParameter("wednesday")!=null)
                days += "Wednesday ";
            if(request.getParameter("thursday")!=null)
                days += "Thursday ";
            if(request.getParameter("friday")!=null)
                days += "Friday ";
            if(request.getParameter("saturday")!=null)
                days += "Saturday ";
                
            String totalpatient= request.getParameter("totalpatient");
            
            String status = "active";
            String doctor_id=session.getAttribute("doctor_id").toString();
            
            pstmt.setString(1, sess);
            pstmt.setString(2, timefrom);
            pstmt.setString(3, timeto);
            pstmt.setString(4, status);
            pstmt.setString(5, doctor_id);
            pstmt.setString(6, hospitalname);
            pstmt.setString(7, contact);
            pstmt.setString(8, location);
            pstmt.setString(9, days);
            pstmt.setString(10, totalpatient);
            int i = pstmt.executeUpdate();
            if (i == 1) {
                out.println("Rows inserted");
            }

            conn.close();

            

            
            
            
            %>
    </body>
</html>
