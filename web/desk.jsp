<%@page import="java.sql.*" %>
<jsp:useBean id="cn" scope="page" class="mypack.Conn" />

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@include file="HeaderStudent.jsp"  %>
<div class="container">
    
<h1>Teacher's Profile</h1>
<h3 align="left"> <a href="view_srequest.jsp">View Pending Requests</a>
    <hr>
<table border="1" width="80%" align="center">
    <tr align="center">
        <th>Name<th>Designation<th>Open Profile<th>Send Request
    </tr>
    <tr>
<% 
       ResultSet rs = cn.s.executeQuery("select * from teacher ORDER BY t_id ASC");
       while(rs.next())
           {
               String name = rs.getString("name");
               String designation = rs.getString("designation");
               String t_id = rs.getString("t_id");
               String profile_link = rs.getString("profile_link");
               out.println("<tr align=center>");
               out.println("<td>"+name+"</td>");
               out.println("<td>"+designation+"</td>");
               out.println("<td> <a href="+ profile_link +">Open Profile</a>");
               out.println("<td> <a href=send_request.jsp?t_id="+t_id+">Send Chat Request</a>");
               out.println("</tr>");
           }   
%>
    </tr>
</table>
</div>
    
    <%@include file="FooterStudent.jsp" %>