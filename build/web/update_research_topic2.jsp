<%
mypack.Conn db=new mypack.Conn();
int n=db.s.executeUpdate("update current set teacher_name='"+request.getParameter("a2")+"', research_topic='"+request.getParameter("a3")+"' where r_id="+request.getParameter("t1")+""  );

if(n>0)
    response.sendRedirect("update_research_topic.jsp");
else
    out.println("Error!Not Updated");

%>
<a href="modemp.jsp">BACK </a>