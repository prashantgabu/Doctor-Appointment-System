<%@include file="mainheader.jsp" %>
<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true" dat>
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2">Forgot Password</span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Forget Password</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">

                <form action="uforget_code.jsp" method="post">

                    <div class="form-group">
                        <input type="text" name="email" class="form-control" placeholder="Enter Your Email-id" title="Enter Valid Email Address" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}">
                    </div>

                    <div class="form-group">
                        <input type="number" name="contact" class="form-control" placeholder="Enter Your Mobile Number" required>
                    </div>

                    <div class="form-group">

                        <input type="submit" name="login" value="Submit" class="btn btn-primary py-3 px-5">
                    </div>


                    <div class="form-group">

                        <%
                            if (request.getParameter("valid") != null) {
                                out.print("<span style='color:red'> Invalid email or password </span>");
                            } else if (request.getParameter("msg") != null) {
                                out.print("<span style='color:red'> Status is not active </span>");
                            }

                        %>
                    </div>

                </form>



            </div>

        </div>
    </div>
</section>

<%@include file="footer.jsp" %>