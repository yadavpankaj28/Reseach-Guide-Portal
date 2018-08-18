<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@include file="HeaderAdmin.jsp"  %>
<div class="container">
    <div id="changepassword" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
<form action="assign2" method="POST">
    
    <div class="panel panel-info"> 
				
    <div class="panel-heading">
    <div class="panel-title">Assign Password</div>
    </div>
         &nbsp;  
        <div class="form-group">
    
        
 
    <label>
     Password: <input type="password" name="password" placeholder="Choose New Password" class="form-control">
    </label>
    <br><br>
   
    <label>
    Confirm  Password: <input type="password" name="confpass" placeholder="Confirm Password" class="form-control">
    </label>
    <br><br>
        </div>
 <div class="btn">
	
<input type="submit" value="Submit" class="btn btn-info">
  <input type="reset" value="Reset" class="btn btn-success"> 
		</div>
    <input type="hidden" name="t_id" value=<%=request.getParameter("t_id")%> >
</form>
</div>
</div>
<%@include file="FooterAdmin.jsp" %>