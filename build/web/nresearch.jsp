
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@include file="Headerj.jsp"  %>

<br><br>




<%@page import="java.sql.*" %>

<%
    String roll = (String) request.getParameter("ar");
    String name = (String) request.getParameter("a1");
    String teacher = (String) request.getParameter("a2");
    String research = (String) request.getParameter("a3");

    try {
        mypack.Conn c1 = new mypack.Conn();
        PreparedStatement ps = c1.c.prepareStatement("insert into current values (?,?,?,?)");
        ps.setString(1, roll);
         ps.setString(2, name);
        ps.setString(3, teacher);
        ps.setString(4, research);
        int n = ps.executeUpdate();
        if (n > 0) {
            out.println("<center>Research Added!</center>");
        }

    } catch (Exception e) {
        e.printStackTrace();
    }
      //  out.println("Record Inserted");


%>


<br><br>



<%@include file="Footerj.jsp" %>