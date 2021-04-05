<%-- 
    Document   : Admin
    Created on : 9 Feb, 2021, 10:18:25 PM
    Author     : KishanVenky
--%>

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
      <li class="active"><a href="UserHome.jsp"><strong>Home</strong></a></li>
      <li><a href="ViewProfile.jsp"><strong>View Profile</strong></a></li>
      <li><a href="MyBooking.jsp"><strong>Book Cars</strong></a></li>
      <li><a href="MyBooking2.jsp"><strong>My Bookings</strong></a></li>
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
    
  </div>
</div>
 <div id="homepage" class="clear">
       <center>
            <%String username=(String)session.getAttribute("username");%>
            <h2>WELCOME TO <%=username%></h2>
         
            
            
            
        </center>
        
        
        
    </div>
       </div>
</div>


</body>
</html>