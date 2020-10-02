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
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String pwd = request.getParameter("pwd");
            String rpwd = request.getParameter("rpwd");
            String contact = request.getParameter("contact");
            String dob = request.getParameter("dob");
            String imr = request.getParameter("imr");
            String gender = request.getParameter("gender");
            String degree = request.getParameter("degree");

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");

            String qcheck = "select * from doctor_register where email='" + email + "' or contact='" + contact + "'";
            Statement stcheck = conn.createStatement();
            ResultSet rscheck = stcheck.executeQuery(qcheck);
            if (rscheck.next()) {
                // otp code here
                
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

                    response.sendRedirect("d_emailsend.jsp");
                
                

                
                
                
                
                
                
                
                out.println("you are Already registered");
            } else {
                PreparedStatement pstmt = conn.prepareStatement("insert into doctor_register(fname,lname,email,password,contact,dob,gender,degree,imr,status) values(?,?,?,?,?,?,?,?,?,?)");

                pstmt.setString(1, fname);
                pstmt.setString(2, lname);
                pstmt.setString(3, email);
                pstmt.setString(4, pwd);
                pstmt.setString(5, contact);
                pstmt.setString(6, dob);
                pstmt.setString(7, gender);
                pstmt.setString(8, degree);
                pstmt.setString(9, imr);
                pstmt.setString(10, "pending");

                int i = pstmt.executeUpdate();
                if (i == 1) {
                    // ************** blank record in profile

                    String q = "Select * from doctor_register order by doctor_id desc";
                    Statement st = conn.createStatement();
                    ResultSet rs = st.executeQuery(q);
                    rs.next();
                    String doctor_id = rs.getString("doctor_id");

                    String qpro = "insert into doctor_profile(doctor_id) values(" + doctor_id + ")";
                    Statement stpro = conn.createStatement();
                    stpro.executeUpdate(qpro);

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

                    response.sendRedirect("d_emailsend.jsp");
                } else {

                }
            }

            conn.close();

        %>
    </body>
</html>
