
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
    <div class="slider-item  bread-item" style="background-image: url('backgrounds/b2.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"><a href="index.html">Home</a></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Reviews</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <table class="table-bordered table-striped table-hover table ">
        <tr>
            <th>Date</th>
            <th>Name of user</th>
            <th>Email of user</th>
            <th>Contact no. of user</th>
            <th>Review</th>
            <th>Rating</th>
            <th>Options</th>

        </tr>
        <%
            if (request.getParameter("review_id") != null) {

                String qdel = "delete from review_table where review_id=" + request.getParameter("review_id");
                Statement stdel = conn.createStatement();
                stdel.executeUpdate(qdel);
            }
            String vdoctor_id = request.getParameter("doctor_id");
            String q = "select i.*,u.name as username,u.email as email,u.contact as contact from review_table i,doctor_register d,register_user u where i.doctor_id=d.doctor_id and i.user_id=u.user_id and d.doctor_id=" + vdoctor_id;

           //String q = "Select * from review_table where doctor_id=" + doctor_id;
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                String review_id = rs.getString("review_id");
                String review_date = rs.getString("review_date");
                String user_id = rs.getString("user_id");
                String review = rs.getString("review");
                String rating = rs.getString("rating");
                String email = rs.getString("email");
                String username = rs.getString("username");
                String contact = rs.getString("contact");


        %>
        <tr>
            <td><%=review_date%></td>
            <td><%=username%></td>
            <td><%=email%></td>
            <td><%=contact%></td>
            <td><%=review%></td>
            <td><%=rating%></td>
           <td>
             <a href="a_view_review.jsp?review_id=<%=review_id%>" class="btn btn-outline-danger" onclick="return confirm('do you want to delete ?')"> Delete </a>
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