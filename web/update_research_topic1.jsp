<%@page import="java.sql.*" %>

<jsp:useBean id="cn" scope="page" class="mypack.Conn" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<%
    ResultSet rs = cn.s.executeQuery("select * from current where r_id=" + request.getParameter("r_id"));

    rs.next();
%>


<%@include file="HeaderAdmin.jsp"  %>

<form action="update_research_topic2.jsp" method="POST">

    <div class="container">

        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

            <div class="panel panel-primary"> 

                <div class="panel-heading">
                    <div class="panel-title">Edit Research Topic</div>

                </div>

                <br><br>

                <div class="form-group">
                    
                    <input type="hidden" name="t1" value="<%=rs.getString("r_id")%>">

                    <label>Student:</label> <input type="text" disabled="true" value='<%=rs.getString("student_name")%>' name="a1" class="form-control"/>
                    <br><br>

                    <label> Teacher:</label> <input type="text" placeholder="Edit Research Guide Name" name="a2" value='<%=rs.getString("teacher_name")%>' class="form-control" />

                    <br><br>
                    <label> Research Topic :  </label>
                    <textarea  style="padding-left: 10px;" rows="4" cols="12" placeholder="Edit Research Topic Name"  name="a3" value='<%=rs.getString("research_topic")%>' class="form-control"></textarea>
                    <br><br>
                    <div class="btn">

                        <input type="submit" value="Update Details" class="btn btn-info">
                        <input type="reset" value="Reset" class="btn btn-success"> 
                    </div>

                </div>
            </div>
        </div>
    </div>
</form>
<%@include file="FooterAdmin.jsp" %>