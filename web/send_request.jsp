<%@page import="mypack.Conn"%>
<%@page import="java.sql.*" %>

<%@include file="Headerj.jsp"  %>
<form action="send_request.jsp" method="POST">
<%
    mypack.Conn c1 =  new mypack.Conn();
   
    String email = (String ) session.getAttribute("username");
    String teacher_id = request.getParameter("t_id");
     String dt = new java.util.Date().toString();
    String qry2 = "insert into request values('"+email+"',"+teacher_id+",'"+dt+"','not-verified')";
    
    c1.s.executeUpdate(qry2);
    
    out.print("request sent Successfully");
 %>
</form>
<%@include file="Footerj.jsp" %>