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
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- 
    Document   : admin_register_code
    Created on : 25 Jan, 2019, 9:27:08 PM
    Author     : sr
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String email = request.getParameter("email");
                String psw = request.getParameter("psw");
                String date = request.getParameter("date");
                String gender = request.getParameter("gender");
                String mnum = request.getParameter("mnum");
                String status = "pending";

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbdesigner", "root", "root");

                String qcheck = "select * from user where email='" + email + "' or mnum='" + mnum + "'";
                Statement stcheck = conn.createStatement();
                ResultSet rscheck = stcheck.executeQuery(qcheck);
                if (rscheck.next()) {
                 // otp code here
                 
                    out.println("you are Already register");
            }

            
                else
                                        {
             
            
            
            PreparedStatement pstmt = conn.prepareStatement("insert into designer(fname,lname,email,password,birthdate,gender,mnum,status) values(?,?,?,?,?,?,?,?)");

                pstmt.setString(1, fname);
                pstmt.setString(2, lname);
                pstmt.setString(3, email);
                pstmt.setString(4, psw);
                pstmt.setString(5, date);
                pstmt.setString(6, gender);
                pstmt.setString(7, mnum);
                pstmt.setString(8, status);

                int i = pstmt.executeUpdate();
                if (i == 1) {

                    Random rnd = new Random();
                    int nrnd = rnd.nextInt(10000);

                    session.setAttribute("rnd", nrnd);
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

                    InternetAddress from = new InternetAddress("designvilla22@gmail.com",
                            "Design Villa");
                    InternetAddress to = new InternetAddress(email);

                    message.setSentDate(new java.util.Date());
                    message.setFrom(from);
                    message.addRecipient(Message.RecipientType.TO, to);

                    message.setSubject("Security code");
                    message.setContent("Your verify code  is " + nrnd, "text/html");

                    Transport tr = s.getTransport("smtp");
                    tr.connect("smtp.gmail.com", "designvilla22@gmail.com", "8866152259");
                    message.saveChanges();
                    tr.sendMessage(message, message.getAllRecipients());
                    tr.close();

                    response.sendRedirect("dregisterotp.jsp");
                } else {
                }
            }

            conn.close ();

        %>

    </body>
</html>