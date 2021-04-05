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
       <li><a href="RegUsers.jsp"><strong>Registered Users</strong></a></li>
      <li class="active"><a href="Manage_Booking.jsp"><strong>Manage Booking</strong></a></li>
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
     <%String username=(String)session.getAttribute("username");
     String id=(String)session.getAttribute("id");%>
  </div>
</div>
 <div id="homepage" class="clear">
       <center>
     
            <h2>Manage Booking</h2>
            <table>
                <tr>
                    <th>UserName</th>
                    <th>Vehicle Type</th>
                      <th>Brand</th>
                        <th>Per Day Price</th>
                        <th>No.of Days Booked</th>
                        <th>Total Amount</th>
                          <th>Fuel Type</th>
                           <th>Model</th>
                             <th>Booked Date</th>
                           <th>Accept</th>
                           <th>Delete</th>
                          
                </tr>
                <%
                try{
                    ResultSet r=Queries.getExecuteQuery("select * from vehicle v,booking b where b.vid=v.id");
                    while(r.next()){
                        String status=r.getString("b.status");
                        String days=r.getString("b.days");
                        %>
                        <tr>
                            <td><%=r.getString("b.username")%></tD>
                            <td><%=r.getString("v.type")%></tD>
                            <td><%=r.getString("v.brand")%></tD>
                            <td><%=r.getString("v.price")%> Rs</tD>
                            <td><%=days%> Days</tD>
                            <td><%=r.getString("b.amount")%> Rs</tD>
                             <td><%=r.getString("v.fuel_type")%></tD>
                            <td><%=r.getString("v.model")%></tD>
                            <td><%=r.getString("b.date")%></tD>
                            <%if(status.equals("waiting")){
                               %>
                        <td><a href="AcceptBooking.jsp?id=<%=r.getString("b.id")%>">Accept</a></td>
                            <%
                            }else{
%>
            <td><%=status%></tD> 
            <%
}%>
                            <td><a href="DeleteBooking.jsp?id=<%=r.getString("b.id")%>">Delete</a></td>  
                           </tr>
                        
                        <%
                    }
                    
                }catch(Exception e){
                   out.println(e); 
                }
                
                %>
            </table>
            <%String vid=request.getParameter("vid");
            String price=request.getParameter("price");
            if(vid!=null&&price!=null){
         %>
         <form action="BookVehicle.jsp" method="post">
             <table>
                 <tr><th>Vehicle ID</th><td><input type="text" name="vid" value="<%=vid%>" readonly=""></td></tr>
                  <tr><th>Per Day Price</th><td><input type="text" name="price" value="<%=price%>" readonly=""></td></tr>
                 <tr><th>No.of Days</th><td><input type="number" name="days" required=""></td></tr>
                 <tr><th></th><td><input type="submit" name="submit" required=""><a href="MyBooking.jsp">Back</a></td></tr>
             </table>
         </form>
         
         
         <%
}%>
         
            
        </center>
        
        
        
    </div>
       </div>
</div>


</body>
</html>