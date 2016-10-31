<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-Suwidha Center | About Us</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" media="all" href="css/reset.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/common.js"></script>
</head> 
<body onload="getNews();">
<div class="subbg">
  <div class="subheader">
    <div class="container_16">
      <div class="grid_5"> <img src="images/logo.png" alt="" class="pngfix logo"/> </div>
      <div class="grid_11">
        <div class="top-menu pngfix">
          <ul class="sf-menu">
         <li > <a href="index.jsp">Home</a> </li>
         <li> <a href="viewservices.jsp">Services</a> </li>
            <li> <a href="download.jsp">Download</a></li>
            <li class="current"> <a href="aboutus.jsp">About Us</a> </li>
		   <li> <a href="contact.jsp">Contact Us</a> </li>
           <li> <a href="register.jsp">Sign Up</a> </li>
            
          </ul>
          <span class="rightcorner pngfix"></span> </div>
      </div>
      <div class="grid_16">
        <div class="subtitle">
          <h1><b>ABOUT SUWIDHA SERVICES</b></h1>
          <p>TO CLARIFY WHAT WE PROVIDE!</p>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="clear">&nbsp;</div>
<div class="container_16">
  <div class="grid_11 sepline">
    <div class="box-content">
      <h2> About Us</h2>
      <p>Governments world over have been criticized for not delivering the services for which they were<br/> created. The giant machinery remains at work with virtually no output. In the past, several attempts</br> have been made to improve its efficiency by introducing Information Technology (IT), however, the</br> dividends have been minimal and the plight of the citizen remains the same. The citizen wonders at the</br> very sight of the digital gadgets used in government offices. The computers are planted with great</br> expectations of creating miracles, but the whole effort turns out to be mere hype and internal data processing.</p>
      
     <p>SUWIDHA has been conceived to facilitate citizen by capturing the input at a single point, defining a specified delivery date depending upon the type of service and accepting cash at the counter itself. 

Following are the objectives of SUWIDHA Project:<br/></p>

 <ul class="list">
        <li>To provide service level convenience to the citizens </li>
        <li>Re-engineering of Government Processes to provide quality & timely services to citizens.</li>
        <li>To integrate SUWIDHA Back-end Services (SUBS) with front-end to reduce the time of delivery</li>
        <li>Linkage with Web based Citizens IT Interface (WebCITI) or Dialup based Citizens IT Interface (DialCITI) to know the latest information about their services.</li>
        <li>To standardize the processes throughout the state.</li>
        
      </ul>   
    </div>
  </div>
  <div class="grid_5">
    <div class="box-content">
      
      <br />
      <h3>News Updates</h3>
      <div id="newsarea">
    
      </div>
    </div>
    
  </div>
</div>

<div class="clear"></div>
 <%@ include file="footer.jsp"%>
</body>
</html>
