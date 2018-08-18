<%@include file="DbConnect.jsp"%>

<%@include file="Headerj.jsp"  %>
<%
      
    
    String userid = request.getParameter("id");
    String username = request.getParameter("name");
    String myName = session.getAttribute("username").toString();
    String myid = session.getAttribute("userid").toString();

    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>


<head>
<meta charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>My Home</title>
 
<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.min.css"/>
 
<script src="js/demo-rtl.js"></script>
 
 
<link rel="stylesheet" type="text/css" href="css/libs/font-awesome.css"/>
 
<link rel="stylesheet" type="text/css" href="css/compiled/theme_styles.css"/>
 
 
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400' rel='stylesheet' type='text/css'>
<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <header class="navbar" id="header-navbar">
            <div class="container">
                    <a href="#" id="logo" class="navbar-brand"> 
                        Chat App
                    </a>
                    <div class="clearfix">
                            <div class="nav-no-collapse pull-right" id="header-nav">
                                    <ul class="nav navbar-nav pull-right">
                                        <li > <a href="#"><% out.println(session.getAttribute("username")); %> </a>
                                                    </li>
                                            <li class="hidden-xxs"><a class="btn" href="logout.jsp"> <i
                                                            class="fa fa-power-off"></i>
                                            </a></li>
                                    </ul>
                            </div>
                    </div>
            </div>
    </header>

<div class="container">
    <div class="row" style="margin-top: 10px;">
        <div class="col-xs-6 col-xs-offset-3">
           <div class="main-box clearfix">
                    <header class="main-box-header clearfix">
                            <h2>Conversation with <%=username %></h2>
                    </header>
                    <div class="main-box-body clearfix">
                            <div class="conversation-wrapper">
                                    <div class="conversation-content">
                                            <div class="conversation-inner">
                                                <%
                                                
                                                  ResultSet  res = s.executeQuery("select * from messages where msgfrom='"+myid+"' and msgto='"+userid+"' or msgfrom='"+userid+"' and msgto='"+myid+"' order by msgTime asc ;");
                                                    
                                                    while(res.next())
                                                    {
                                                     if(res.getString("msgfrom").equals(myid))
                                                     {
                                                %>
                                                <div class="conversation-item item-right clearfix" >
                                                    <div class="conversation-user">
                                                            <img src='images/1.png'alt="" width="50px" height="50px"/>
                                                            <input typ="hidden" class="myimg" value='images/2.png %> '>
                                                    </div>
                                                    
                                                            <div class="conversation-body" >
                                                                    <div class="name" id="myname"><%=myName%></div>
                                                                    <div class="time hidden-xs"><%=res.getString("msgTime")%></div>
                                                                    <div class="text">
                                                                         <%if(res.getInt("msgType")==1)
                                                                            {
                                                                            out.println(res.getString("description"));
                                                                            }
                                                                         else
                                                                         {
                                                                          %>
                                                                          <a href='userChat/<%=res.getString("description")%>'><%=res.getString("description")%></a>
                                                                          <%
                                                                         }
                                                                         %>
                                                                    </div>
                                                                    
                                                            </div>
                                                    </div>
                                                <%
                                                     }
                                                     else 
                                                     {
                                                         %>
                                                    <div class="conversation-item item-left clearfix" >
                                                           <div class="conversation-user">
                                                            <img src='images/1.png 'alt="" width="50px" height="50px"/>
                                                    </div>
                                                            <div class="conversation-body" >
                                                                    <div class="name" id="fromName"><%=username%></div>
                                                                    <div class="time hidden-xs"><%=res.getString("msgTime")%></div>
                                                                    <div class="text"><%
                                                                            if(res.getInt("msgType")==1)
                                                                            {
                                                                            out.println(res.getString("description"));
                                                                            }
                                                                            else
                                                                         {
                                                                          %>
                                                                          <a href='userChat/<%=res.getString("description")%>'><%=res.getString("description")%></a>
                                                                          <%
                                                                         }
                                                                        %></div>
                                                            </div>
                                                    </div>
                                                    <%
                                                     }
                                                    }
                                                         %>
                                                    

                                            </div>
                                    </div>
                                    <div class="conversation-new-message">
                                            <form id='msgFrm' 
                                                    <div class="form-group">
                                                            <textarea class="form-control" rows="2"
                                                              name="message"  id="msgText"    placeholder="Enter your message..."></textarea>
                                                        <input type="hidden" name="to" id="to" value='<%=userid%>'>
                                                        <input type="hidden" name="toname" id="toName" value='<%=username%>'>
                                                    </div>
                                                    <div class="clearfix">
                                                        
                                                            <a id="sentMsg" style="margin-left: 10px" href="#" class="btn btn-success pull-right">Send
                                                                    message</a>
                                                                    
                                                                 
                                                    </div>
                                            </form>
                                                       <div>
                                                              
                                                                    </div>
                                    </div>
                            </div>
                    </div>
            </div>
        </div>
        </div>
    </div>

 
<script src="js/jquery.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/jquery.nanoscroller.min.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
 
 
<script src="js/scripts.js"></script>
<script>
    $(document).ready(function(){
        
        $("#msgFrm").on("submit",function(e){
            e.preventDefault();
        });
        
        $("#sFile").on("click",function(){
           var filename = $("#msgFile").val(); 
           if(filename.length>0)
               {
                   alert("submkt");
                   $("#sendFile").submit();
               }
               else
                   {
                    alert("select file first");   
                   }
        });
        
          $('.conversation-inner').slimScroll({
	        height: '332px',
	        alwaysVisible: false,
	        railVisible: true,
	        wheelStep: 5,
	        allowPageScroll: false
	    });
        $("#sentMsg").on("click",function(){
          alert("ok");
            var msg = $("#msgText").val();
            var to = $("#to").val();
            var toName =$("#toName").val();
            var finalData = "message="+msg+"&to="+to+"&toname="+toName;
         
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
                        var time = res.substring(res.indexOf("=")+1,res.length);
                        var myName = $("#myname").text();
                       var myimg = $(".myimg").val();
                                             console.log(myimg);               
                        var sendDiv = "<div class='conversation-item item-right clearfix'><div class='conversation-user'><img width='50px' height='50px' src='"+myimg+"' alt='' /></div><div class='conversation-body' ><div class='name'>"+myName+"</div> <div class='time hidden-xs'>"+time+"</div><div class='text'>"+msg+"</div></div></div>";
                        console.log(sendDiv);
                        $("#msgText").val("");
                        $(".conversation-inner").append(sendDiv);
                    }
                }
            });
        return false;
        });
        
        
        setInterval(function(){
            var fromid= $("#to").val();
            var time = $(".item-left").last().find(".time").text();
            var name = $("#fromName").text();
            var finalData = "from="+fromid+"&last_time="+time+"&name="+name;
            
            $.ajax({
                url: "loadMessages.jsp",
                method:"post",
                data:finalData,
                dataType:"html",
                success:function(res){
                    $(".conversation-inner").append(res);
                }
            });
        }, 5000);
    });
</script>
</body>



</html>
<%@include file="Footerj.jsp" %>