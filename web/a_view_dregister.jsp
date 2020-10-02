
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
    <div class="slider-item  bread-item" style="background-image: url('backgrounds/bg12.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"><a href="ahome.jsp">Home</a></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Doctors</h1>
                </div>
            </div>
        </div>
    </div>
    
</section>

        
<section class="ftco-section contact-section ftco-degree-bg">
    <div class="row justify-content-center mb-5 pb-5">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <h2 class="mb-3 ">Search</h2>
                <form method="get">
                    <%
                        String sname = "";
                        if(request.getParameter("name")!=null)
                        {
                            sname=request.getParameter("name");
                        }
                        %>
                               
                    <p><input type="text" value="<%=sname%>" name="name"  class="form-control" ><br>
                        <input type="submit" name="btn" class="search-submit" value="Search"></p>
                </form>
            </div>
        </div>

    <table class="table-bordered table-striped table-hover table ">
        <tr>
            <th>Name of Doctor</th>
            <th>Email</th>
            <th>Contact No.</th>
            <th>Date of Birth</th>
            <th>Degree</th>
            <th>Gender</th>
            <th>IMR no.</th>
            <th>Options</th>

        </tr>
        <%            if (request.getParameter("doctor_id") != null) {

                String qdel = "delete from doctor_register where doctor_id=" + request.getParameter("doctor_id");
                Statement stdel = conn.createStatement();
                stdel.executeUpdate(qdel);
            }
            if (request.getParameter("doc_id") != null) {
                String qu = "update doctor_register set status='active' where doctor_id=" + request.getParameter("doc_id");
                Statement s = conn.createStatement();
                s.executeUpdate(qu);

            }
            
            String q = "Select * from doctor_register where status='request' order by doctor_id desc ";
           
                            if (request.getParameter("btn") != null) {
                    String dname = request.getParameter("name");
                    q = "Select * from doctor_register where status='request' and fname like '%" + dname + "%' order by doctor_id desc ";
                            }
            
            Statement st = conn.createStatement();
            ResultSet rs = st.executeQuery(q);
            while (rs.next()) {
                String doctor_id = rs.getString("doctor_id");
                String fname = rs.getString("fname");
                String lname = rs.getString("lname");
                String email = rs.getString("email");
                String contact = rs.getString("contact");
                String dob = rs.getString("dob");
                String degree = rs.getString("degree");
                String gender = rs.getString("gender");
                String imr = rs.getString("imr");


        %>
        <tr>
            <td><%=fname%> <%=lname%></td>
            <td><%=email%></td>
            <td><%=contact%></td>
            <td><%=dob%></td>
            <td><img src="images/<%=degree%>" height="100px"/></td>
            <td><%=gender%></td>
            <td><%=imr%></td>
            <td>
                <a href="a_view_dregister.jsp?doc_id=<%=doctor_id%>" class="btn btn-outline-success" onclick="return confirm('Are You Sure ?')"> Verify </a> &nbsp;
                <a href="a_view_dregister.jsp?doctor_id=<%=doctor_id%>" class="btn btn-outline-danger" onclick="return confirm('do you want to delete ?')"> Delete </a>
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