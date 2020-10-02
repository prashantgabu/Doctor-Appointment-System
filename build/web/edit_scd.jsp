
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
    <div class="slider-item bread-item" style="background-image: url('backgrounds/b6.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"><a href="index.html">Home</a></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Update Schedule</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">

                <form action="edit_scd_code.jsp" method="post">
                    <%                        String schedule_id = request.getParameter("schedule_id");
                        String q = "Select * from schedule where schedule_id=" + schedule_id;
                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery(q);
                        rs.next();
                        String sess = rs.getString("sess");
                        /*if (rs.getString("sess") != null) {
                            sess += "morning";
                        }
                        if (rs.getString("sess") != null) {
                            sess += "evening";
                        }*/
                        String time_from = rs.getString("time_from");
                        String time_to = rs.getString("time_to");
                        String hospital_name = rs.getString("hospital_name");
                        String contact = rs.getString("contact");
                        String location = rs.getString("location");
                        /*String monday=rs.getString("monday");
                              String tuesday=rs.getString("tuesday");
                              String wednesday=rs.getString("wednesday");
                              String thursday=rs.getString("thursday");
                              String friday=rs.getString("friday");
                              String saturday=rs.getString("saturday");*/
                        String daysathos = rs.getString("daysathos");

                        String limits = rs.getString("limits");
                    %>
                    <input type="hidden" name="schedule_id" value="<%=schedule_id%>"/>
                    <div class="form-group">
                        Work Place: 
                         <%
                            if(sess.equals("Hospital"))
                            {
                        %>   

                        <input type="radio"  checked name="sess" value="Hospital">Hospital&nbsp; 
                        <input type="radio" name="sess" value="Clinic"> Clinic<br>
                     
                        <%}else{%>
                           <input type="radio"  name="sess" value="Hospital">Hospital&nbsp; 
                           <input type="radio" name="sess" checked value="Clinic"> Clinic<br>
                     <%}%>
                    </div>
                    <div class="form-group ">
                        Select Time:
                        <select name="time_from" class="form-group" >
                            <option value="<%=time_from%>"><%=time_from%></option>    
                            <option value="09:00:00" >09:00:00</option>    
                            <option value="10:00:00" >10:00:00</option>    
                            <option value="11:00:00" >11:00:00</option>   
                            <option value="12:00:00" >12:00:00</option>    
                            <option value="13:00:00" >13:00:00</option>    
                            <option value="16:00:00" >16:00:00</option>    
                            <option value="17:00:00" >17:00:00</option>    
                            <option value="18:00:00" >18:00:00</option>    
                            <option value="19:00:00" >19:00:00</option>    
                            <option value="20:00:00" >20:00:00</option> 
                        </select>
                    
                    </div>
                    <div class="form-group">
                        Hospital Name:-
                        <input type="text" class="form-control" name="hospital_name" value="<%=hospital_name%>"  placeholder="Enter Hospital Name">
                    </div>
                    <div class="form-group">
                        Contact NO:-
                        <input type="text" class="form-control" value="<%=contact%>" name="contact" placeholder="Enter Contact no.">
                    </div>
                    <div class="form-group">
                        Location:
                        <input type="text" class="form-control" name="location" value="<%=location%>" placeholder="Enter your Location">
                    </div>
                    <div class="form-group">
                        <table>
                            <tr><th>Select the day for schedule:</th> </tr>
                            <tr>
                                <td>

                                    <%
                                        String checkm = "uncheck";
                                        String checkt = "uncheck";
                                        String checkw = "uncheck";
                                        String checkth = "uncheck";
                                        String checkf = "uncheck";
                                        String checks = "uncheck";
                                        if (daysathos.contains("Monday")) {
                                            checkm = "checked";
                                        }

                                        if (daysathos.contains("Tuesday")) {
                                            checkt = "checked";
                                        }
                                        if (daysathos.contains("Wednesday")) {
                                            checkw = "checked";
                                        }
                                        if (daysathos.contains("Thursday")) {
                                            checkth = "checked";
                                        }
                                        if (daysathos.contains("Friday")) {
                                            checkf = "checked";
                                        }
                                        if (daysathos.contains("Saturday")) {
                                            checks = "checked";
                                        }

                                    %>
                                    <input type="checkbox" <%=checkm%> name="monday"> Monday &nbsp;

                                </td>
                                <td><input type="checkbox" <%=checkt%> name="tuesday" value="Tuesday"> Tuesday &nbsp;<br></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" <%=checkw%> name="wednesday" value="Wednesday"> Wednesday &nbsp;</td>
                                <td><input type="checkbox" <%=checkth%> name="thursday " value="Thursday"> Thursday &nbsp;<br></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" <%=checkf%> name="friday" value="Friday"> Friday &nbsp;</td>
                                <td><input type="checkbox" <%=checks%> name="saturday" value="Saturday"> Saturday &nbsp;</td>
                            </tr>
                        </table>

                    </div>
                    <div class="form-group">
                        Patient Limit Per Hour:-
                        <select name="limits" class="form-group">
                            <option value="<%=limits%>"><%=limits%></option>    
                            <option value="1" >1</option>    
                            <option value="5" >5</option>    
                            <option value="10" >10</option>   
                            <option value="15" >15</option>    
                            <option value="20" >20</option>    
                            <option value="25" >25</option>    
                        </select>
                    </div>
                    <div class="form-group">
                        <br>

                        <input type="submit" name="update" value="Update" class="btn btn-primary py-3 px-5">
                    </div>
                </form>


            </div>

        </div>
    </div>
</section>
<%}%>
<%@include file="footer.jsp" %>