<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>e-Suwidha Center| Services</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript">jQuery(function(){ jQuery('ul.sf-menu').superfish(); });</script>
<!-- End menu css and js files here -->
<!--[if IE 6]>
<script type='text/javascript' src='js/dd_belated_png.js'></script>
<script>DD_belatedPNG.fix('.pngfix');</script>
<![endif]-->
</head>
<body>
 


<div class="subbg">
  <div class="subheader">
  <div>
      <form>
      
      <h1 style="text-align:right;color:#483D8B;font-variant:small-caps;margin-right:50px;">${sessionScope.usernameatt}</h1>
    
      </form>
      </div>
  
    <div class="container_16">
      <div class="grid_5"><img src="images/logo.png" alt="" class="pngfix logo"/></div>
     
      <div class="grid_11"> 
        <div class="top-menu pngfix">
          <ul class="sf-menu">
            <li> <a href="EditUserProfileServlet?id=1">Edit Profile</a> </li>
            <li> <a href="userchangepassword.jsp">Change Password</a> </li>
            <li class="current"> <a href="services.jsp">Services</a>
              <ul>
              		<li> <a href="AadharServlet">Aadhaar Card</a>
              		 </li>
                
                	<li><a href="#">Ration Card</a>
                		<ul>
                    		<li><a href="RationcardServlet">New Card</a></li>
                    		<li><a href="#">Duplicate Card</a></li>
                  		</ul>
                	</li>
                
                	<li><a href="#">VoterID Card</a>
                		<ul>
                    		<li><a href="VotercardServlet">New Card</a></li>
                    		<li><a href="#">Duplicate Card</a></li>
                  		</ul>
                	</li>
                
                	<li><a href="#">Driving Licence</a>
                		<ul>
                    		<li><a href="#">Learner's Licence</a></li>
                    		<li><a href="#">Permanent Licence</a>
                   				<ul>
                   					<li><a href="Driving Licence">New Licence</a></li>
                    				<li><a href="#">Duplicate Licence</a></li>
                  				</ul>
                    		</li>
                    	</ul>
                	</li>
                
                	<li><a href="#">Pan Card</a>
                		<ul>
                	    	<li><a href="#">New Card</a></li>
                    		<li><a href="#">Duplicate Card</a></li>
                  		</ul>
                	</li>
                
                	<li><a href="MarriagecertServlet">Marriage Certificate</a></li>
                
                	<li><a href="#">Bus Pass</a>
                		<ul>
                    		<li><a href="BuspassServlet">New Pass</a></li>
                    		<li><a href="BuspassServlet">Reissue Pass</a></li>
                  		</ul>
                	</li>
                
                <li><a href="#">Farm Licence</a></li>
                
                <li><a href="#">Arm Licence</a>
                	<ul>
                    <li><a href="ArmServlet">New Licence</a></li>
                    <li><a href="#">Renew Licence</a></li>
                  	</ul>
                </li>
                
                <li><a href="#">NO Objection Certificate</a>
                	<ul>
                    <li><a href="#">Property</a></li>
                    <li><a href="#">Vehicles</a></li>
                  </ul>
            	</li>
            	<li><a href="RTIformServlet">RTI</a></li>
            	</ul>
            </li>
            
            
             <li> <a href="userdownload.jsp">Download</a>
              <ul>
                <li><a href="#">Forms</a></li>
              </ul>
            </li>
           
            <li> <a href="usercontactus.jsp">Contact Us</a> </li>
             <li> <a href="LoginServlet?id=logout">Logout</a> </li>
          </ul>
          
          <span class="rightcorner pngfix"></span> </div>
          
      </div>
     
      <div class="grid_16">
    
        <div class="subtitle">
          <h1><b>SERVICES WHAT SUWIDHA OFFER!</b></h1>
          <p>WE WORK FOR YOUR SATISFACTION.</p>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="clear">&nbsp;</div>
<div class="container_16">
  <div class="grid_11 sepline">
    <div class="box-content services">
      <h2>Services</h2>
      <p><b>SUWIDHA has been conceived to facilitate citizen by capturing the input at a single point, defining a specified delivery date depending upon the type of service and accepting cash at the counter itself. </b></p>
      <br />
      <h3>Services Orientation</h3>
      <br />
      <h3>How Suwidha Works?</h3>
      
      
      
      
      <ol class="service_list">
        <li>The citizen approaches SUWIDHA Queue Counter and gets the Queue Token number.</li>
        <li>He waits for some time till his token number is displayed on the screen. On his turn at SUWIDHA Service Counter, he files his application.</li>
        <li>She/he is issued a receipt cum token number, which specifies the date of delivery of services. Each type of service has a pre-defined delivery time and system automatically calculates the service delivery date</li>
        <li>All kind of payments for the fees etc can be made at the SUWIDHA counter. This further saves the inconvenience of the citizen caused to visit either bank or treasury office to deposit such payments</li>
        <li>The application/case is then sent to the branch for action.</li>
        <li>In between the citizen can track the case with the help of SUWIDHA Token number through DialCITI (which is IVR based system) or website, wherever implemented.</li>
        <li>In order to ensure the timely delivery, the DC monitors the progress regularly so that citizen does not have to visit the office un-necessarily. </li>
      <li>The delivery of documents/processed case is made on the specified date. The delivery of the documents is also from SUWIDHA Delivery Counter and not from the branch. This way the branches are able to concentrate on the backend work rather than attending to the citizens and this further helps in improving government services and the citizen are freed from inconvenience /harassment.</li>
      </ol>
    </div>
  </div>
  
  <div class="grid_5">
    <div class="box-content">
      <ul class="subnav">
        <li><a href="AadharServlet">Aadhaar Card</a></li>
        <li><a href="RationcardServlet">Ration Card</a></li>
        <li><a href="VotercardServlet">VoterId Card</a></li>
        <li><a href="drivingServlet">Driving licenece</a></li>
        <li><a href="#">Pan Card</a></li>
        <li><a href="MarriagecertServlet">Marriage Certificate</a></li>
        <li><a href="BuspassServlet">Bus Pass</a></li>
        <li><a href="#">Farm Licence</a></li>
        <li><a href="ArmServlet">Arm Licence</a></li>
        <li><a href="#">No Objection Certificate</a></li>
        <li><a href="RTIformServlet">RTI(Right To Information)</a></li>
      </ul>
    </div>
  </div>
</div>
<div class="clear"></div>

 <%@ include file="footer.jsp"%>
</body>
</html>
