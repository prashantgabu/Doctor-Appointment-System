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
    <div class="slider-item bread-item" style="background-image: url('backgrounds/b2.jpg');" data-stellar-background-ratio="0.5"> 
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
    <table class="table-bordered table-striped table-hover table ">
        <tr>
            <th> Doctor's Name</th>
            <th> Session </th>
            <th> Time_from </th>
            <th> Time_to </th>
            <th>Hospital</th>
            <th>Contact no</th>
            <th>Location</th>
            <th>Day</th>
            <th>No. of patient</th>
            <th>Options</th>
        </tr>
        <%
            if (request.getParameter("schedule_id") != null) {

                String qdel = "delete from schedule where schedule_id=" + request.getParameter("schedule_id");
                Statement stdel = conn.createStatement();
                stdel.executeUpdate(qdel);
            }
            String vdoctor_id = request.getParameter("doctor_id");
            String q = "select i.*,d.fname as dfirstname,d.lname as dlastname from schedule i,doctor_register d where i.doctor_id=d.doctor_id and d.doctor_id=" + vdoctor_id;


           // String q = "Select * from schedule";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                String schedule_id = rs.getString("schedule_id");
                String dfirstname = rs.getString("dfirstname");
                String dlastname = rs.getString("dlastname");
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
            <td><%=dfirstname%> <%=dlastname%></td>
            <td><%=sess%></td>
            <td><%=time_from%></td>
            <td><%=time_to%></td>
            <td><%=hospital_name%></td>
            <td><%=contact%></td>
            <td><%=location%></td>
            <td><%=daysathos%></td>
            <td><%=limits%></td>
            <td>
                
             <a href="view_scd.jsp?schedule_id=<%=schedule_id%>" class="btn btn-outline-danger" onclick="return confirm('do you want to delete ?')"> Delete </a>
             
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