
<%
    String user_id = "1";
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("ulogin.jsp");
    } else {
        user_id = session.getAttribute("user_id").toString();
%>
<%@include file="indexheader.jsp" %>
<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2">Home</span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Give Your Valuable Feedback Here</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section contact-section ftco-degree-bg">
    <div class="container">
        <div class="row block-9">
            <div class="col-md-6 pr-md-5">

                <form action="ufeedback_code.jsp" method="post">


                    <div class="form-group">
                        <input type="text" class="form-control" name="fullname" placeholder="Enter Your Full Name" title="Please Enter Only Alphabets!!" pattern="[a-zA-Z ]*$" required disabled value="<%=session.getAttribute("femail").toString()%>"  >
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="email" placeholder="Enter Your Email-ID" title="Enter Valid Email Address" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" disabled value="<%=session.getAttribute("femail").toString()%>" >
                    </div>
                    <div class="form-group date">
                        <input type="hidden" class="form-control datepicker-switch" name="date" placeholder="Enter Today's Date." required>
                    </div>
                    <div class="form-group">
                        <textarea name="msg" id="" cols="30" rows="7" class="form-control" placeholder="Enter Your Feedback Here" required></textarea>
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