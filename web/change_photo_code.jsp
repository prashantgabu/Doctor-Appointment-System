<%-- 
    Document   : change_photo_code
    Created on : 26 Jan, 2019, 12:37:51 PM
    Author     : User
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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

        <%            String photo = request.getParameter("photo");

            MultipartRequest mrequest = new MultipartRequest(request, "D:\\My Project\\web1\\build\\web\\images");

            Enumeration files = mrequest.getFileNames();

            String filename = "";
            while (files.hasMoreElements()) {
                String upload = (String) files.nextElement();
                filename = mrequest.getFilesystemName(upload);
            }

            String image = "images/" + filename;

            Statement stmt = conn.createStatement();
            String q = "update doctor_profile set propic='" + filename
                    + "' where doctor_id=" + doctor_id;

            stmt.executeUpdate(q);
int n = stmt.executeUpdate(q);

                if (n > 0) {

                    response.sendRedirect("dprofile.jsp?valid=Profile Picture Changed");

                } else {
                    response.sendRedirect("change_photo.jsp?valid=Unable To change picture");

                }
            conn.close();

        %>
    </body>
</html>
