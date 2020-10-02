
<%
    if (session.getAttribute("user_id") == null) {
        response.sendRedirect("ulogin.jsp");
    } else {

%>

<%@include file="indexheader.jsp"%>

<%@page import="java.sql.*"%>
<%    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbappoint", "root", "root");
%>




<section class="home-slider owl-carousel">
    <div class="slider-item" style="background-image: url('backgrounds/slider2.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row slider-text align-items-center" data-scrollax-parent="true">
                <div class="col-md-6 col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                    <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Modern Way for appointing doctors</h1>
                    <p class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">In a hurry, don't worry appoint a doctor in no time</p>
                    <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="usearch.jsp" class="btn btn-primary px-4 py-3">Make an Appointment</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="slider-item" style="background-image: url('backgrounds/slider1.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row slider-text align-items-center" data-scrollax-parent="true">
                <div class="col-md-6 col-sm-12 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
                    <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">The best doctor gives the least medicines</h1>
                    <p class="mb-4">Appoint best doctor from here</p>
                    <p><a href="usearch.jsp" class="btn btn-primary px-4 py-3">Make an Appointment</a></p>
                </div>
            </div>
        </div>
    </div>
</section>

<form action="psearch.jsp" method="get">
    <section class="ftco-intro">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-md-3 color-1 p-4">
                    <h3 class="mb-4">Note:-</h3>
                    <span class="phone-number">Doctor cancel the appointments if he or she has some emergency.</span>
                </div>
                <div class="col-md-3 color-2 p-4">
                    <h3 class="mb-4">Appointment Hours</h3>
                    <p class="openinghours d-flex">
                        <span>Monday - Saturday</span>
                        <span>9:00 - 20:00</span>
                    </p>
                </div>
                <div class="col-md-6 color-3 p-4">
                    <h3 class="mb-2">Search Here</h3>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <div class="select-wrap">
                                    <select name="dept" id="" class="form-control" required>
                                        <option value="">Department</option>
                                        <option value="Gynecologist">Gynecologist</option>
                                        <option value="E.N.T">E.N.T</option>
                                        <option value="Cardiologist">Cardiologist</option>
                                        <option value="Orthopedic">Orthopedic</option>
                                        <option value="General Physician">General Physician</option>
                                        <option value="Neurologist">Neurologist</option>
                                        <option value="Psychiatrist">Psychiatrist</option>
                                    </select>


                                    <div class="form-group">
                                        <input type="submit" value="Search" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>

    </section>
</form>
<section class="ftco-section ftco-services">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <h2 class="mb-2">Our Doctors Keeps you Healthy</h2>
                <p>The presence of the doctor is the beginning of the cure</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services d-block text-center">
                    <div class="icon d-flex justify-content-center align-items-center">
                        <span><img src="backgrounds/ent.jpg" height="100px"; width="100px;"></span>
                    </div>
                    <div class="media-body p-2 mt-3">
                        <h3 class="heading">E.N.T Specialist</h3>
                        <p>A doctor who has special training in diagnosing and treating diseases of the ear, nose, and throat. Also called otolaryngologist</p>
                    </div>
                </div>      
            </div>
            <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services d-block text-center">
                    <div class="icon d-flex justify-content-center align-items-center">
                        <span><img src="backgrounds/ortho.jpg" height="100px"; width="100px;"></span>
                    </div>
                    <div class="media-body p-2 mt-3">
                        <h3 class="heading">Orthopedist</h3>
                        <p>Orthopedists use medical, physical and rehabilitative methods as well as surgery and are involved in all aspects of heath care pertaining to the musculoskeletal system</p>
                    </div>
                </div>    
            </div>
            <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services d-block text-center">
                    <div class="icon d-flex justify-content-center align-items-center">
                        <span><img src="backgrounds/gp.jpg" height="100px"; width="100px;"></span>
                    </div>
                    <div class="media-body p-2 mt-3">
                        <h3 class="heading">General Physician</h3>
                        <p> General Physician is a medical doctor who treats acute and chronic illnesses and provides preventive care and health education to patients.</p>
                    </div>
                </div>      
            </div>
            <div class="col-md-3 d-flex align-self-stretch ftco-animate">
                <div class="media block-6 services d-block text-center">
                    <div class="icon d-flex justify-content-center align-items-center">
                        <span><img src="backgrounds/psy.jpg" height="100px"; width="100px" style="border-radius: 50%"></span>
                    </div>
                    <div class="media-body p-2 mt-3">
                        <h3 class="heading">Psychiatrist</h3>
                        <p>A psychiatrist is a physician who specializes in psychiatry, the branch of medicine devoted to the diagnosis, prevention, study, and treatment of mental disorders</p>
                    </div>
                </div>      
            </div>
        </div>
    </div>
    <div class="container-wrap mt-5">
        <div class="row d-flex no-gutters">
            <div class="col-md-6 img" style="background-image: url(images/about-2.jpg);">
            </div>
            <div class="col-md-6 d-flex">
                <div class="about-wrap">
                    <div class="heading-section heading-section-white mb-5 ftco-animate">
                        <h2 class="mb-2">Why to choose Hey Doctor?</h2>
                    </div>
                    <div class="list-services d-flex ftco-animate">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="icon-check2"></span>
                        </div>
                        <div class="text">
                            <br>
                            <h3>Well Experienced Doctor</h3>
                        </div>
                    </div>
                    <div class="list-services d-flex ftco-animate">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="icon-check2"></span>
                        </div>
                        <div class="text">
                            <br>
                            <h3>Highly Time-Efficient</h3>
                        </div>
                    </div>
                    <div class="list-services d-flex ftco-animate">
                        <div class="icon d-flex justify-content-center align-items-center">
                            <span class="icon-check2"></span>
                        </div>
                        <div class="text">
                            <br>
                            <h3>Information on-the-go</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="ftco-section">
    <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
            <div class="col-md-7 text-center heading-section ftco-animate">
                <h2 class="mb-3">Meet Our Experienced Doctors</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-6 d-flex mb-sm-4 ftco-animate">
                <div class="staff">
                    <div class="img mb-4" style="background-image: url(images/ManishPandya.jpg);"></div>
                    <div class="info text-center">
                        <h3>Manish Pandya</h3>
                        <span class="position">General Physician</span>
                        <div class="text">
                            <p>"The good physician treats the disease but the great physician treats the the patient who has the disease"</p>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 d-flex mb-sm-4 ftco-animate">
                <div class="staff">
                    <div class="img mb-4" style="background-image: url(images/AravPatel.jpg);"></div>
                    <div class="info text-center">
                        <h3>Arav Patel</h3>
                        <span class="position">Psychiatrist</span>
                        <div class="text">
                            <p><br>"Show me a sane man I will cure him"</p>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 d-flex mb-sm-4 ftco-animate">
                <div class="staff">
                    <div class="img mb-4" style="background-image: url(images/leenad.jpg);"></div>
                    <div class="info text-center">
                        <h3>Leena Dutta</h3>
                        <span class="position">E.N.T Specialist</span>
                        <div class="text">
                            <p>"Having any problem in ear, nose, or throat appoint me i will heal it"</p>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 d-flex mb-sm-4 ftco-animate">
                <div class="staff">
                    <div class="img mb-4" style="background-image: url(images/MonaliThakkar.jpg);"></div>
                    <div class="info text-center">
                        <h3>Asha Parmar</h3>
                        <span class="position">Orthopedist</span>
                        <div class="text">
                            <p>"I loved superhero stuff.So comfortable, I got to wear like orthopedic running shoes every day"</p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<%
    int tdoc = 0;
    String qdoc = "select * from doctor_register where status='active'";
    Statement sti = conn.createStatement();
    ResultSet rsi = sti.executeQuery(qdoc);
    while (rsi.next()) {
        tdoc++;
    }

    int tyrs = 0;
    String qyrs = "select * from doctor_profile where exp >= 15";
    Statement styrs = conn.createStatement();
    ResultSet rsyrs = styrs.executeQuery(qyrs);
    while (rsyrs.next()) {
        tyrs++;
    }

    int tuser = 0;
    String quser = "select * from register_user where status='active'";
    Statement stu = conn.createStatement();
    ResultSet rsu = stu.executeQuery(quser);
    while (rsu.next()) {
        tuser++;
    }

%>
<section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_1.jpg);" data-stellar-background-ratio="0.5">
    <div class="container">
        <div class="row d-flex align-items-center">
            <div class="col-md-3 aside-stretch py-5">
                <div class=" heading-section heading-section-white ftco-animate pr-md-4">
                    <h2 class="mb-3">Achievements</h2>
                    <p>A doctor is not a mechanic. A car doesn't react with a mechanic, but a human being does</p>
                </div>
            </div>
            <div class="col-md-9 py-5 pl-md-5">
                <div class="row">
                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18">
                            <div class="text">
                                <strong class="number" data-number="<%=tyrs%>">0</strong>
                                <span>15+ Years of Experienced Doctors</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18">
                            <div class="text">
                                <strong class="number" data-number="<%=tdoc%>">0</strong>
                                <span>Total Doctors</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18">
                            <div class="text">
                                <strong class="number" data-number="7">0</strong>
                                <span>Kinds of Specialists</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
                        <div class="block-18">
                            <div class="text">
                                <strong class="number" data-number="<%=tuser%>">0</strong>
                                <span>Happy Smiling Customer</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--
<section class="ftco-quote">
    <div class="container">
        <div class="row">
            <div class="col-md-6 pr-md-5 aside-stretch py-5 choose">
                <div class="heading-section heading-section-white mb-5 ftco-animate">
                    <h2 class="mb-2">Hey Doctor</h2>
                </div>
                <div class="ftco-animate">
                    <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. Because there were thousands of bad Commas, wild Question Marks and devious Semikoli</p>
                    <ul class="un-styled my-5">
                        <li><span class="icon-check"></span>Consectetur adipisicing elit</li>
                        <li><span class="icon-check"></span>Adipisci repellat accusamus</li>
                        <li><span class="icon-check"></span>Tempore reprehenderit vitae</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-6 py-5 pl-md-5">
                <div class="heading-section mb-5 ftco-animate">
                    <h2 class="mb-2">Health Feeds</h2>
                </div>
            </div>
        </div>
    </div>
</section>

-->
<%@include file="ufooter.jsp" %>
<%}%>