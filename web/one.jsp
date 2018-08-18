
<%@page import="java.sql.ResultSet"%>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("button").click(function(){
      alert("ok");
 
            var msg = $("#msgText").val();
            var to = $("#to").val();
            var toName =$("#toName").val();
            var finalData = "message="+msg+"&to="+to+"&toname="+toName;
          alert(finalData);
 
            $.ajax({
                url:"sendMessage.jsp",
                method:"post",
                data: finalData,
                dataType: "html",
                success:function(res){
                
                    if(res=="error")
                    {
                        alert("Message Not Sent. Try Again!");
                    }
                    else 
                    {
                      
                        $("#test").append("ok");
                    }
                }
            });
        return false;
    });
});


</script>
<%@include 
    file="DbConnect.jsp"%>

<%@include file="Headerj.jsp"  %>
<%
      
    
    String userid = request.getParameter("id");
    String username = request.getParameter("name");
    String myName = session.getAttribute("username").toString();
    String myid = session.getAttribute("userid").toString();

    %>
                 <%
                                     out.println("select * from messages where msgfrom='"+myid+"' and msgto='"+userid+"' or msgfrom='"+userid+"' and msgto='"+myid+"' order by msgTime asc ;");    
                                     
                                                  ResultSet  res = s.executeQuery("select * from messages where msgfrom='"+myid+"' and msgto='"+userid+"' or msgfrom='"+userid+"' and msgto='"+myid+"' order by msgTime asc ;");
                                                    
                                                    while(res.next())
                                                    {
                                                     if(res.getString("msgfrom").equals(myid))
                                                     {
                                                         out.print("description");
                                                         out.print("msgfrom");
                                                         out.print("msgto");
                                                     }
                                                    }
                                                %>




                   <textarea row="2"
                       name="message"  id="msgText"    placeholder="Enter your message..."></textarea>
                                                        <input type="hidden" name="to" id="to" value='ramu'>
                                                        <input type="hidden" name="toname" id="toName" value='kk'>
<p id="test">This is another paragraph.</p>
<div></div>
<button>Send Message</button>

<%@include file="Footerj.jsp" %>