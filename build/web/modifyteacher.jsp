<%
mypack.Conn db=new mypack.Conn();

String qry= "update teacher set name='"+request.getParameter("t1")+"', stream='"+request.getParameter("t2")+"',"
        + " specialization='"+request.getParameter("t3")+"', mob="+request.getParameter("t4")+" "
        + "where t_id="+request.getParameter("t_id")+"";
        
out.println(qry);
int n=db.s.executeUpdate(qry);

if(n>0){
    out.println("User Updated");
    response.sendRedirect("teacher.jsp");       
}
else
    out.println("Error!Not Updated");

%>