
<%@page import="java.sql.*" %>
<jsp:useBean id="cn" scope="page" class="mypack.Conn" />
<%
    String sq = (String) session.getAttribute("username");
    if(sq==null)
        response.sendRedirect("login.jsp");
    %>

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%@include file="HeaderTeacher.jsp"  %>
<div class="container">

<%
String email = (String) session.getAttribute("username");

  ResultSet rs = cn.s.executeQuery("select * from teacher where email='"+email+"'");
     if(rs.next())
           {
           String t_id = rs.getString("t_id");
           String name = rs.getString("name");
           out.println("<h1>"+"Welcome <b>"+name+"</h1>");
           out.println("</b><hr>");
             
        out.println("<td> <a href=modteacher.jsp?t_id="+t_id+">Edit Profile</a>");
        out.println("\n");

           }
        %>
        <br><br>
        <a href="view_trequests.jsp">View Pending Requests</a>
        <br><br>
        <a href="changepassword.jsp">Change Password</a>
         <br><br><br>
    <br><br><br>
    <br><br><br>
</div>
<%@include file="FooterTeacher.jsp" %>
