<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.*"%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hey Doctor</title>
    </head>
    <body>
        <%
            String email = request.getParameter("email");
            String contact = request.getParameter("contact");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");

            String q = "Select * from doctor_register where email='"
                    + email
                    + "' and contact='"
                    + contact
                    + "'";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);

            if (rs.next()) {
                String pwd = rs.getString("password");

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

                message.setSubject("Your Password");
                message.setContent("Your password is " + pwd, "text/html");

                Transport tr = s.getTransport("smtp");
                tr.connect("smtp.gmail.com", "heydoctorinfo@gmail.com", "pristineitis53");
                message.saveChanges();
                tr.sendMessage(message, message.getAllRecipients());
                tr.close();

            } else {
                out.println("not match");
            }

        %>
    </body>
</html>
