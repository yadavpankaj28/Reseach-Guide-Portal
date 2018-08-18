<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
    
</script>

<script>
    function validate() {
        var rollno = document.f1.a1.value;
        var name = document.f1.a2.value;
        var email = document.f1.a3.value.indexOf("@");
        var password = document.f1.a9.value;
        var conf = document.f1.pp.value;
        var mobile = document.f1.a7.value;
        var details = document.f1.a8.value;

        var stream = document.f1.a4.value;
        var qualification = document.f1.a5.value;
        var interest = document.f1.a6.value;

        if (rollno == "" || rollno == null)
        {
            alert("Roll Number Field Cannot be Empty");
            return false;
        }

        if (name == "" || name == null)
        {
            alert("Name Cannot be Empty");
            return false;
        }

        var n = email;
        if (n == -1)
        {
            alert("Email is not Valid");
            return false;
        }


        if (password == "")
        {
            alert("Password Cannot Be Blank");
            return false;
        }

        if (conf == "")
        {
            alert("Confirm Password Cannot Be Blank");
            return false;
        }


        if (conf != password)
        {
            alert("Password and Confirm Password Doesn't Match");
            return false;
        }

        if (mobile == null) {
            alert("Required Phone Number Field");
            return false;
        }
           
        if (stream == "") {
            alert("Select Stream")
            return false;
        }
        



    }
</script>


<%@include file="Headerj.jsp"  %>

<form name="f1" method="POST" action="signup" onsubmit="return validate()">

    <div class="container">

        <div id="loginbox" style="margin-top:50px; " class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

            <div class="panel panel-primary"> 

                <div class="panel-heading">
                    <div class="panel-title">Sign UP</div>

                </div>

                <br><br>

                <div class="form-group">

                    <label style="padding-left: 10px;"> Roll No.: </label><input type="text" style="padding-left: 10px;" placeholder="Enter Valid Roll Number" name="a1" class="form-control"/>
                    <br><br>

                    <label style="padding-left: 10px;">Name: </label><input type="text"  style="padding-left: 10px;" placeholder="Enter Full Name" name="a2" class="form-control" />
                    <br><br>

                    <div class="radio" style="padding-left: 10px;">
                      Gender:
                        <label ><input style="padding-left: 10px;" type="radio" name="t1" value="Male"> Male </label>
                        <label ><input style="padding-left: 10px;" type="radio" name="t1" value="Female"> Female</label>
                        <br><br>
                    </div>
                    <label style="padding-left: 10px;">Email-Id: </label> <input type="text" style="padding-left: 10px;" placeholder="Enter Valid Email-Id" name="a3" class="form-control">
                    <br><br>

                    <label style="padding-left: 10px;"> Password: </label><input type="password" style="padding-left: 10px;" placeholder="Choose a Password" name="a9" class="form-control">
                    <br><br>
                    <label style="padding-left: 10px;"> Confirm Password: </label><input type="password" style="padding-left: 10px;" placeholder="Confirm Password" name="pp" class="form-control">
                    <br><br>
                    <label style="padding-left: 10px;">  Stream:  </label><select name="a4" class="form-control" style="padding-left: 10px;">
                        <option value="">--Select Stream--</option>
                        <option value="1">Computer Science Engineering</option>
                        <option value="2">Information Technology</option>
                        <option value="3">Software Engineering</option>
                        <option value="4">Information Security</option> 
                    </select>
                    <br><br>
                    <label style="padding-left: 10px;">Qualification:</label> <select name="a5" class="form-control" style="padding-left: 10px;">
                        <option value="">--Select Qualification--</option>
                        <option value="B.Tech">B.Tech</option>
                        <option value="M.Tech">M.Tech</option>
                        <option value="ME">ME</option>
                        <option value="BCA">BCA</option> 
                        <option value="MCA">MCA</option>
                    </select> 
                    <br><br>
                    <label style="padding-left: 10px;">  Area of Interest:</label> <select multiple size="4" name="a6" class="form-control" style="padding-left: 10px;">
                        <option value="">--Select Area of Interests--</option>
                        <option value="Cloud Computing">Cloud Computing</option>
                        <option value="Big Data">Big Data</option>
                        <option value="Internet of Things">Internet of Things</option>
                        <option value="DevOps">DevOps</option> 
                        <option value="Machine Learning">Machine Learning</option>
                        <option value="Software Engineering">Software Engineering</option>
                    </select> 
                    <br><br>
                    <label style="padding-left: 10px;"> Mobile No. </label><input type="text" placeholder="Enter Mobile Number" name="a7" class="form-control" style="padding-left: 10px;">
                    <br><br>
                    <div class="radio" style="padding-left: 10px;">
                        <label style="padding-left: 10px;">Industry Experience:</label> 
                        <label><input style="padding-left: 10px;" type="radio" name="t2" value="Yes"> Yes</label>
                        <label><input style="padding-left: 10px;" type="radio" name="t2" value="No" class="radio">No</label>
                    </div>
                    <br><br>
                    <div class="radio" style="padding-left: 10px;">
                        <label style="padding-left: 10px;"> GATE Qualified:</label>
                        <label><input style="padding-left: 10px;" type="radio" name="t3" value="Yes" >Yes</label>
                        <label><input style="padding-left: 10px;" type="radio" name="t3" value="No">No</label>
                    </div>
                    <br><br>

                    <label style="padding-left: 10px;">Project/Research Details:</label> <textarea style="padding-left: 10px;" rows="4" cols="12" name="a8" class="form-control"></textarea>
                    <br><br>

                    <div class="btn" style="padding-left: 10px;">

                        <input type="submit" value="SignUp"  class="btn btn-info">
                        <input type="reset" value="Reset" class="btn btn-success"> 
                    </div>

                </div>
            </div>
        </div>
    </div>
</form>
<%@include file="Footerj.jsp" %>