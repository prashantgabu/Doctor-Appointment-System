<%@page import="java.sql.*" %>
<%
    String admin_id = "1";

    if (session.getAttribute("admin_id") == null) {
        response.sendRedirect("a_login.jsp");
    } else {
        admin_id = session.getAttribute("admin_id").toString();

    

%>
<%@include file="aheader.jsp" %>
<%

    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");
%>



<section class="home-slider owl-carousel">
    <div class="slider-item  bread-item" style="background-image: url('backgrounds/reg.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"><a href="index.html">Home</a></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Doctors</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <table class="table-bordered table-striped table-hover table ">
        <tr>
            <th>Name of Doctor</th>
            <th>Photo</th>
            <th>Email</th>
            <th>Contact No.</th>
            <th>Date of Birth</th>
            <th>Degree</th>
            <th>Specialist</th>
            <th>Years Of Experience</th>
            <th>About</th>
        </tr>
        <%
            if (request.getParameter("profile_id") != null) {

                String qdel = "delete from doctor_profile where doctor_id=" + request.getParameter("profile_id");
                Statement stdel = conn.createStatement();
                stdel.executeUpdate(qdel);

                String qdel2 = "delete from review_table where doctor_id=" + request.getParameter("profile_id");
                Statement stdel2 = conn.createStatement();
                stdel2.executeUpdate(qdel2);

                String qdel3 = "delete from appoint where doctor_id=" + request.getParameter("profile_id");
                Statement stdel3 = conn.createStatement();
                stdel3.executeUpdate(qdel3);

                String qdel4 = "delete from schedule where doctor_id=" + request.getParameter("profile_id");
                Statement stdel4 = conn.createStatement();
                stdel.executeUpdate(qdel4);

            }
            String q = "select i.*,d.fname as dfirstname,d.lname as dlastname,d.email as email,d.contact as contact,d.dob as dob,d.degree as degree from doctor_profile i,doctor_register d where i.doctor_id=d.doctor_id and d.status='active' order by d.fname ";

            //  String q = "Select * from doctor_profile";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                String profile_id = rs.getString("profile_id");
                String doctor_id = rs.getString("doctor_id");
                String dfirstname = rs.getString("dfirstname");
                String dlastname = rs.getString("dlastname");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                String dob = rs.getString("dob");
                String degree = rs.getString("degree");
                String propic = rs.getString("propic");
                String specialist = rs.getString("specialist");
                String exp = rs.getString("exp");
                String bio = rs.getString("bio");
        %>
        <tr>
            <td><%=dfirstname%>  <%=dlastname%></td>
            <td><img src="images/<%=propic%>" height="100px"/></td>
            <td><%=email%></td>
            <td><%=contact%></td>
            <td><%=dob%></td>
            <td><img src="images/<%=degree%>" height="100px"/></td>
            <td><%=specialist%></td>
            <td><%=exp%></td>
            <td><%=bio%></td>
        </tr>
        <tr>
            <td colspan="9" class="text-center bg-transparent">
                <a href="a_view_dprofile.jsp?profile_id=<%=profile_id%>" class="btn btn-outline-danger" onclick="return confirm('do you want to delete ?')"> Delete </a>

                <a href="a_view_booking.jsp?doctor_id=<%=doctor_id%>" class="btn btn-outline-primary">Booking</a>

                <a href="a_view_scd.jsp?doctor_id=<%=doctor_id%>"class="btn btn-outline-primary">Schedule</a>

                <a href="a_view_review.jsp?doctor_id=<%=doctor_id%>"class="btn btn-outline-primary">Review</a>
            </td>
        </tr>
        <%}%>
    </table>
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">

            </div>
        </div>
    </div>
</section>
<%}%>
<%@include file="footer.jsp" %>