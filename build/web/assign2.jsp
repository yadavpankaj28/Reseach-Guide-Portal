<%@page import="java.sql.ResultSet"%>


                   
                      <%
mypack.Conn db=new mypack.Conn();
String password = request.getParameter("password");
String tid = request.getParameter("t_id");
String email="";
ResultSet rs;

 rs = db.s.executeQuery("select * from teacher where t_id="+tid);
if(rs.next())
    email = rs.getString("email");
try
{
    rs.close();
}catch(Exception e){e.printStackTrace(); }

 rs = db.s.executeQuery("select * from login where username='"+email+"'");
 boolean flag = false;
if(rs.next())
    flag=true;

String q;
if(flag)
q="update login set password='"+password+"' where username='"+email+"'";
else
q = "insert into login values(null,'"+email+"','"+password+"','teacher')" ;

int n=db.s.executeUpdate(q  );

if(n>0){
   
   out.println("<h1>Credential Assigned</h1>");
}
else
    out.println("Error!Action not performed");

%>
                      
                      
          




