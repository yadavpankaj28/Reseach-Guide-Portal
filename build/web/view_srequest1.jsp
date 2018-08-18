<jsp:useBean id="cn" scope="page" class="mypack.Conn" />

<hr>
<div class="container">
    <%  String u = (String) session.getAttribute("username");
    %>
    <center><h1>
            Accepted Requests</h1></center>
    <hr>
<table border="1" width="80%" align="left">
    <tr align= "center">
        <th>Name</th>
        <th>Designation</th>
        <th>Date and Time</th>
        <th>Status</th>
    </tr>
    <tr>
<% 
    java.sql.ResultSet rs = cn.s.executeQuery("select t_id,teacher.name,teacher.email,designation,timestamp,status from student,teacher,request where student.email=request.stu_email and teacher.t_id=request.teacher_id and status='accepted' and student.email='"+u+"'");
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
               
           }   
%>
    </tr>
</table>
     <br><br><br>
    <br><br><br>
    <br><br><br>
</div>
    <hr>