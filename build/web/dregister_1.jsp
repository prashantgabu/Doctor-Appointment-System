<%@include file="mainheader.jsp" %>
<link rel="stylesheet" href="css/mycss.css">

<section class="ftco-section contact-section ftco-degree-bg po" style="background-image:  url('backgrounds/blue.jpg') ; background-size: 100%;">
    <center><h1 class="text-white">Registration Form</h1></center>                    
    <div class="container" >
        <div class="row block-9" style="margin: auto" >
            <div class="col-md-6 pr-md-5 align-content-center" style="border: 2px solid white; border-radius: 5px; background: whitesmoke;margin-left: 260px;" >



                <form action="dregister_code.jsp" method="post" style="border: #040505; ">
                    <div class="form-inline" style="display: inline" >
                        <input type="text" name="fname"class="form-control"  placeholder="First Name" style="width: 240px" title="Please Enter Only Alphabets!!" pattern="[a-zA-Z ]*$" required >&nbsp;
                    </div>
                    <div class="form-inline" style="display: inline">
                        <input type="text" name="lname" class="form-control" placeholder="Last Name" style="width: 231px" title="Please Enter Only Alphabets!!" pattern="[a-zA-Z ]*$" required >
                    </div> 
                    <div class="form-group" >
                        <br><input type="text" name="email" class="form-control" placeholder="Enter Gmail ID" title="Enter Valid Email Address" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" >
                    </div>
                    <div class="form-group">
                        <input type="password" name="pwd" class="form-control" placeholder="Create password">
                    </div>
                  <!--  <div class="form-group">
                        <input type="password" name="rpwd" class="form-control" placeholder="Re-enter your password">
                    </div>-->
                    <div class="form-group">
                        <input type="text" name="contact" class="form-control" placeholder="Your contact no.">
                    </div>
                    <div class="form-group">
                        <p>Your Date of birth</p>
                        <input type="date" class="form-control " name="dob" placeholder="Your Birthdate" min="1950-01-01">
                    </div>

                    <div class="form-group">
                        <p>Your Gender</p>
                        <input type="radio" name="gender" value="male" required> Male &nbsp; <input type="radio" name="gender" value="female" required=""> Female &nbsp;

                    </div>
                    <div class="form-group">
                        <p>Upload Your Degree:-</p>
                        <input type="file" name="degree" value="Browse" required accept="image/png, image/jpeg" > &nbsp;<h6>Please upload only jpeg or png format file</h6> </div>
                    <div class="form-group">
                        <input type="number" name="imr" class="form-control" placeholder="Your IMR no." maxlength="10">
                    </div>

                    <div class="form-group" style="margin-left: 140px;">
                        <br>
                        <input type="submit" name="create" value="Create Profile" class="btn btn-primary py-3 px-5">
                    </div>
                </form>


            </div>

        </div>
    </div>
</section>
<%@include file="footer.jsp" %>