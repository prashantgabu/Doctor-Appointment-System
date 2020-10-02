<%@include file="indexheader.jsp" %>
<section class="home-slider owl-carousel">
    <div class="slider-item bread-item" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container" data-scrollax-parent="true">
            <div class="row slider-text align-items-end">
                <div class="col-md-7 col-sm-12 ftco-animate mb-5">
                    <p class="breadcrumbs" data-scrollax=" properties: { translateY: '70%', opacity: 1.6}"><span class="mr-2"></span></p>
                    <h1 class="mb-3" data-scrollax=" properties: { translateY: '70%', opacity: .9}">About Us</h1>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="ftco-section">
    <div class="container">
        <div class="row d-md-flex">
            <div class="col-md-6 ftco-animate img about-image order-md-last" style="background-image: url(images/about.jpg);">
            </div>
            <div class="col-md-6 ftco-animate pr-md-5 order-md-first">
                <div class="row">
                    <div class="col-md-12 nav-link-wrap mb-5">
                        <div class="nav ftco-animate nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link active" id="v-pills-whatwedo-tab" data-toggle="pill" href="#v-pills-whatwedo" role="tab" aria-controls="v-pills-whatwedo" aria-selected="true">What we do</a>

                            <a class="nav-link" id="v-pills-mission-tab" data-toggle="pill" href="#v-pills-mission" role="tab" aria-controls="v-pills-mission" aria-selected="false">Our Goals</a>

                            <a class="nav-link" id="v-pills-goal-tab" data-toggle="pill" href="#v-pills-goal" role="tab" aria-controls="v-pills-goal" aria-selected="false">Our Objective</a>
                        </div>
                    </div>
                    <div class="col-md-12 d-flex align-items-center">

                        <div class="tab-content ftco-animate" id="v-pills-tabContent">

                            <div class="tab-pane fade show active" id="v-pills-whatwedo" role="tabpanel" aria-labelledby="v-pills-whatwedo-tab">
                                <div>
                                    <h2 class="mb-4">We offer best way to appoint a doctor</h2>
                                    <p>Providing an orderly way to appoint a doctor</p>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="v-pills-mission" role="tabpanel" aria-labelledby="v-pills-mission-tab">
                                <div>
                                    <h2 class="mb-4">To Accomodate All Patients quickly</h2>
                                    <p>The main goal of my system is to provide patients a time-efficient manner to easily register a case
                                    </p><p>To waste least time of users at hospitals waiting in long queues.
                                    </p>
                                </div>
                            </div>

                            <div class="tab-pane fade" id="v-pills-goal" role="tabpanel" aria-labelledby="v-pills-goal-tab">
                                <div>
                                    <h2 class="mb-4">Help Our Customers Needs</h2>
                                    <p>The objective of my system is to handle the main activity of registration of cases for patients, receptionist and doctors.
                                    </p><p>The application provides attractive and user-friendly interface to the users and doctors.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<%@include file="ufooter.jsp" %>