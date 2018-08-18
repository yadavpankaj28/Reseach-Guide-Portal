<%@page import="java.sql.*" %>
<jsp:useBean id="cn" scope="page" class="mypack.Conn" />

<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>
function valid(){
alert ( "Update Successful" );
return true;
}
</script>

<%@include file="HeaderTeacher.jsp"  %>

<%

ResultSet rs = cn.s.executeQuery("select * from teacher where t_id="+request.getParameter("t_id"));
rs.next();

%>


<form action="modifyteacher.jsp" method="post" onsubmit="return valid();">
    <div class="container">
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
             <div class="panel panel-warning">
				
				<div class="panel-heading">
				<div class="panel-title">Edit Profile</div>
				
		</div>            
                 
                 <div class="form-group">
                     <input type="hidden" name="t_id" class="form-control" value=<%=rs.getString("t_id")%> >
                     Name: <label><input type="text" name="t1" class="form-control" value='<%=rs.getString("name")%>' ></label>
                     <br><br>
                     
                     Stream:<label> <select name="t2" class="form-control" value=<%=rs.getString("stream")%>> 
                             <option>Computer Science Engineering</option>
                             <option>Information Technology</option>
                             <option>Civil Engineering</option>
                             <option>Electronics and Communication Engineering</option> 
                             <option>Electronics and Electrical Engineering</option>
                        </select></label>
                    <br><br>
                    Specialization: <label>
                        <input type="text" name="t3" class="form-control" value=<%=rs.getString("specialization")%>>
                    </label>
                    <br><br>    
                    Mobile No. <label>
                            <input type="number" placeholder="Enter Mobile Number" name="t4" class="form-control" value=<%=rs.getString("mob")%>>
                    </label>
                    <br><br>
                    
                      <div class="btn">
                            <input type="submit" value="Update Details" class="btn btn-success">
                      </div>
                  </div>
          </div>
    </div>
    </div>
</form>
                    <%@include file="FooterTeacher.jsp" %>