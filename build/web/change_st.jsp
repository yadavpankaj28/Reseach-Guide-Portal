<%
mypack.Conn db=new mypack.Conn();

String q= "update request  set status='"+request.getParameter("s")+"' where teacher_id="+request.getParameter("tid");
        
int n=db.s.executeUpdate(q  );

if(n>0)
{out.println("User Updated");
response.sendRedirect("view_trequests.jsp");
}
else
    out.println("Error!Not Updated");

%>