<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@include file="Headerj1.jsp"  %>
<div class="container">
    <div id="changepassword" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
<form action="changepassword" method="POST">
    
    <div class="panel panel-info"> 
				
    <div class="panel-heading">
    <div class="panel-title">Change Password</div>
    </div>
         &nbsp;  
        <div class="form-group">
    
            <label>
            Enter Old Password: <input type="password" name="old" placeholder="Enter Your Old Password" class="form-control">
            </label>
            
    <br><br>
 
    <label>
    Choose New Password: <input type="password" name="newpass" placeholder="Choose New Password" class="form-control">
    </label>
    <br><br>
   
    <label>
    Confirm New Password: <input type="password" name="confpass" placeholder="Confirm Password" class="form-control">
    </label>
    <br><br>
        </div>
 <div class="btn">
	
			<input type="submit" value="Submit" class="btn btn-info">
                        <input type="reset" value="Reset" class="btn btn-success"> 
		</div>
</div>
</div>
</div>
    </form>

</div>
    <%@include file="Footerj1.jsp" %>