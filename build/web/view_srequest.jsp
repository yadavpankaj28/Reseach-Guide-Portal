<%@page import="java.sql.*" %>
<jsp:useBean id="cn" scope="page" class="mypack.Conn" />

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@include file="HeaderStudent.jsp"  %>
<div class="container">
    <%  String u = (String) session.getAttribute("username");
    %>
<h1>Request Being Sent to following teachers by <%=u%></h1>
    <hr>
<table border="1" width="80%" align="center">
    <tr align="center">
        <th>Name<th>Designation<th>Date and Time<th>Status
    </tr>
    <tr>
<% 
    ResultSet rs = cn.s.executeQuery("select t_id,teacher.name,teacher.email,designation,timestamp,status from student,teacher,request where student.email=request.stu_email and teacher.t_id=request.teacher_id");
       while(rs.next())
           {
               String name = rs.getString("name");
               String designation = rs.getString("designation");
               String timestamp = rs.getString("timestamp");
               String status = rs.getString("status");
               String email = rs.getString("email");
               String t_id = rs.getString("t_id");
               out.println("<tr align=center>");
               out.println("<td>"+name+"</td>");
               out.println("<td>"+designation+"</td>");
                   out.println("<td>"+timestamp+"</td>");
                 String chat="<a href=s_chat.jsp?id="+t_id+"&email="+email+"&name="+name+">chat</a>";
                 if(status.equals("accepted"))
                                    out.println("<td>["+status+"]"+chat+"</td>");
                 else
                                               out.println("<td>["+status+"]</td>");
     
           }   
%>
    </tr>
</table>
     <br><br><br>
    <br><br><br>
    <br><br><br>
</div>
    <%@include file="FooterStudent.jsp" %>