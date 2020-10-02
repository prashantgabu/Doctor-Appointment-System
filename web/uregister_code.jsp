<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="javax.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Doctor Register</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");
            PreparedStatement pstmt = conn.prepareStatement("insert into register_user(name,email,password,contact,dob,gender,address,city,status) values(?,?,?,?,?,?,?,?,?)");
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            String rpwd = request.getParameter("rpwd");
            String contact = request.getParameter("contact");
            String dob = request.getParameter("dob");
            String gender = request.getParameter("gender");
            String address = request.getParameter("address");
            String city = request.getParameter("city");

            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, pwd);
            pstmt.setString(4, contact);
            pstmt.setString(5, dob);
            pstmt.setString(6, gender);
            pstmt.setString(7, address);
            pstmt.setString(8, city);
            pstmt.setString(9, "pending");

            int i = pstmt.executeUpdate();
            if (i == 1) {
                // ************** blank record in profile

                String q = "Select * from register_user order by user_id desc";
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(q);
                rs.next();
                String user_id = rs.getString("user_id");

                /* String qpro = "insert into register_user(user_id) values(" + user_id + ")";
            Statement stpro = conn.createStatement();
            stpro.executeUpdate(qpro);
                 */
                Random r = new Random();
                int rnd = r.nextInt(10000);
                session.setAttribute("code", rnd);
                session.setAttribute("email", email);

                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
                props.put("mail.debug", "true");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.localhost", "yoursite.com");

                Session s = Session.getInstance(props, null);
                s.setDebug(true);

                MimeMessage message = new MimeMessage(s);

                InternetAddress from = new InternetAddress("handro1@msn.com",
                        "Hey Doctor");
                InternetAddress to = new InternetAddress(email);

                message.setSentDate(new java.util.Date());
                message.setFrom(from);
                message.addRecipient(Message.RecipientType.TO, to);

                message.setSubject("Your code");
                message.setContent("Your verify code  is " + rnd, "text/html");

                Transport tr = s.getTransport("smtp");
                tr.connect("smtp.gmail.com", "heydoctorinfo@gmail.com", "pristineitis53");
                message.saveChanges();
                tr.sendMessage(message, message.getAllRecipients());
                tr.close();

                response.sendRedirect("emailsend.jsp");
                out.println("Rows inserted");
            }

            conn.close();


        %>
    </body>
</html>
