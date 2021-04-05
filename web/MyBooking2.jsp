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
      <li><a href="UserHome.jsp"><strong>Home</strong></a></li>
      <li><a href="ViewProfile.jsp"><strong>View Profile</strong></a></li>
      <li><a href="MyBooking.jsp"><strong>Book Cars</strong></a></li>
      <li class="active"><a href="MyBooking2.jsp"><strong>My Bookings</strong></a></li>
      <li><a href="user.jsp"><strong>LOGOUT</strong></a></li>
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
     
            <h2>My Booking Details</h2>
            <table>
                <tr>
                    <th>Vehicle Type</th>
                      <th>Brand</th>
                        <th>Per Day Price</th>
                        <th>No.of Days Booked</th>
                        <th>Total Amount</th>
                          <th>Fuel Type</th>
                           <th>Model</th>
                           <th>Status</th>
                          
                </tr>
                <%
                try{
                    ResultSet r=Queries.getExecuteQuery("select * from vehicle v,booking b where b.vid=v.id and b.uid='"+id+"'");
                    while(r.next()){
                        String status=r.getString("b.status");
                        String days=r.getString("b.days");
                        %>
                        <tr>
                            <td><%=r.getString("v.type")%></tD>
                            <td><%=r.getString("v.brand")%></tD>
                            <td><%=r.getString("v.price")%> Rs</tD>
                            <td><%=days%> Days</tD>
                            <td><%=r.getString("b.amount")%> Rs</tD>
                             <td><%=r.getString("v.fuel_type")%></tD>
                            <td><%=r.getString("v.model")%></tD>
                             <td><%=status%></tD>
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