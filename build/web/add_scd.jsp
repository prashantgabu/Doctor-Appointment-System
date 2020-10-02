
<%
    String doctor_id = "1";
    if (session.getAttribute("doctor_id") == null) {
        response.sendRedirect("login.jsp");
    } else {
        doctor_id = session.getAttribute("doctor_id").toString();

    

%>
<%@include file="dheader.jsp" %>
<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Add Schedule</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">

                <form action="add_scd_code.jsp" method="post">
                    <div class="form-group">
                        Select your Work Place:     

                        <input type="radio" required  title="Please select one" name="sess" value="Hospital"> Hospital&nbsp; 
                        <input type="radio" title="Please select one" name="sess" value="evening" required> Clinic<br>
                    </div>
                    <div class="form-group">
                        Select Time:
                        <select name="timefrom" class="form-group" required>
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
                        <input type="text" class="form-control" name="hospitalname" placeholder="Enter Hospital Name" title="Please Enter Only Alphabets!!"  pattern="[a-zA-Z ]*$" required >
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" name="contact" placeholder="Enter Contact no." required pattern="(\+?\d[- .]*){7,13}" title="International, National or Local phone number>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="location" placeholder="Enter your Location" title="Please Enter Only Alphabets!!" pattern="[a-zA-Z ]*$" required >
                    </div>
                    <div class="form-group">
                        <table>
                            <tr><th>Select the day for schedule:</th> </tr>
                            <tr>
                                <td><input type="checkbox" name="monday" value="monday" > Monday &nbsp;</td>
                                <td><input type="checkbox" name="tuesday" value="tuesday" > Tuesday &nbsp;<br></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="wednesday" value="wednesday"> Wednesday &nbsp;</td>
                                <td><input type="checkbox" name="thursday " value="thursday"> Thursday &nbsp;<br></td>
                            </tr>
                            <tr>
                                <td><input type="checkbox" name="friday" value="friday"> Friday &nbsp;</td>
                                <td><input type="checkbox" name="saturday" value="saturday"> Saturday &nbsp;</td>
                            </tr>
                        </table>

                    </div>
                    <div class="form-group">
                        Select Maximum Patient Per Hour:
                        <select name="totalpatient" class="form-group"  required>
                            <option value="1">1</option>    
                            <option value="2" >5</option>    
                            <option value="3" >10</option>   
                            <option value="4" >20</option>    
                            <option value="5" >25</option>    
                        </select>
                    </div>
                    <div class="form-group">
                        <br><input type="submit" name="add" value="Add" class="btn btn-primary py-3 px-5">
                    </div>
                </form>


            </div>

        </div>
    </div>
</section>
<%}%>
<%@include file="footer.jsp" %>