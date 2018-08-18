<%@page import="java.sql.*" %>

<jsp:useBean id="cn" scope="page" class="mypack.Conn" />

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<%
String u = (String) session.getAttribute("username");
   // out.println("select * from student where email='" +u+"'");
   // if(true)
   //     return;
    ResultSet rs = cn.s.executeQuery("select * from student where email='" +u+"'");

    rs.next();
%>


<%@include file="HeaderStudent.jsp"  %>

<div class="container">
    <form action="modify.jsp" method="POST">
    
      	<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            
            <div class="panel panel-info">
				
				<div class="panel-heading">
				<div class="panel-title">Modify</div>
				
		</div>

                
<div class="form-group">
    <input type="hidden" name="rollno" class="form-control" value=<%=rs.getString("rollno")%> > 
    Name <label><input type="text" name="t1" class="form-control" value=<%=rs.getString("name")%> ></label>
    <br>

    Stream:<label> <select name="t2" class="form-control" value=<%=rs.getString("stream")%>>
        <option>Computer Science Engineering</option>
        <option>Information Technology</option>
        <option>Civil Engineering</option>
        <option>Electronics and Communication Engineering</option> 
        <option>Electronics and Electrical Engineering</option>
        </select> </label>
    <br><br>
    Qualification:
    <label><select name="t3" class="form-control" value=<%=rs.getString("qualification")%>>
        <option>Computer Science Engineering</option>
        <option>Information Technology</option>
        <option>Civil Engineering</option>
        <option>Electronics and Communication Engineering</option> 
        <option>Electronics and Electrical Engineering</option>
        </select> </label>
    <br><br>
    Area of Interest: 
    <label><select multiple size="2" name="t4" class="form-control" value=<%=rs.getString("interests")%>>
        <option>Computer Science Engineering</option>
        <option>Information Technology</option>
        <option>Civil Engineering</option>
        <option>Electronics and Communication Engineering</option> 
        <option>Electronics and Electrical Engineering</option>
        </select></label>
    <br><br>
    Mobile No. <label>
        <input type="number" placeholder="Enter Mobile Number" name="t5" class="form-control" value=<%=rs.getString("mob")%>>
    </label>
    <br><br>
    <div class="radio">
    Industry Experience: 
    <label><input type="radio" name="t6" value="No"> Yes</label>
    <label> <input type="radio" name="t6" value="No">No</label>
    <br><br>
    </div>
<div class="radio">
    GATE Score:<label> <input type="radio" name="t7" value="Yes">Yes</label>
    <label><input type="radio" name="t7" value="No">No</label>
    <br><br>
</div>

    Project/Research Details: <label>
        <textarea rows="4" cols="12" name="t8" class="form-control" value=<%=rs.getString("research_details")%>></textarea>
    </label>
        <br><br>
  <div class="btn">
      <input type="submit" value="submit" class="btn btn-warning">

  </div>
</div>
            </div>
        </div>
</form>
</div>
    <%@include file="FooterStudent.jsp" %>