<%@include file="DbConnect.jsp" %>
<%
    String to = request.getParameter("to");
    String toname = request.getParameter("toname");
    String message = request.getParameter("message");
    System.out.println(to+" -- "+toname+" --" +message);
    
    String from = session.getAttribute("username").toString();
    Timestamp ts = new Timestamp(System.currentTimeMillis());
    String query = "INSERT INTO messages(description,msgfrom,msgto,msgTime,msgType) VALUES ('"+message+"','"+from+"','"+to+"','"+ts+"',1) ;";
    System.out.println(query);
    int res = s.executeUpdate(query);
    if(res >0)
    {
        out.print("time="+ts.toString());
        //response.sendRedirect("chat.jsp?id="+to+"&name="+toname);
    }
    else
    {
        out.print("error");
    }
        //response.sendRedirect("error.jsp");
    %>