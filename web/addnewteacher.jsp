<%@page import="java.sql.*" %>
<jsp:useBean id="cn" scope="page" class="mypack.Conn" />

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
    function validate() {
        var tid = document.f1.t1.value;
        var name = document.f1.t2.value;
        var specialization = document.f1.t5.value;
        var email = document.f1.t6.value.indexOf("@");
        var mobile= document.f1.t7.value;
        var designation = document.f1.t3.value;
        var stream = document.f1.t4.value;

        if ( tid == null)
        {
            alert("Teacher ID Field Cannot Be Empty");
            return false;
        }

        if (name == "" || name == null)
        {
            alert("Name Cannot be Empty");
            return false;
        }

        if(specialization == null){
            alert("Field Cannot Be Empty")
            return false;
        }
        
        if(designation == ""){
             alert("Select Designation")
            return false;
        }
         if(stream == ""){
             alert("Select Stream")
            return false;
        }
        
        var n = email;
        if (n == -1)
        {
            alert("Email is not Valid");
            return false;
        }

        if (mobile == null) {
            alert("Required Phone Number Field");
            return false;
        }

        if (details == null) {
            alert("Field Cannot be Empty");
            return false;
        }


    }
</script>



<%@include file="HeaderAdmin.jsp"  %>
<h1>Add New Teacher Profile</h1>

<form action="addnewteacher.jsp" method="POST" name="f1" onsubmit="return validate()">
    <div class="container">

    	<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            
            <div class="panel panel-success"> 
				
				<div class="panel-heading">
				<div class="panel-title">Add New Teachers</div>
				
		</div>

<br><br>
<div class="form-group">
    
    <label>Teacher ID: </label><input type="text" name="t1" placeholder="
    <%
    ResultSet rs = cn.s.executeQuery("SELECT MAX(t_id) FROM `teacher` WHERE 1");
    rs.next();
    int t_id = rs.getInt(1);
    t_id = t_id+1;
    out.println(t_id);
    
%>
    " class="form-control">
    <br><br>
  
    <label>Full Name:</label> <input type="text" name="t2" placeholder="Enter Full Name" class="form-control" />
    <br><br>
     <div class="radio">
         Gender: <label><input type="radio" name="a1" value="Male"> Male </label>
        <label><input type="radio" name="a1" value="Female"> Female</label>
     </div>
    <br><br>
    
    <label>Designation:</label> <select name="t3" class="form-control">
        <option value="">--Select Designation--</option>
        <option value="Assistant Professor">Assistant Professor</option>
        <option value="Associate Professor">Associate Professor</option>
        <option value="Professor">Professor</option>
        <option value="Lecturer">Lecturer</option>
        </select>
    <br><br>

    <label>Stream:</label> <select name="t4" class="form-control">
        <option value="">--Select Stream--</option>
        <option value="Information Technology">Information Technology</option>
        <option value="Computer Science Engineering">Computer Science Engineering</option>
        <option value="Software Engineering">Software Engineering</option>
        <option value="Information Security">Information Security</option>
        </select>
    <br><br>
      
    
    <label>Specialization: </label><input type="text" placeholder="Teacher Specialization" name="t5" class="form-control">
    <br><br>
    
   <label> Email-Id: </label><input type="text" placeholder="Enter Valid Email-Id" name="t6" class="form-control">
    <br><br>

   <label> Mobile No. </label><input type="number" placeholder="Enter Mobile Number" name="t7" class="form-control">
    <br><br>
     <div class="radio">
         Industry Experience: <label><input type="radio" name="a2" value="Yes"> Yes </label>
        <label><input type="radio" name="a2" value="No">No</label>
        </div>
    <br><br>
    
     <label> Profile Link from Thapar's Website </label><input type="text" placeholder="Copy Link here" name="l7" class="form-control">
    <br><br>
     
     <div class="btn">
    <input type="submit" value="Submit" class="btn btn-primary"/>
    </div>
    </div>
	</div>
        </div>
    </div>
</form>


<%
   
    mypack.Conn c1 = new mypack.Conn(); 
    
    String name = request.getParameter("t2");
    String gender = request.getParameter("a1");
    String designation = request.getParameter("t3");
    String stream = request.getParameter("t4");
    String specialization = request.getParameter("t5");
    String email = request.getParameter("t6");
    String mob = request.getParameter("t7");
    String exp = request.getParameter("a2");
    String profile_link = request.getParameter("l7");
    
    
    try{
     
    PreparedStatement ps = c1.c.prepareStatement("insert into teacher values(?,?,?,?,?,?,?,?,?,?)");
            ps.setInt(1, t_id);
            ps.setString(2, name);
            ps.setString(3, designation);
            ps.setString(4, stream);
            ps.setString(5, specialization);
            ps.setString(6, gender);
            ps.setString(7, email);
            ps.setString(8, mob);
            ps.setString(9, exp);
            ps.setString(10,profile_link);
            
            out.println(t_id);
            ps.executeUpdate();
    
    }
    catch(Exception e){
        out.println("Cannot Insert"+e);
    }
    
    //response.sendRedirect("admin.jsp");
    out.println("Record Inserted");
%>

<%@include file="FooterAdmin.jsp" %>