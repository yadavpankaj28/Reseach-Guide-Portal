
<% 
    session.setAttribute("userid", "1");
    session.setAttribute("username","sonu");
    String id = "11";
    String name="ramu";
    String fullname ="ramu yadav";
out.println("<td><a href='one.jsp?id="+id+"&name="+name+"'>"+fullname+"</a></td>");

%>


<% 
 id = "12";
    name="bholu";
 fullname ="bholu yadav";
out.println("<td><a href='chat.jsp?id="+id+"&name="+name+"'>"+fullname+"</a></td>");

%>

<%@include file="Footerj.jsp" %>