<!-- USER SIDE -->



<%@include file="nullheader.jsp" %>
<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('backgrounds/slider1.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true" dat>
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"><a href="index.html">Home</a></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Login Here</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">

                <form action="emailsend_code.jsp" method="post">
                    
                    <div class="form-group">
                        <input type="text" name="code" class="form-control" placeholder="Enter Your Code">
                    </div>
                    
                    <div class="form-group">

                        <input type="submit" name="login" value="Submit" class="btn btn-primary py-3 px-5">
                    </div>



                </form>



            </div>

        </div>
    </div>
</section>

<%@include file="footer.jsp" %>