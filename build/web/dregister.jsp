<%@include file="mainheader.jsp" %>

<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style=" background-image: url('images/blur.jpg'); background-size: " data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2">Register</span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Registration</h1><br>
                    <br>
                    
                </div>
            </div>
        </div>
    </div>
</section>
<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">
                
                    

                <form action="dregister_code.jsp" method="post" >
                    <div class="form-inline" style="display: inline" >
                        <input type="text" name="fname"class="form-control"  placeholder="First Name" style="width: 247px">&nbsp;
                    </div>
                    <div class="form-inline" style="display: inline">
                        <input type="text" name="lname" class="form-control" placeholder="Last Name" style="width: 247px">
                    </div> 
                    <div class="form-group" >
                        <input type="text" name="email" class="form-control" placeholder="Your Email">
                    </div>
                    <div class="form-group">
                        <input type="password" name="pwd" class="form-control" placeholder="Create password">
                    </div>
                    <div class="form-group">
                        <input type="text" name="rpwd" class="form-control" placeholder="Re-enter your password">
                    </div>
                    <div class="form-group">
                        <input type="text" name="contact" class="form-control" placeholder="Your contact no.">
                    </div>
                    <div class="form-group">
                        <p>Your Date of birth</p>
                        <input type="date" class="form-control" name="dob" placeholder="Your Birthdate" max="2019-01-19">
                    </div>

                    <div class="form-group">
                        <p>Your Gender</p>
                        <input type="radio" name="gender" value="male"> Male &nbsp; <input type="radio" name="gender" value="female"> Female &nbsp;

                    </div>
                    <div class="form-group">
                        <p>Upload Your Degree:-</p>
                        <input type="file" name="degree" value="Browse"> &nbsp; </div>
                    <div class="form-group">
                        <input type="number" name="imr" class="form-control" placeholder="Your IMR no.">
                    </div>

                    <div class="form-group">
                        <br>
                        <input type="submit" name="create" value="Create Profile" class="btn btn-primary py-3 px-5">
                    </div>
                </form>


            </div>

            </div>
    </div>
</section>
</div>
<%@include file="footer.jsp" %>