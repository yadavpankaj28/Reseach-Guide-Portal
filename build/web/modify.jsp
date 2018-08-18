<%
mypack.Conn db=new mypack.Conn();

String q= "update student set name='"+request.getParameter("t1")+"', stream='"+request.getParameter("t2")+"',"
        + "qualification='"+request.getParameter("t3")+"',interests='"+request.getParameter("t4")+"',"
        + " mob="+request.getParameter("t5")+", exp='"+request.getParameter("t6")+"', gate='"+request.getParameter("t7")+"', "
        + "research_details='"+request.getParameter("t8")+"' where rollno="+request.getParameter("rollno")+"" ;
        
int n=db.s.executeUpdate(q  );

if(n>0)
    out.println("User Updated");
else
    out.println("Error!Not Updated");

%>