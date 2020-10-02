<%@page import="java.sql.*"%>
<%
    
    String doctor_id = "1";
    if (session.getAttribute("doctor_id") == null) {
        response.sendRedirect("login.jsp");
    } else {
        doctor_id = session.getAttribute("doctor_id").toString();


%>
<%@include file="dheader.jsp" %>

<%    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");
%>
<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('backgrounds/back.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2">Home</span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Welcome Doctor</h1>
                </div>
            </div>
        </div>
    </div>
</section>


<%
    int tappoint = 0;
    String qappoint = "select * from appoint where doctor_id=" + doctor_id;

    Statement stp = conn.createStatement();
    ResultSet rsp = stp.executeQuery(qappoint);
    while (rsp.next()) {
        tappoint++;
    }
    int tscd = 0;
    String qscd = "select * from schedule where doctor_id=" + doctor_id;
    Statement sti = conn.createStatement();
    ResultSet rsi = sti.executeQuery(qscd);
    while (rsi.next()) {
        tscd++;
    }

    int treview = 0;
    String qreview = "select * from review_table where doctor_id=" + doctor_id;
    Statement str = conn.createStatement();
    ResultSet rsr = str.executeQuery(qreview);
    while (rsr.next()) {
        treview++;
    }
%>
<section style="overflow: hidden;">
    <br>
    <div class="row" >
        <div class="col-md-4 text-center" style="
    width: 300px;
  height: 200px;
  padding: 50px;
  border: 2px solid #9fcdff;">
            <a href="view_booking.jsp">    
                <span class="text-monospace" style="margin: 50px;" >Total Appointments</span><br>

                <span><%=tappoint%></span></a>
        </div>
        <div class="col-md-4 text-center " style="
    width: 300px;
  height: 200px;
  padding: 50px;
  border: 2px solid #9fcdff;">
            <a href="view_scd.jsp"> 
            <span>Total Schedules</span>
            <span><%=tscd%></span></a>
        </div>
        <div class="col-md-4 text-center " style="
    width: 300px;
  height: 200px;
  padding: 50px;
  border: 2px solid #9fcdff;">
            <a href="view_review.jsp"> 
            <span>Total Reviews</span>
            <span><%=treview%></span></a>
        </div>
    </div>
    <br>
</section>
<%}%>
<%@include file="footer.jsp" %>