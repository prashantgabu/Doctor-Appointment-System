<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Your Life</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,500,600,700" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.html">Hey<span>Doctor</span></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item"><a href="ahome.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="a_view_dregister.jsp" class="nav-link ">Verify Doctors</a></li>
                        <li class="nav-item"><a href="a_view_dprofile.jsp" class="nav-link">Doctors</a></li>
                        <li class="nav-item"><a href="a_view_uregister.jsp" class="nav-link">Users</a></li>
                        <li class="nav-item"><a href="a_view_feedback.jsp" class="nav-link">Feedback</a></li>
                        <li class="nav-item"><a href="logout.jsp" class="nav-link">Logout</a></li>

                    </ul>
                </div>
            </div>
        </nav>

<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

%>