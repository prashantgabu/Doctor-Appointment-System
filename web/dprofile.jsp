
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



    <%

    String qpro = "Select * from doctor_profile where doctor_id=" + doctor_id;
    Statement stmtpro = conn.createStatement();
    ResultSet rspro = stmtpro.executeQuery(qpro);
    rspro.next();
    String propic = rspro.getString("propic");
    String specialist = rspro.getString("specialist");
    String exp = rspro.getString("exp");
    String bio = rspro.getString("bio");

    //******************* register
    String qreg = "Select * from doctor_register where doctor_id=" + doctor_id;
    Statement stmtreg = conn.createStatement();
    ResultSet rsreg = stmtpro.executeQuery(qreg);
    rsreg.next();
    String fname = rsreg.getString("fname");
    String lname = rsreg.getString("lname");
    String dob = rsreg.getString("dob");
    String email = rsreg.getString("email");
    String gender = rsreg.getString("gender");
    String password = rsreg.getString("password");
    String contact = rsreg.getString("contact");


%>
<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('backgrounds/back1.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"><a href="index.html">Home</a></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Your Profile</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="form-group changepassword">

            <img src="images/<%=propic%>" style="border-radius: 50%; height:200px;"/><br><br>
            <a href="change_photo.jsp" class="btn btn-primary" style="padding: 14px 30px">Change Photo</a><br><br>
            <a href="change_password.jsp" class="btn btn-primary" style="padding: 14px 30px">Change Password</a> 



        </div>
        <div class="row block-9">
            <div class="col-md-6 pr-md-5" >

                <form action="dprofile_code.jsp" method="post">
                    <div class="form-group">
                        Enter Your First Name:
                        <input type="text" name="fname" value="<%=fname%>" class="form-control" placeholder="First Name">
                        
                    </div>
                    <div class="form-group ">
                        Enter Your Last Name:
                        <input type="text" name="lname" value="<%=lname%>" class="form-control" placeholder="Last Name">
                    </div>
                    <div class="form-group">
                        Enter Contact NO:
                        <input type="text" name="contact" value="<%=contact%>" class="form-control" placeholder="Your contact no.">
                    </div>
                    <div class="form-group">
                        <p>Your Date of birth</p>
                        <input type="date" name="dob" value="<%=dob%>" class="form-control" placeholder="Your Birthdate" max="2019-01-19">
                    </div>


                    <div class="form-group">
                        Specialist in:
                        <select name="specialist"  class="form-group">
                            <option value="<%=specialist%>"><%=specialist%></option>    
                            <option value="Gynecologist">Gynecologist</option>    
                            <option value="General Physician" >General Physician</option>    
                            <option value="Orthopedic" >Orthopedic</option>   
                            <option value="Cardiologist" >Cardiologist</option>    
                            <option value="E.N.T" >E.N.T</option>    
                            <option value="Neurologist" >Neurologist</option>    
                            <option value="Psychiatrist" >Psychiatrist</option>       
                        </select>
                    </div>
                    <div class="form-group">
                        <p>Your Gender:</p>
                        
                        <%
                            if(gender.equals("male"))
                            {
                        %>   
                          
                        <input type="radio" name="gender" checked value="male" > Male &nbsp; 
                        <input type="radio" name="gender" value="female" > Female &nbsp;
                            <%}else{%>
                          
                        <input type="radio" name="gender" value="male" > Male &nbsp; 
                        <input type="radio" name="gender" checked  value="female" > Female &nbsp;
                         <% }%>  
                    </div>
                        
                    <div class="form-group">
                        Years Of Experience:
                        <select name="exp"  class="form-group">
                            <option value="<%=exp%>"><%=exp%></option>    
                            <option value="1" >1</option>    
                            <option value="2" >2</option>    
                            <option value="3" >3</option>    
                            <option value="4" >4</option>    
                            <option value="5" >5</option>    
                            <option value="6" >6</option>    
                            <option value="7" >7</option>    
                            <option value="8" >8</option>    
                            <option value="9" >9</option>    
                            <option value="10" >10</option>    
                            <option value="11" >11</option>    
                            <option value="12" >12</option>    
                            <option value="13" >13</option>    
                            <option value="14" >14</option>    
                            <option value="15" >15</option>    
                            <option value="16" >16</option>    
                            <option value="17" >17</option>    
                            <option value="18" >18</option>    
                            <option value="19" >19</option>    
                            <option value="20" >20</option>    
                            <option value="23" >23</option>    
                            <option value="25" >25</option>    
                            <option value="30" >30</option>    
                            <option value="35" >35</option>    
                            <option value="40" >40</option>    
                        </select>
                    </div>
                    

                    <div class="form-group">
                        About You:
                        <textarea name="bio" id="" cols="30" rows="7" class="form-control" placeholder="About You"><%=bio%></textarea>
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