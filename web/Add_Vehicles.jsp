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
      <li class="active"><a href="Add_Vehicles.jsp"><strong>Add Vehicles</strong></a></li>
       <li><a href="RegUsers.jsp"><strong>Registered Users</strong></a></li>
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
     
            <h2>Add Cars Here</h2>
         
            
          <form action="VehicleAction.jsp" method="post">
                <table>
                                <tr><th>Select Brand</th><td><select name="brand" required="">
                                            <option></option>
                                            <%try{
                                             ResultSet r=Queries.getExecuteQuery("select * from brand");
                                             while(r.next()){
                                              String name=r.getString("brand"); 
                                              %>
                                              <option value="<%=name%>"><%=name%></option>
                                              <%
                                             }
                                                
                                                
                                                
                                            }catch(Exception e){
                                                out.println(e);
                                                
}%>
                            </select></td></tr>
                    <tr><th>Vehicle Type</th><td><input type="text" name="type" required=""></td></tr>
                    <tr><th>Price per Day</th><td><input type="text" name="price" required=""></td></tr>
                    <tr><th>Fuel Type</th><td><input type="text" name="fueltype" required=""></td></tr>
                     <tr><th>Model</th><td><input type="text" name="model" required=""></td></tr>
                     <tr><th>contact</th><td><input type="number" name="contact" required=""></td></tr>
                       <tr><th></th><td><input type="submit" value="Add Vehicle" required=""></td></tr>
                  
                </table>
            
            </form>  
            
        </center>
        
        
        
    </div>
       </div>
</div>


</body>
</html>