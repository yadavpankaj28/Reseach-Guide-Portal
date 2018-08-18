<%@page import="java.sql.*" %>
<jsp:useBean id="cn1" scope="page" class="mypack.Conn" />
<%
    String sq = (String) session.getAttribute("username");
    if(sq==null)
        response.sendRedirect("login.jsp");
    %>
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%@include file="HeaderStudent.jsp"  %>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-3 col-lg-3">

<%
String email10 = (String) session.getAttribute("username");

  ResultSet rs10 = cn1.s.executeQuery("select * from student where email='"+email10+"'");
     if(rs10.next())
           {
           String name = rs10.getString("name");
           out.println("<h1>"+"Welcome <b>"+name+"</h1>");
           out.println("</b>");
              }
        %>

<a href="desk.jsp">Teacher's Profile</a>
<br><br>
<a href=modstudent.jsp>Edit Profile</a>

        <br><br>
<a href="latestinfo.jsp">Latest Research Topics</a>
<br><br>

<a href="current.jsp">Current Research Going</a>
<br><br>

<a href="changepassword.jsp">Change Password</a>
        </div>
        <div class="col-md-9 col-lg-9">
             <%@include file="view_srequest1.jsp" %>
 
            
        </div>
    </div>
    
</div>
 

 <%@include file="FooterStudent.jsp" %>