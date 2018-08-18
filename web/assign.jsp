<%@page import="java.sql.*" %>
<jsp:useBean id="cn" scope="page" class="mypack.Conn" />

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<div class="container">
   <%@include file="HeaderAdmin.jsp"  %> 
<h1>List of All Registered Teacher</h1>

    <hr>
<table border="1" width="80%" align="center">
    <tr align="center">
        <th>T Id <th>Name<th>Designation<th>Email<th>Assign Credential
    </tr>
    <tr>
<% 
       ResultSet rs = cn.s.executeQuery("select * from teacher ORDER BY t_id ASC");
       while(rs.next())
           {
               String name = rs.getString("name");
               String designation = rs.getString("designation");
               String t_id = rs.getString("t_id");
               String email = rs.getString("email");
               out.println("<tr align=center>");
               out.println("<td>"+t_id+"</td>");
               out.println("<td>"+name+"</td>");
               out.println("<td>"+designation+"</td>");
                  out.println("<td>"+email+"</td>");
               out.println("<td> <a href=assign1.jsp?t_id="+t_id+">Assign</a>");
           
               out.println("</tr>");
           }   
%>
    </tr>
</table>
</div>
    <%@include file="FooterAdmin.jsp" %>