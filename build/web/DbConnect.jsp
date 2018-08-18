<%@page import="java.sql.*"%>
<%
    Connection c=null;
    Statement s=null;
    try
    {
            Class.forName("com.mysql.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql:///chats","root","");
            s = c.createStatement();
    }
    catch(Exception e)
    {
            e.printStackTrace();
    }
    %>
    