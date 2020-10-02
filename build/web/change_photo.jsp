
<%
      String doctor_id="1";
    if(session.getAttribute("doctor_id")==null)
    {
        response.sendRedirect("login.jsp");
    }
    else
    {
        doctor_id= session.getAttribute("doctor_id").toString();
        
   
  
    %>
<%@include file="dheader.jsp" %>
    <section class="home-slider owl-carousel">
      <div class="slider-item bread-item" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5"> 
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
          <div class="row slider-text align-items-end">
            <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2">Edit Profile</span></p>
              <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">Change Your Photo</h1>
            </div>
          </div>
        </div>
      </div>
    </section>
		
		<section class="ftco-section contact-section ftco-degree-bg">
      <div class="container">
        <div class="row block-9">
          <div class="col-md-6 pr-md-5">

              <form action="change_photo_code.jsp"  enctype="multipart/form-data" method="post">
              <div class="form-group">
                  <input type="file" name="photo" class="form-control" required>
              </div>
                  
              <div class="form-group">
    <input type="submit" name="Submit" value="Upload Photo" class="btn btn-primary py-3 px-5">
              </div>
            </form>
              
              
          
          </div>

        </div>
      </div>
    </section>
<%}%>
    <%@include file="footer.jsp" %>