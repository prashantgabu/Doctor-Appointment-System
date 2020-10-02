<!-- USER SIDE -->


<%@page import="java.sql.*"%>
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

            Statement st = conn.createStatement();
            String scode = session.getAttribute("code").toString();
            String code = session.getAttribute("code").toString();
            String email = session.getAttribute("email").toString();

            if (scode.equals(code)) {
                String q = "update register_user set status='active' where email='" + email + "'";
                int n = st.executeUpdate(q);
                if (n > 0) {
                    response.sendRedirect("ulogin.jsp");
                } else {
                    response.sendRedirect("emailsend.jsp");
                }
            } else {
                response.sendRedirect("uregister.jsp");
            }

        %>
    </body>
</html>
