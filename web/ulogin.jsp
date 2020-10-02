<%@include file="mainheader.jsp" %>
<link rel="stylesheet" href="css/mycss.css">

<body style="background-image:  url('backgrounds/bg8.jpg'); background-size: 100%">
    <section class="ftco-section contact-section ftco-degree-bg" style="overflow: hidden;">
        <div class="container" >
              <div class="" style="width: 100%;">
                    <a href="a_login.jsp" class="btn btn-outline-info col-md-3 bg-light">Admin Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="ulogin.jsp" class="btn btn-outline-info col-md-3 bg-light">User Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="login.jsp" class="btn btn-outline-info col-md-4 bg-light">Are you a Doctor? Login Here</a>&nbsp;&nbsp;
                    <hr>
                </div>
            <div class="row block-9" >
              
                <div class="col-md-6 pr-md-5" style="border: 2px solid white; border-radius: 5px; background-color: transparent;margin-left: 25px;margin-top: 80px;padding-right: 100%; padding-top: 50px">

                    <form action="ulogin_code.jsp" method="post">
                        <div class="form-group asd" >
                            <input type="text" name="email" class="form-control"title="Enter Valid Email Address" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}" placeholder="Enter Your Email-id" style="width: 100%;">
                        </div>
                        <div class="form-group asd">
                            <input type="password" name="pwd" class="form-control" placeholder="Enter Your Password" required style="width: 100%;">
                        </div>

                        <div class="form-group">

                            <input type="submit" name="login" value="Login" class="btn btn-primary py-3 px-5" style="margin-left: 200px;">
                        </div>


                        <div class="form-group">

                            <%
                                if (request.getParameter("valid") != null) {
                                    out.print("<span style='color:red'> Invalid email or password </span>");
                                }

                            %>
                        </div>

                        <div class="form-group" >
                            <span class=""><a href="uforget.jsp" style="color: white"><b>Don't remember your password?</b></a></span>
                        </div>
                        <div class="form-group">
                            <a href="uregister.jsp" style="color: white"><b>Don't have an account? REGISTER HERE</b></a>
                        </div>

                    </form>



                </div>

            </div>
        </div>
    </section>
</body>