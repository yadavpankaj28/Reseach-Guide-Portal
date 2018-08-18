<%@page import="java.sql.*" %>

<jsp:useBean id="cn" scope="page" class="mypack.Conn" />

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<%@include file="HeaderAdmin.jsp"  %>
<div class="container">
    <table  border="1" align="center" width="80%">


        <br><br>
        <br><br>
        <th>Name<th>Teacher Name<th> Research Topic <th> Delete
        <tr>
            <%
                ResultSet rs = cn.s.executeQuery("select * from current");
                while (rs.next()) {
                    String r_id = rs.getString("r_id");
                    out.println("<td>" + rs.getString("student_name"));
                    out.println("<td>" + rs.getString("teacher_name"));
                    out.println("<td>" + rs.getString("research_topic"));
                    out.println("<td> <a href=delete_research_topic1.jsp?r_id=" + r_id + ">Delete</a>");

                    out.println("<tr>");
                }
            %>


    </table>
</div>
<br>
<br>
<center><a href="admin.jsp">Back to Admin Page</a></center>

<br><br>
<br>



<%@include file="FooterAdmin.jsp" %>