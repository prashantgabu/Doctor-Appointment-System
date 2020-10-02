<%@include file="mainheader.jsp" %>


    
<link rel="stylesheet" href="css/mycss.css">
<body style="background-image:  url('backgrounds/bg7.jpg'); background-size: 100%">
    <section class="ftco-section contact-section ftco-degree-bg">
        <div class="container">
            <div class="" style="width: 100%;">
                <a href="a_login.jsp" class="btn btn-outline-info col-md-3 bg-light">Admin Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="ulogin.jsp" class="btn btn-outline-info col-md-3 bg-light">User Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="login.jsp" class="btn btn-outline-info col-md-4 bg-light">Are you a Doctor? Login Here</a>&nbsp;&nbsp;
                <hr>
            </div>
            <div class="row block-9">
                <div class="col-md-6 pr-md-5">


                    <form action="login_code.jsp" method="post">

                        <div class="form-group">
                            <input type="text" name="email" class="form-control" placeholder="Enter Your Email-id" title="Enter Valid Email Address" required pattern="[^@]+@[^@]+\.[a-zA-Z]{2,6}">
                        </div>
                        <div class="form-group">
                            <input type="password" name="pwd" class="form-control" placeholder="Enter Your Password" required>
                        </div>

                        <div class="form-group">

                            <input type="submit" name="login" value="Login" class="btn btn-primary py-3 px-5">
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

                        <div class="form-group">
                            <span ><a class="text-white"href="forget.jsp">Don't remember your password?</a></span>
                        </div>
                        <div class="form-group">
                            <span ><a class="text-white" href="dregister_1.jsp"><b>Don't have an account? REGISTER HERE</b></a></span>
                        </div>

                    </form>



                </div>

            </div>
        </div>
    </section>
</body>