<%-- 
    Document   : Admin
    Created on : 9 Feb, 2021, 10:18:25 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Car Rental System</title>

<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
<link rel="stylesheet" href="table.css" type="text/css" />
<script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
<!-- Featured Slider  -->
<script type="text/javascript" src="layout/scripts/jquery-s3slider.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#featured_slide_").s3Slider({
		timeOut:10000 
	});
});
</script>
<!-- / Featured Slider -->
</head>
<body id="top">
<div class="wrapper row1">
  <div id="topnav">
    <ul>
      <li><a href="AdminHome.jsp"><strong>Home</strong></a></li>
      <li><a href="Add_Brand.jsp"><strong>Add Brand</strong></a></li>
      <li><a href="Add_Vehicles.jsp"><strong>Add Vehicles</strong></a></li>
       <li class="active"><a href="RegUsers.jsp"><strong>Registered Users</strong></a></li>
      <li><a href="Manage_Booking.jsp"><strong>Manage Booking</strong></a></li>
      <li><a href="Admin.jsp"><strong>LOGOUT</strong></a></li>
      
    </ul>
  </div>
</div>
<!-- ####################################################################################################### -->
<div class="wrapper row2">
  <div id="header" class="clear">
    <div class="fl_left">
      <h1><a href="#">Car Rental System</a></h1>
     
    </div>
    
  </div>
</div>
 <div id="homepage" class="clear">
       <center>
     
            <h2>Registered Users</h2>
            <table>
                <tr>
                    <th>Name</th>
                      <th>Email</th>
                        <th>Mobile</th>
                          <th>Location</th>
                          
                </tr>
                <%
                try{
                    ResultSet r=Queries.getExecuteQuery("select * from user");
                    while(r.next()){
                        %>
                        <tr>
                            <td><%=r.getString("name")%></tD>
                            <td><%=r.getString("email")%></tD>
                            <td><%=r.getString("mobile")%></tD>
                            <td><%=r.getString("location")%></tD>
                        </tr>
                        
                        <%
                    }
                    
                }catch(Exception e){
                   out.println(e); 
                }
                
                %>
            </table>
            
         
            
        </center>
        
        
        
    </div>
       </div>
</div>


</body>
</html>