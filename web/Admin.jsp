<%-- 
    Document   : Admin
    Created on : 22 Mar, 2021, 7:17:53 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
      <li><a href="index.html"><strong>Home</strong></a></li>
      <li class="active"><a href="Admin.jsp"><strong>ADMIN</strong></a></li>
      <li><a href="user.jsp"><strong>USER</strong></a></li>
      
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
<!-- ####################################################################################################### -->
<div class="wrapper row3">
  <div id="featured_slide_">
    <ul id="featured_slide_Content">
      <li class="featured_slide_Image"><a href="#"><img src="images/abc.jpeg" alt="" /></a>
        <div class="introtext">
          <h2>Abstract</h2>
          <p align='justify'>
            This Car Rental System project is designed to aid the car rental company to enable renting of cars through an online system. It helps the users to search for available cars view profile and book the cars for the time period. It has a user-friendly interface which helps the user to check for cars and rent them for the period specified. They could also make payment online. 
          </p>
        </div>
      </li>
      
      
      <li class="clear featured_slide_Image"><!-- Important - Leave This Empty --></li>
    </ul>
  </div>
  
</div>
<div class="wrapper row5">
  <div id="container" class="clear"> 
    <!-- ####################################################################################################### -->
    <div id="homepage" class="clear">
        <center>
             <center>
            
            <h2>ADMIN LOGIN</h2>
           <form action="AdminLAction.jsp" method="post">
          <table>
              <tr><th>UserName</th><td><input type="text" name="uname" required=""></tD></tr>
              <tr><th>Password</th><td><input type="password" name="pass" required=""></tD></tr>
              <tr><th></th><td><input type="submit" value="Login">
                  
                  </tD></tr>
          </table>
      </form>
            
            
            
        </center>
        </center>
        
        
    </div>
       </div>
</div>


</body>
</html>
