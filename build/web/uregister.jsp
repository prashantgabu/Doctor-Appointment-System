<%@include file="mainheader.jsp" %>


<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2">User Registration</span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Register Here</h1>
                </div>
            </div>
        </div> 
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">

                <form action="uregister_code.jsp" method="post">
                    <div class="form-group">
                        <input type="text" name="name"class="form-control" placeholder="Enter Your Full Name" title="Please Enter Only Alphabets!!" pattern="[a-zA-Z ]*$" required>
                    </div>
                    <div class="form-group">
                        <input type="text" name="email" class="form-control" placeholder="Enter Your E-mail ID" title="Enter Valid Email Address" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}">
                    </div>
                    <div class="form-group">
                        <input type="password" name="pwd" class="form-control" placeholder="Create a new password" title="At least eight symbols containing at least one number, one lower case letter, and one upper case letter" type="text" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required>
                    </div>
                   <!-- <div class="form-group">
                        <input type="text" name="rpwd" class="form-control" placeholder="Re-enter your password" required>
                    </div>-->
                    <div class="form-group">
                        <input type="text" name="contact" class="form-control" placeholder="Enter Your contact no." required pattern="(\+?\d[- .]*){7,13}" title="International, National or Local phone number">
                    </div>
                    <div class="form-group">
                        <p>Select Your Date of birth</p>
                        <input type="date" class="form-control" name="dob" placeholder="Enter Your Birthdate" required min="1900-01-01">
                    </div>

                    <div class="form-group">
                        <p>Select Your Gender</p>
                        <input type="radio" name="gender"  value="male"> Male &nbsp; <input type="radio" name="gender" value="female"> Female &nbsp;

                    </div>
                    <div class="form-group">
                        <textarea name="address" id="" cols="30" rows="7" class="form-control" placeholder="Enter Your Address" required></textarea>
                    </div>
                    <div class="form-group">
                        Select your city:-
                        <select name="city" required>
                            <option name="city1" value="volvo">Surendranagar</option>
                            <option name="city2" value="saab">Rajkot</option>
                            <option name="city3" value="opel">Vadodra</option>
                            <option name="city4" value="audi">Ahmedabad</option>
                        </select>

                    </div>

                    <div class="form-group">
                        <br>
                        <input type="submit" name="create" value="Register Now" class="btn btn-primary py-3 px-5">
                    </div>
                </form>





            </div>

        </div>
    </div>
</section>

<%@include file="footer.jsp" %>