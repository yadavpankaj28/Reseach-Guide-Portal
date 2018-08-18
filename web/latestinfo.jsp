<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@include file="HeaderStudent.jsp"  %>
<%@page import="java.sql.*" %>

<div class="container">
<h1>Latest Research Topics</h1>
</div>
<table border="1" width="80%" align="center">
    <tr align='center'>
        <th> Research Info </th>
    </tr>
    
<% 
mypack.Conn cn = new mypack.Conn();
    ResultSet rs = cn.s.executeQuery("select * from research");
       while(rs.next())
           {
              
               String topic = rs.getString("topic");
               out.println("<tr align=center>");
              
                   out.println("<td>"+topic+"</td>");
             
     
           }   
%>
    </tr>
</table>
     <br><br><br>
    <br><br><br>
    <br><br><br>
<%@include file="FooterStudent.jsp" %>