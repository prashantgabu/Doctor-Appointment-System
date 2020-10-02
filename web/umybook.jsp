
<%@page import="java.sql.*" %>

<%
    String user_id = "1";
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("ulogin.jsp");
    } else {
        user_id = session.getAttribute("user_id").toString();


%>
<%@include file="indexheader.jsp" %>


<%

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");
%>


<section class="home-slider owl-carousel">
    <div class="slider-item  bread-item" style="background-image: url('backgrounds/app.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Appointments</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <input type="button" name="btn1" value="Print" onclick="window.print();"/>
    <table class="table-bordered table-striped table-hover table ">
        <tr>
            <th>Status</th>
            <th>Doctor's Photo</th>
            <th>Name of Doctor</th>
            <th>Specialist of</th>
            <th>Date of Appointment</th>
            <th>Date of Booking</th>
            <th>Patient's name</th>
            <th>Patients's Age</th>
            <th>Options</th>
        </tr>

        <%            if (request.getParameter("book_id") != null) {

                String qdel = "update appoint set status='canceled' where book_id=" + request.getParameter("book_id");
                Statement stdel = conn.createStatement();
                stdel.executeUpdate(qdel);
            }

            String vuser_id = request.getParameter("user_id");
            String q = "select a.*,d.fname as firstname,d.lname as lastname,p.specialist as special,p.propic as picture from appoint a,doctor_register d,doctor_profile p,register_user u where a.doctor_id=d.doctor_id and a.doctor_id=p.doctor_id and a.user_id=u.user_id and u.user_id=" + user_id;

            //String q = "Select * from review_table where doctor_id=" + doctor_id;
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                String book_id = rs.getString("book_id");
                String firstname = rs.getString("firstname");
                String lastname = rs.getString("lastname");
                String doctor_id = rs.getString("doctor_id");
                String schedule_id = rs.getString("schedule_id");
                String patient = rs.getString("patient");
                String age = rs.getString("age");
                String book_date = rs.getString("book_date");
                String todaydate = rs.getString("todaydate");
                String picture = rs.getString("picture");
                String special = rs.getString("special");
                String status = rs.getString("status");

        %>
        <%if (status.equals("booked")) {
        %>
        <tr class="text-white bg-success">

            <%} else {%>

        <tr class="text-white bg-primary">

            <%}%>


            <td><%=status%></td>
            <td><img src="images/<%=picture%>" width="100px" height="100px" class="img img-circle" /></td>
            <td><%=firstname%> <%=lastname%></td>
            <td><%=special%></td>
            <td><%=book_date%></td>
            <td><%=todaydate%></td>
            <td><%=patient%></td>
            <td><%=age%></td>
            <td>
                <a href="umybook.jsp?book_id=<%=book_id%>" class="btn btn-outline-danger" onclick="return confirm('do you want to delete ?')"> Cancel </a>
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