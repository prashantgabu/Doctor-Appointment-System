<%

    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);

    if (session != null) {
        session.removeAttribute("user_id");
        session.removeAttribute("admin_id");
        session.removeAttribute("doctor_id");
        session.removeAttribute("fullname");
        session.removeAttribute("fname");
        session.removeAttribute("lname");
        session.removeAttribute("email");
        session.removeAttribute("femail");
        session.invalidate();

    }
    response.sendRedirect("main.jsp");


%>