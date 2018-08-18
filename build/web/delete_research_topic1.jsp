<%@page import="java.sql.*" %>

<jsp:useBean id="cn" scope="page" class="mypack.Conn" />

<%

cn.s.executeUpdate("delete from current where r_id="+request.getParameter("r_id"));
response.sendRedirect("delete_research_topic.jsp");
out.println("Record deleted");
%>

<br>


