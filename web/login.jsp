


<link rel="stylesheet" href="css/bootstrap.min.css" />

<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<%@include file="Headerj.jsp"  %>
<div class="container">

<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

<form action="login" method="POST">

    <br><br>
    <div class="panel panel-danger"> 
				
        <div class="panel-heading">
            <div class="panel-title">Welcome Researchers</div>
            <div style="float:right; font-size:80%;position:relative; top:-20px"><a href="forgotpassword.jsp">Forgot Password?</a></div>
        </div>
        &nbsp;  
        
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> 
            <input type="hidden" name="i"/>
            <input type="text" placeholder="Enter Username" class="form-control" name="t1" />
            <br><br>
        </div>
    
        <div class="input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input type="password" placeholder="Enter Password" class="form-control" name="t2" />
        </div>
        <br><br>
        
        <div class="btn">
            <input type="submit" value="Login" class="btn btn-danger"> 
            <a href="signup.jsp"><button type="button" class="btn btn-info">Sign Up Here</button> </a> 
        </div>
        <br><br>
    </div>
    </form>
</div>
    <br><br>
    <br><br>
    <br><br>
</div>
 <br><br>
    <br><br>
    <br><br>        
<%@include file="Footerj.jsp" %>