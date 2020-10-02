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
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");

            String q = "Select * from admin where email_id='"
                    + email
                    + "' and password='"
                    + pwd
                    + "'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            if (rs.next()) {

                String admin_id = rs.getString("admin_id");
                session.setAttribute("admin_id", admin_id);
                response.sendRedirect("ahome.jsp");
            } else {
                response.sendRedirect("a_login.jsp?valid=no");
            }

        %>
    </body>
</html>
