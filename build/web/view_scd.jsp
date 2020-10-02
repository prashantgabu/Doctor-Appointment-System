
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
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"><a href="index.html">Home</a></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Schedule</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="form-group changepassword">
            <a href="add_scd.jsp" class="btn btn-primary px-4">Add Schedule</a>
        </div>
    </div>

    <!-- <form action="#" style=" width: 200px;">-->

    <!-- </form>-->



    <table class="table-bordered table-striped table-hover table ">
        <tr>
            <th> Session </th>
            <th> Time_from </th>
            <th>Hospital</th>
            <th>Contact no</th>
            <th>Location</th>
            <th>Day</th>
            <th>No. of patient</th>
            <th>Options</th>
        </tr>
        <%            if (request.getParameter("schedule_id") != null) {

                String qdel = "delete from schedule where schedule_id=" + request.getParameter("schedule_id");
                Statement stdel = conn.createStatement();
                stdel.executeUpdate(qdel);
            }
            String q = "Select * from schedule where doctor_id=" + doctor_id;
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                String schedule_id = rs.getString("schedule_id");
                String sess = rs.getString("sess");
                String time_from = rs.getString("time_from");
                String time_to = rs.getString("time_to");
                String status = rs.getString("status");
                //String doctor_id = rs.getString("doctor_id");
                String hospital_name = rs.getString("hospital_name");
                String contact = rs.getString("contact");
                String location = rs.getString("location");
                String daysathos = rs.getString("daysathos");
                String limits = rs.getString("limits");


        %>
        <tr>
            <td><%=sess%></td>
            <td><%=time_from%></td>
            <td><%=hospital_name%></td>
            <td><%=contact%></td>
            <td><%=location%></td>
            <td><%=daysathos%></td>
            <td><%=limits%></td>
            <td>
                <a href="edit_scd.jsp?schedule_id=<%=schedule_id%>" class="btn btn-primary btn-outline-primary" >Edit</a>
                <a href="view_scd.jsp?schedule_id=<%=schedule_id%>" class="btn btn-outline-danger"  onclick="return confirm('do you want to delete ?')"> Delete </a>

            </td>
        </tr>
        <%}%>

    </table>

</section>
<%}%>
<%@include file="footer.jsp" %>