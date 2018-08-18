<%@page import="java.sql.*" %>
<jsp:useBean id="cn" scope="page" class="mypack.Conn" />


<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%@include file="HeaderTeacher.jsp"  %>
<div class="container">

<h1>This is Teacher Section</h1>

<%
String email = (String) session.getAttribute("username");%>
<table border="1" width="80%" align="center">
    <tr align="center">
        <th>Request By<th>Date and Time<th>Status<th>Verify<th>Reject<th>Chat
    </tr>
    <tr>
<% 
    ResultSet rs = cn.s.executeQuery("select student.email,student.name,designation,timestamp,status,t_id from student,teacher,request where student.email=request.stu_email and teacher.t_id=request.teacher_id and teacher.email='"+email+"'");
    
       while(rs.next())
           {
               String name = rs.getString("name");
               String timestamp = rs.getString("timestamp");
               String status = rs.getString("status");
               String eemail = rs.getString("email");
               String tid = rs.getString("t_id");
               out.println("<tr align=center>");
               out.println("<td>"+name+"</td>");
                    out.println("<td>"+timestamp+"</td>");
                                    out.println("<td>"+status+"</td>");
                                    
                out.println("<td><a href=change_st.jsp?tid="+tid+"&s=accepted >Accept</a> ");
                       out.println("<td><a href=change_st.jsp?tid="+tid+"&s=rejected >Reject</a> ");
         
      String chat="<a href=s_chat.jsp?id="+tid+"&email="+eemail+"&name="+name+">chat</a>";
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
    <%@include file="FooterTeacher.jsp" %>