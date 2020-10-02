
<link rel="stylesheet" href="css/mycss.css">
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





<%
        String qpro = "Select * from register_user where user_id=" + user_id;
        Statement stmtpro = conn.createStatement();
        ResultSet rspro = stmtpro.executeQuery(qpro);
        rspro.next();
        String name = rspro.getString("name");
        String email = rspro.getString("email");
        String contact = rspro.getString("contact");
        String dob = rspro.getString("dob");
        String gender = rspro.getString("gender");
        String address = rspro.getString("address");
        String city = rspro.getString("city");

%>
<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2">Home</span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Your Profile</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="form-group changepassword">

            <a href="u_change_password.jsp" class="btn btn-primary" style="padding: 14px 30px">Change Password</a> 



        </div>
        <div class="row block-9">
            <div class="col-md-6 pr-md-5" style="border-radius: 20px;
                 background-color: #cccccc;
                 padding: 40px;
                 ">

                <form action="uprofile_code.jsp" method="post">
                    <div class="form-group">
                        <input type="text" name="name" value="<%=name%>" class="form-control" placeholder="First Name" title="Please Enter Only Alphabets" pattern="[a-zA-Z ]*$" required >
                    </div>
                    <div class="form-group">
                        <input type="text" name="email" value="<%=email%>" class="form-control" placeholder="Your Email" title="Enter Valid Email Address" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" >
                    </div>
                    <div class="form-group">
                        <input type="number" name="contact" value="<%=contact%>" class="form-control" placeholder="Your contact no." required pattern="(\+?\d[- .]*){7,13}" title="International, National or Local phone number">
                    </div>
                    <div class="form-group">
                        <p>Your Date of birth</p>
                        <input type="date" name="dob" value="<%=dob%>" class="form-control" placeholder="Your Birthdate" required>
                    </div>


                    <div class="form-group">
                        <p>Your Gender</p>
                        <%
                            if (gender.equals("male")) {
                        %>   

                        <input type="radio" name="gender" value="male" checked required> Male &nbsp; 
                        <input type="radio" name="gender" value="female" required> Female &nbsp;
                        <%} else {%>
                        <input type="radio" name="gender" value="male"  required> Male &nbsp; 
                        <input type="radio" name="gender" value="female" checked required> Female &nbsp;
                        <%}%>
                    </div>
                    <div class="form-group">
                        <textarea name="address" id="" cols="30" rows="7" class="form-control" placeholder="Enter Your Address" required><%=address%></textarea>
                    </div>
                    <div class="form-group">
                        Select your city:-
                        <select name="city" required>
                            <option value="<%=city%>"><%=city%></option>
                            <option value="Surendranagar">Surendranagar</option>
                            <option value="Rajkot">Rajkot</option>
                            <option value="Vadodra">Vadodra</option>
                            <option value="Ahmedabad">Ahmedabad</option>
                        </select>

                    </div>




                    <div class="form-group">

                        <input type="submit" name="savechanges" value="Save Changes" class="btn btn-primary py-3 px-5">
                    </div>
                </form>


            </div>

        </div>
    </div>
</section>
<%}%>
<%@include file="footer.jsp" %>