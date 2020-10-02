

<%@page import="java.sql.*" %>
<%
    String doctor_id = "1";
    if (session.getAttribute("doctor_id") == null) {
        response.sendRedirect("login.jsp");
    } else {
        doctor_id = session.getAttribute("doctor_id").toString();

    

%>
<%@include file="dheader.jsp" %>

<%

    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");
%>



<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('backgrounds/back1.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2">Home</span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Appointments</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <table class="table-bordered table-striped table-hover table ">
        <tr>
            <th>Status</th>
            <th>Date of booking</th>
            <th>Session</th>
            <th>Hospital</th>
            <th>Patient's Name</th>
            <th>Age</th>
            <th>User Details</th>
            <th>Option</th>

        </tr>
        <%            
            if (request.getParameter("book_id") != null) {
                String qdel = "update appoint  set status='rejected' where book_id=" + request.getParameter("book_id");
                Statement stdel = conn.createStatement();
                stdel.executeUpdate(qdel);
            }
            
            String vdoctor_id = request.getParameter("doctor_id");
            String q = "select i.*,s.sess as sess,s.hospital_name as hospital_name,u.gender as gender,u.contact as contact from appoint i,doctor_register d,register_user u,schedule s where i.doctor_id=d.doctor_id and i.schedule_id=s.schedule_id and i.user_id=u.user_id and d.doctor_id=" + doctor_id + " order by book_date desc,status ";

            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                String status  = rs.getString("status");
                String book_id = rs.getString("book_id");
                String sess = rs.getString("sess");
                String book_date = rs.getString("book_date");
                String hospital_name = rs.getString("hospital_name");
                String gender = rs.getString("gender");
                String schedule_id = rs.getString("schedule_id");
                String patient = rs.getString("patient");
                String age = rs.getString("age");
                String contact = rs.getString("contact");
                String user_id = rs.getString("user_id");
                doctor_id = rs.getString("doctor_id");

        %>
        <%
            if(status.equals("booked")){ 
            %>
            <tr class="text-white bg-success">
              
            <%}else{%>
            
            <tr class="text-white bg-primary">

            <%}%>
        
            <td><%=status%></td>
            <td><%=book_date%></td>
            <td><%=sess%></td>
            <td><%=hospital_name%></td>
            <td><%=patient%></td>
            <td><%=age%></td>
            <td><span>Gender:-<%=gender%>  <br></span><span>Contact:-<%=contact%></span></td>
            <td>
                <a href="view_booking.jsp?book_id=<%=book_id%>" class="btn btn-outline-danger" onclick="return confirm('do you want to delete ?')"> Delete </a>
            </td>
        </tr>
        <%}%>

    </table>
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">

                <!-- <form action="#" style=" width: 200px;">-->

                <!-- </form>-->
            </div>
        </div>
    </div>
</section>
<%}%>
<%@include file="footer.jsp" %>