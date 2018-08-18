<%@ page import="java.sql.*" %>
<jsp:useBean id="cn" scope="page" class="mypack.Conn" />

<%
try
{

String email=request.getParameter("email");
String strQuery = "SELECT password FROM users where email='"+email+"'";
ResultSet rs = cn.s.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1);
if(Countrow.equals("1")){
   
out.println("Password send to your email id successfully !");
}
else{
out.println("Invalid Email Id !");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
