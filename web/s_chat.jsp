
<%@include file="Headerj1.jsp"  %>

<%@page import="java.sql.ResultSet"%>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  $("button").click(function(){
   // alert("ok");
 
            var msg = $("#msgText").val();
            var to = $("#to").val();
            var toName =$("#toName").val();
            var finalData = "message="+msg+"&to="+to+"&toname="+toName;
   //     alert(finalData);
         $("#msgText").val("");
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
                      
                        //$("#test").append("ok");
                    }
                }
            });
        return false;
    });
    
        setInterval(function(){
            //  alert("finalData");
               var fromid= $("#to").val();
          //  var time = $(".item-left").last().find(".time").text();
            var name = $("#fromName").text();
                     var time = $("#time").text();
          var finalData = "from="+fromid+"&name="+name+"&last_time="+time;
    
    //  alert(finalData);
            $.ajax({
                url: "loadMessages.jsp",
                method:"post",
                data:finalData,
                dataType:"html",
                success:function(res){
                
                    if(res.length>20)
                    { $("#time").text(res.substr(res.indexOf("^")+1));
                    
                
                      $("#test").append(res.substr(0,res.indexOf("^")));
                  }
              }
            });
        }, 4000);
    
    
});


</script>
<%@include 
    file="DbConnect.jsp"%>
<%
      
    
    String userid = request.getParameter("id");
    String username = request.getParameter("name");
    String email  = request.getParameter("email");
    session.setAttribute("yemail",email);
    String myName = session.getAttribute("username").toString();
    String myid = session.getAttribute("userid").toString();
   String from = myName;
 
                               
                                     
                                                  ResultSet  res = s.executeQuery("select * from messages where msgfrom='"+email+"' and msgto='"+from+"' or msgfrom='"+from+"' and msgto='"+email+"' order by msgTime asc ;");
                                                    String t="";
                                                    String ltime="";
                                                    while(res.next())
                                                    {
                                               //      if(res.getString("msgfrom").equals(myid))
                                                     {
                                                        t=t+"<br><b><font color=red>"+res.getString("msgfrom")+"</font>";
                                                        t=t+":"+res.getString("description");
                                                 ltime = res.getString("msgTime");
                                                     }
                                                     
                                                     
                                                    }
                                                %>
Chat From : <%=myName%>
<hr>
<div id="test" style="border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;"> <%=t%> </div>


                                                <br>
                   <textarea rows="5" cols="80"
                       name="message"  id="msgText"    placeholder="Enter your message..."></textarea>
                                                        <input type="hidden" name="to" id="to" value='<%=email%>'>
                                                        <input type="hidden" name="toname" id="toName" value='kk'>
   
<button>Send Message</button>

<div id="time" style="color:white;"><%=ltime%></div>
    <%@include file="Footerj1.jsp" %>