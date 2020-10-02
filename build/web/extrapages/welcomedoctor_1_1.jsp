<%@include file="dheader.jsp" %>
<%@include file="footer.jsp" %>
<%@page import="java.sql.*"%>


<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3360/dbdesigner", "root", "root");
%>


<%
    String designer_id = "1";
    if (session.getAttribute("designer_id") == null) {
        response.sendRedirect("dlogin.jsp");
    } else {
        designer_id = session.getAttribute("designer_id").toString();
    }

%>

<div id="colorlib-main">

    <div class="colorlib-contact">
        <div class="colorlib-narrow-content">
            <div class="row">
                <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">

                    <h2 class="colorlib-heading">inquiry view</h2>
                </div>
            </div>
            <div class="row">

                <div class="col-md-12 col-md-push-1">
                    <div class="row">
                        <div class="col-md-12  col-md-pull-1 animate-box" data-animate-effect="fadeInLeft">

                            <input type="button" name="btn1" value="Print" onclick="window.print();"/>

                            <div class="form-group">
                                <form method="get">
                                    <%                                        String sname = "";
                                        if (request.getParameter("search") != null) {
                                            sname = request.getParameter("search");
                                        }
                                    %>
                                    <input  type="text" value="<%=sname%>" class="form-control" name="search"  placeholder="Search.." id="myInput" onkeyup="myFunction()"> 
                                </form>
                            </div>

                            <table class="table table-bordered table-striped text-center">


                                <tr>
                                    <th>Date</th>
                                    <th>User Name</th>
                                    <th>Email</th>
                                    <th>Mobile Num.</th>
                                    <th>Message</th>
                                    <th>Option </th>
                                </tr>
                                <%
                                    if (request.getParameter("inquiry_id") != null) {
                                        String qdel = "delete from inquiry where inquiry_id=" + request.getParameter("inquiry_id");
                                        Statement stdel = conn.createStatement();
                                        stdel.executeUpdate(qdel);
                                    }

                                    String q = "select i.*,u.fname as userfname,u.lname as userlname,u.email as useremail,u.mnum as usermnum from inquiry i,user u where i.user_id=u.user_id and designer_id=" + designer_id;
                                   
                                    if(request.getParameter("search")!=null){
                                    String search=request.getParameter("search");
                                 q = "select i.*,u.fname as userfname,u.lname as userlname,u.email as useremail,u.mnum as usermnum from inquiry i,user u where i.user_id=u.user_id and designer_id=" + designer_id  + " and  (u.fname like '%" + search + "%' or u.lname like '%" + search + "%')";   
                                    }

                                    
                                    Statement st = conn.createStatement();
                                    ResultSet rs = st.executeQuery(q);
                                    while (rs.next()) {
                                        String inquiry_id = rs.getString("inquiry_id");
                                        String user_id = rs.getString("user_id");
                                        String date = rs.getString("date");
                                        String review = rs.getString("review");
                                        String userfname = rs.getString("userfname");
                                        String userlname = rs.getString("userlname");
                                        String useremail = rs.getString("useremail");
                                        String usermnum = rs.getString("usermnum");

                                
                                
                                %>               

                                <tr>
                                    <td><%=date%></td>
                                    <td><%=userlname%> <%=userfname%></td>
                                    <td><%=useremail%></td>
                                    <td><%=usermnum%></td>
                                    <td><%=review%></td>
                                    <td>
                                        <a href="dinquiry_view.jsp?inquiry_id=<%=inquiry_id%>" class="bt btn-danger btn-outline" onclick="return confirm('do you want to delete ?')">Delete</a>
                                    </td>
                                </tr>
                                <%}%>
                            </table>   

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>


</div>

<%@include file="footer2.jsp" %>