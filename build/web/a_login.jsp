<%@include file="nullheader.jsp" %>

<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('backgrounds/ad.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2">Administrator Login</span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Login</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">

                <a href="a_login.jsp" class="btn btn-outline-dark">Admin Login</a>
                <a href="ulogin.jsp" class="btn btn-outline-info">User Login</a>
                <a href="login.jsp" class="btn btn-outline-secondary">Are you a Doctor? Login Here</a>
                <hr>
                <form action="a_login_code.jsp" method="post">
                    <div class="form-group">
                        <input type="text" name="email" title="Please Enter Valid Email_id" required class="form-control" placeholder="Enter Your Email-id" required>
                    </div>
                    <div class="form-group ">
                        <input type="password" name="pwd" class="form-control" placeholder="Enter Your Password"  required>
                    </div>

                    <div class="form-group">

                        <input type="submit" name="login" value="Login" class="btn btn-primary py-3 px-5">
                    </div>


                    <div class="form-group">

                        <%
                            if (request.getParameter("valid") != null) {
                                out.print("<span style='color:red'> Invalid email or password </span>");
                            }

                        %>
                    </div>

                </form>



            </div>

        </div>
    </div>
</section>

<%@include file="footer.jsp" %>