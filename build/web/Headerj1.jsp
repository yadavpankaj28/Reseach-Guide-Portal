<html>
	<head>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" href="css/bootstrap.theme.min.css"/>
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
                <style>
                    .well-lg{
                        background-color: #113f6c !important;
                        margin-bottom: 0px;
                        height: 30px !important;
                    }
                    #apple{
                        font-size:14px;
                        margin-left:850px;
                        alignment-adjust: right !important;
                    }
                    #navbar{
                        background-color: #f8991e !important ;
                        padding-bottom: 0px;
                        margin-bottom: 0px;
                         
                           }
                    .navbar-brand{
                              height:113px;
                           }
                           .navbar-header{
                               height: 87px;
                           }
                   
                    #mango:hover{
                         color: #113f6c !important;
                        text-decoration: underline;
                        font-size: 18px;
                      
                    }
                
                </style>
        </head>
        <body>
        <div class="well-lg ">
            <div class="container-fluid">
                <div id="apple">
                    <span style="color:orange;" class="glyphicon glyphicon-envelope" ></span>&nbsp;<a style="color:white;" href="">info@thapar.edu</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <span style="color:orange;" class=" glyphicon glyphicon-earphone"></span>&nbsp;<a style="color:white;" href=""  >+(91)-175 239 3021</a>
            </div>
            </div>
        </div>
            <nav class="navbar " id="navbar"  >
		<div class="container">
			<div class="navbar-header" >
                            <a class="navbar-brand" href="#"><img style=" margin-right: 50px;" src="tilogo.png" alt="Logo_TI" width="80px" height="75px" /></a>
			</div>
				
                    <ul class="nav navbar-nav navbar-right "  id = "mango">
                            
                        <li ><a   class="" href="#" ><h4 style="color:white;" >HOMEPAGE</h4></a></li>
                 
                  <% 
                      String shome = (String) session.getAttribute("username");
                      if(shome==null)
                      {
                      %>
                        
                        <li ><a class="" href="login.jsp" ><h4 style="color:white;" >LOGIN</h4></a></li>
                        <%
                      }
                      else
                      {
                      %>
                                    <li ><a class="" href="logout.jsp" ><h4 style="color:white;" >LOGOUT</h4></a></li>
                      <%  } %>
                        
                        <li ><a class="" href="contactus.jsp" ><h4 style="color:white;" >CONTACT US</h4></a></li>
                               
                    </ul>
							
		</div>
					
	</nav>
            </body> 
</html>