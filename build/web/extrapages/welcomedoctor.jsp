<%@page import="java.sql.*"%>

<%

    String sdesigner_id = "1";
    if (session.getAttribute("designer_id") == null) {
        response.sendRedirect("dlogin.jsp");
    } else {
        sdesigner_id = session.getAttribute("designer_id").toString();


%>
<%@include file="dheader.jsp" %>
<%@include file="footer.jsp" %>


<%    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbdesigner", "root", "root");
%>
<div id="colorlib-main">

    <div class="colorlib-contact">
        <div class="colorlib-narrow-content">
            <div class="row">
                <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">

                    <h2 class="colorlib-heading">Designer Home</h2>
                </div>
            </div>
            <div class="row">

                <div class="col-md-7 col-md-push-1">
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box" data-animate-effect="fadeInLeft">

                            <h1> Welcome Designer </h1>
                        </div>

                    </div>
                </div>
            </div>


            <%
                int tportfolio = 0;
                String qportfolio = "select * from portfolio where designer_id=" + sdesigner_id;

                Statement stp = conn.createStatement();
                ResultSet rsp = stp.executeQuery(qportfolio);
                while (rsp.next()) {
                    tportfolio++;
                }
                int tinquiry = 0;
                String qinquiry = "select * from inquiry where designer_id=" + sdesigner_id;
                Statement sti = conn.createStatement();
                ResultSet rsi = sti.executeQuery(qinquiry);
                while (rsi.next()) {
                    tinquiry++;
                }

                int treview = 0;
                String qreview = "select * from review where designer_id=" + sdesigner_id;
                Statement str = conn.createStatement();
                ResultSet rsr = str.executeQuery(qreview);
                while (rsr.next()) {
                    treview++;
                }
            %>

            <div id="colorlib-counter" class="colorlib-counters" style="background-image: url(images/cover_bg_1.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="colorlib-narrow-content">

                    <div class="row">
                        <div class="col-md-3 text-center animate-box">
                            <span class="icon"><i class="flaticon-skyline"></i></span>
                            <span class="colorlib-counter js-counter" data-from="0" data-to="<%=tinquiry%>" data-speed="5000" data-refresh-interval="50"></span>
                            <span class="colorlib-counter-label">Inquiry</span>
                        </div>
                        <div class="col-md-3 text-center animate-box">
                            <span class="icon"><i class="flaticon-engineer"></i></span>
                            <span class="colorlib-counter js-counter" data-from="0" data-to="<%=treview%>" data-speed="5000" data-refresh-interval="50"></span>
                            <span class="colorlib-counter-label">Review</span>
                        </div>

                        <div class="col-md-3 text-center animate-box">
                            <span class="icon"><i class="flaticon-worker"></i></span>
                            <span class="colorlib-counter js-counter" data-from="0" data-to="<%=tportfolio%>" data-speed="5000" data-refresh-interval="50"></span>
                            <span class="colorlib-counter-label">Portfolio</span>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>


</div>
<%}%>

<%@include file="footer2.jsp" %>