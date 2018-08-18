
<%@page import="mypack.Conn"%>
<%@page import="java.sql.*" %>
<%@include file="Headerj.jsp"  %>
<h1>Accept/Reject Request</h1>

<form action="request.jsp" method="POST">
<%
    mypack.Conn c1 = new mypack.Conn();
    ResultSet rs = c1.s.executeQuery("select * from request where status='not-verified' ");
    
    while(rs.next())
    {
%>


<input type="type" disabled="true" name="t1" value='<%=rs.getString("stu_id")%>'>
<input type="text" disabled="true" name="t2" value='<%=rs.getString("stu_name")%>'>
<input type="hidden" name="t4" value="<%=rs.getString("stu_id")%>">
<select name="t3">
    <option>Select Choice</option>
    <option>Accept Request</option>
    <option>Reject Request</option>
</select>
<input type="submit" value="Accept/Reject Request">
<br><br>
<hr>
<%

    }
%>


<%

String status = request.getParameter("t3");
String qry = "update request set status='"+status+"' where stu_id="+request.getParameter("t4");
c1.s.executeUpdate(qry);

%>
</form>

<%@include file="Footerj.jsp" %>