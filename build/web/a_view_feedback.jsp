
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
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Feedbacks</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <table class="table-bordered table-striped table-hover table ">
        <tr>
            <th>Name of User</th>
            <th>Email-ID</th>
            <th>Date</th>
            <th>Feedback</th>
            <th>Options</th>

        </tr>
        <%
            if (request.getParameter("feed_id") != null) {

                String qdel = "delete from feedback where feed_id=" + request.getParameter("feed_id");
                Statement stdel = conn.createStatement();
                stdel.executeUpdate(qdel);
            }

            String q = "Select * from feedback";
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                String feed_id = rs.getString("feed_id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                String date = rs.getString("date");
                String message = rs.getString("message");


        %>
        <tr>
            <td><%=name%></td>
            <td><%=email%></td>
            <td><%=date%></td>
            <td><%=message%></td>
            <td>
                <a href="a_view_feedback.jsp?feed_id=<%=feed_id%>" class="btn btn-outline-danger" onclick="return confirm('do you want to delete ?')"> Delete </a>
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