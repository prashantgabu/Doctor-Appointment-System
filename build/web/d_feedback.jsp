
<%
    String doctor_id = "1";
    if (session.getAttribute("doctor_id") == null) {
        response.sendRedirect("login.jsp");
    } else {
        doctor_id = session.getAttribute("doctor_id").toString();


%>
<%@include file="dheader.jsp" %>
<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('backgrounds/app.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}">
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Give Your Valuable Feedback Here</h1>
                    <h5 class="text-white">Any Queries, Suggestions, Quotes, Health Tips send it here</h5>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">

                <form action="d_feedback_code.jsp" method="post">


                    <div class="form-group">
                        <input type="text" class="form-control" name="fullname" disabled value="<%=session.getAttribute("fullname").toString()%>"  placeholder="Enter Your Full Name">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="email" disabled value="<%=session.getAttribute("femail").toString()%>" placeholder="Enter Your Email-ID">
                    </div>
                    <div class="form-group date">
                        <input type="hidden" class="form-control datepicker-switch" name="date" placeholder="Enter Today's Date.">
                    </div>
                    <div class="form-group">
                        <textarea name="msg" id="" cols="30" rows="7" class="form-control" placeholder="Enter Your Feedback Here"></textarea>
                    </div>

                    <div class="form-group">
                        <br><input type="submit" name="add" value="Submit" class="btn btn-primary py-3 px-5">
                    </div>
                </form>


            </div>

        </div>
    </div>
</section>
<%}%>
<%@include file="footer.jsp" %>