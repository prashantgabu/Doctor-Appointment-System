
<%@page import="java.sql.*"%>

<%
    String admin_id = "1";
    if (session.getAttribute("admin_id") == null) {
        response.sendRedirect("a_login.jsp");
    } else {
        admin_id = session.getAttribute("admin_id").toString();


%>
<%@include file="aheader.jsp" %>


<%    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");
%>

<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('backgrounds/ad2.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"><a href="index.html">Home</a></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Welcome Admin</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<%                     int treq = 0;
    String qreq = "select * from doctor_register where status='request'";

    Statement stp = conn.createStatement();
    ResultSet rsp = stp.executeQuery(qreq);
    while (rsp.next()) {
        treq++;
    }
    int tdoc = 0;
    String qdoc = "select * from doctor_register where status='active'";
    Statement sti = conn.createStatement();
    ResultSet rsi = sti.executeQuery(qdoc);
    while (rsi.next()) {
        tdoc++;
    }

    int tpend = 0;
    String qpend = "select * from doctor_register where status='pending'";
    Statement str = conn.createStatement();
    ResultSet rsr = str.executeQuery(qpend);
    while (rsr.next()) {
        tpend++;
    }
    int tuser = 0;
    String quser = "select * from register_user where status='active'";
    Statement stu = conn.createStatement();
    ResultSet rsu = stu.executeQuery(quser);
    while (rsu.next()) {
        tuser++;
    }

    int tupend = 0;
    String qupend = "select * from register_user where status='pending'";
    Statement stup = conn.createStatement();
    ResultSet rsup = stup.executeQuery(qupend);
    while (rsup.next()) {
        tupend++;
    }
    int tappoint = 0;
    String qappoint = "select * from appoint";
    Statement sta = conn.createStatement();
    ResultSet rsa = sta.executeQuery(qappoint);
    while (rsa.next()) {
        tappoint++;
    }
%>
<section style="overflow: hidden;">
    <div class="row"  >
        <div class="col-md-2 text-center" style="
    width: 300px;
  height: 200px;
  padding: 50px;
  border: 2px solid #9fcdff;">
            <a href="a_view_dprofile.jsp">    
                <span class="text-monospace" >Total Active Doctors</span><br>
                <span><%=tdoc%></span></a>
        </div>
        <div class="col-md-2 text-center " style="
    width: 300px;
  height: 200px;
  padding: 50px;
  border: 2px solid #9fcdff;">
            <a href="a_view_dregister.jsp">
            <span>Total Requests</span>
            <span><%=treq%></span></a>
        </div>
        <div class="col-md-2 text-center " style="
    width: 300px;
  height: 200px;
  padding: 50px;
  border: 2px solid #9fcdff;">
            <span>Total Pending Doctors</span>
            <span><%=tpend%></span>
        </div>

        <div class="col-md-2 text-center " style="
    width: 300px;
  height: 200px;
  padding: 50px;
  border: 2px solid #9fcdff;">
            <span>Total Appointments</span>
            <span><%=tappoint%></span>
        </div>

        <div class="col-md-2 text-center " style="
    width: 300px;
  height: 200px;
  padding: 50px;
  border: 2px solid #9fcdff;">
            <span>Total Active Users</span>
            <span><%=tuser%></span>
        </div>
        <div class="col-md-2 text-center " style="
    width: 200px;
  height: 200px;
  padding: 50px;
  border: 2px solid #9fcdff;" >
            <span>Total Pending Users</span>
            <span><%=tupend%></span>
        </div>
    </div>
</section>
<%}%>
<%@include file="footer.jsp" %>