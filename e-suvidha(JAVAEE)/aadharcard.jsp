<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enrolment Form</title>

<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/textbox.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/AadhaarCard.js"></script>
<link rel="stylesheet" type="text/css" href="css/datePicker.css" />
<script src="js/jquery-1.6.1.min.js" type="text/javascript"></script>
<script src="js/jquery.datePicker-min.js" type="text/javascript"></script>
<!--<script type="text/javascript" src="demo/js/jquery.bgiframe.min.js"></script>-->

<script type="text/javascript">
  $(window).ready(function(){
  $('#date-pick').datePicker({clickInput:true});
});
</script>

<script type="text/javascript">
  $(window).ready(function(){
  $('#dob-pick').datePicker({clickInput:true});
});
</script>

</head>
<body  bgcolor="#567880" >
<div class="header">
  <div class="bg1">
    <div class="container_16">
     <div class="grid_5">  <img src="images/logo.png" alt="" class="pngfix logo"/> </div>
      <div class="grid_11">
        <div class="top-menu pngfix">
          <ul class="sf-menu">
            <li> <a href="EditUserProfileServlet?id=1">Edit Profile</a> </li>
            <li> <a href="userchangepassword.jsp">Change Password</a> </li>
            <li class="current"> <a href="">Services</a>
              <ul>
              		<li class="current"> <a href="AadharServlet">Aadhaar Card</a>
              		 </li>
                
                	<li><a href="#">Ration Card</a>
                		<ul>
                    		<li><a href="RationcardServlet">New Card</a></li>
                    		<li><a href="duplicaterationcad.jsp">Duplicate Card</a></li>
                  		</ul>
                	</li>
                
                	<li><a href="VotercardServlet">VoterID Card</a>
                		<ul>
                    		<li><a href="#">New Card</a></li>
                    		<li><a href="#">Duplicate Card</a></li>
                  		</ul>
                	</li>
                
                	<li><a href="#">Driving Licence</a>
                		<ul>
                    		<li><a href="#">Learner's Licence</a></li>
                    		<li><a href="#">Permanent Licence</a>
                   				<ul>
                   					<li><a href="drivingServlet">New Licence</a></li>
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
                
                	<li><a href="#">Marriage Certificate</a></li>
                
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
            
            
             <li> <a href="portfolio.html">Download</a>
              <ul>
                <li><a href="#">Forms</a></li>
              </ul>
            </li>
           
            <li> <a href="usercontactus.jsp">Contact Us</a> </li>
             <li> <a href="index.jsp">Logout</a> </li>
          </ul>
          <span class="rightcorner pngfix"></span> </div>
      </div></div></div></div>

	<form name="aadharform" action="AadharServlet" method="post" enctype="multipart/form-data" style="margin:0 100px  0 100px;">
	<img src="images/enrollment.png" alt="" width="1000" />
	
		<table style="color:#950000;margin-top:40px;">
			<tr>
				<td>DATE</td><td><input type="text" name="d" id="date-pick" size="20" style="width:92%;" class="classText" readonly="readonly"></td><td></td>
				<td>ENROLEMENT NUMBER</td><td><input type="text" name="en"  value="${eidatt}" readonly="readonly" id="lightText" size="30" ></td>
			</tr>
			<tr>
				<td><h3>Part A-Primary Details</h3></td>
			</tr>
			<tr>
				<td>NAME</td><td><input type="text" name="nm" id="lightText" size="30"></td><td></td>
			
				<td>FATHER's NAME</td><td><input type="text" name="fn" id="lightText" size="30"></td>
			</tr>
			
			<tr>
				<td>MOTHER's NAME</td><td><input type="text" name="mn" id="lightText" size="30"></td><td></td>
			
				<td>DATE OF BIRTH</td><td><input type="text" name="db" id="dob-pick" class="classText" style="width:92%;" readonly="readonly"></td>
			</tr>

			<tr>
				<td>GENDER</td><td>MALE<input type="radio" name="gn" checked="checked" id="male">FEMALE<input type="radio" name="gn" id="female"></td>
			</tr>

			<tr>
				<td><h4>ADDRESS</h4></td>
			</tr>
			<tr>
				<td>DOOR No.</td><td><Input type="text" name="dn" id="lightText" size="30"></td><td></td>
			
				<td>VILLAGE/CITY/TOWN</td><td><Input type="text" name="ct" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>MANDAL</td><td><Input type="text" name="md" id="lightText" size="30"></td><td></td>
			
				<td>DISTRICT</td><td><Input type="text" name="dt" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>PINCODE</td><td><Input type="text" name="pc" id="lightText" maxlength="6" size="30"></td>
			</tr>
				
			<tr>
				<td><h3>Part-B Additional Information</h3></td>
			</tr>
			
			<tr>
				<td>MOBILE</td><td><Input type="text" name="mb" id="lightText" maxlength="10" size="30"></td><td></td>
				<td>EMAIL</td><td><Input type="text" name="eid" id="lightText" size="30"></td>
			</tr>
			<tr>
			<td><h3>Part C-Uploading Part</h3></td>
			</tr>
			<tr>
				<td>ID PROOF<input type="file" name="idp"  ></td></tr>
			<tr><td>ADDRESS PROOF<input type="file" name="adp"  size="30"></td>
			
			<tr></tr>	<tr></tr>	
		     <tr>
		     	<td></td>
			 	<td><input type="button" value="Save Record" onClick="checkAadhaarValidations()"/></td>
				<td><input type="reset" value="Reset Values"/></td>
			 </tr>
			
			 <tr>
				<td><div id="aadhararea" style="width:200px;color:red;"></div></td>
			 </tr>
		</table>
   
</form>
	
<div class="footer">
  <div class="container_16">
     <div class="footer_left">
      <p> &copy; Copyright 2014 All Rights Reserved by <a href="#">Suwidha.com</a></p>
    </div>
    <div class="footer_right">
      <p>Designed and Developed by :Shubhangi Pahwa & Mandeep Kaur</p>
    </div>
  </div>
</div>
</body>
</html>