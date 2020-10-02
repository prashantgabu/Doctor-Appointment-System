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

            String q = "Select * from register_user where email='"
                    + email
                    + "' and password='"
                    + pwd
                    + "'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            if (rs.next()) {
                if(rs.getString("status").equals("active"))
                    {


                String user_id = rs.getString("user_id");
                String name = rs.getString("name");
                String femail = rs.getString("email");
                session.setAttribute("user_id", user_id);
                session.setAttribute("name", name);
                session.setAttribute("femail", femail);
                response.sendRedirect("index.jsp");
            } else {
                response.sendRedirect("ulogin.jsp?valid=no");
            }
            }
            else{
      response.sendRedirect("ulogin.jsp?msg=no");
            }
        %>
    </body>
</html>
