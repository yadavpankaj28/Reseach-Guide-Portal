<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
    function validate() {
     
        var e = document.f1.a3.value;

        if (e == "" || e == null)
        {
            alert("Research Topic can not be Empty");
            return false;
        }



    }
</script>
<%@include file="HeaderAdmin.jsp"  %>

<form action="add_research1.jsp" method="POST">

    <div class="container">

        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

            <div class="panel panel-primary"> 

                <div class="panel-heading">
                    <div class="panel-title">New Research Topic</div>

                </div>

                <br><br>

                <div class="form-group">


                   
                    <label> Research Topic :  </label>
                    <textarea  style="padding-left: 10px;" rows="4" cols="12" name="a3" class="form-control"></textarea>
                    <br><br>
                    <div class="btn">

                        <input type="submit" value="Submit Topic" class="btn btn-info">
                        <input type="reset" value="Reset" class="btn btn-success"> 
                    </div>

                </div>
            </div>
        </div>
    </div>
</form>

<center><a href="admin.jsp">Back to Admin Page</a></center>
<br><br>
<%@include file="FooterAdmin.jsp" %>