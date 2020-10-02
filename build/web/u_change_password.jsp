
<%
      String user_id="1";
    if(session.getAttribute("user_id")==null)
    {
        response.sendRedirect("ulogin.jsp");
    }
    else
    {
        user_id= session.getAttribute("user_id").toString();
        

  
    %>
<%@include file="indexheader.jsp" %>
    <section class="home-slider owl-carousel">
      <div class="slider-item bread-item" style="background-image: url('images/blur.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
          <div class="row slider-text align-items-end">
            <div class="col-md-7 col-sm-12 ftco-animate mb-5">
              <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"><a href="index.html">Home</a><data/span></p>
              <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Change Your Password</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section contact-section ftco-degree-bg">
      <div class="container">
        <div class="row block-9">
          <div class="col-md-6 pr-md-5">

              <form action="u_change_password_code.jsp" method="post">
              <div class="form-group">
                  <input type="password" name="cpwd" class="form-control" placeholder="Enter Current Password" required>
              </div>
                 <div class="form-group">
                     <input type="password" name="npwd" class="form-control" placeholder="Enter New Password" title="At least eight symbols containing at least one number, one lower case, and one upper  case letter" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required>
              </div>
                <div class="form-group ">
                    <input type="password" name="rpwd" class="form-control" placeholder="Re-enter new Password" required>
              </div>
 
              <div class="form-group">
                  
                <input type="submit" name="savepassword" value="Save Password" class="btn btn-primary py-3 px-5">
              </div>
            </form>
              
              
          
          </div>

        </div>
      </div>
    </section>
<%}%>
    <%@include file="footer.jsp" %>