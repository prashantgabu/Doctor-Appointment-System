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

            String q = "Select * from doctor_register where email='"
                    + email
                    + "' and password='"
                    + pwd
                    + "'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            if (rs.next()) {
                if(rs.getString("status").equals("active"))
                    {

                String doctor_id = rs.getString("doctor_id");
                String fname = rs.getString("fname");
                String lname = rs.getString("lname");
                String femail = rs.getString("email");
                session.setAttribute("doctor_id", doctor_id);
                session.setAttribute("fullname", fname + " " +lname);
                session.setAttribute("femail", femail);
                response.sendRedirect("dhome.jsp");
            } else {
                    
                    
              response.sendRedirect("login.jsp?msg=no");
              
            }
            }
                else
                {
                    int cnt=1;
                    if(session.getAttribute("count")==null)
                    {
                        session.setAttribute("count","1");
                    }
                    else
                    {
                        cnt = Integer.parseInt(session.getAttribute("count").toString());
                        cnt++;
                        session.setAttribute("count",cnt);
                        
                    }
                    
                    if(cnt>3){
                        response.sendRedirect("forget.jsp");
                    }
                    else{
                    response.sendRedirect("login.jsp?valid=no");
                        }
                }
        %>
    </body>
</html>
