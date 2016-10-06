<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enrollment Form</title>

<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/textbox.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />

<link rel="stylesheet" type="text/css" media="all" href="css/featuredslider.css" />


<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/rationcard.js">
</script>
<script type="text/javascript">jQuery(function(){ jQuery('ul.sf-menu').superfish(); });</script>
<!-- End menu css and js files here -->
<!-- Begin featured slider css & js files -->
<link rel="stylesheet" type="text/css" media="all" href="css/featuredslider.css" />
<script type="text/javascript" src="js/script.js"></script>
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
<body  bgcolor="#567880">
<div class="header">
  <div class="bg1">
    <div class="container_16">
     <div class="grid_5">  <img src="images/logo.png" alt="" class="pngfix logo"/> </div>
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
      </div></div></div></div>

	<form name="rationcardform" action="" method="post" style="margin:0 100px  0 100px">
	<img src="images/4.jpg" alt="" width="1000"/>
		<table >
			<tr>
				<td >FULL NAME</td><td><input type="text" name="nm" size="30" id="lightText"></td><td></td><td></td>
				<td>FATHER's NAME</td><td><input type="text" name="fn" size="30" id="lightText"></td> 
			</tr>
			
			<tr>
				<td><h4 style="color:black">ADDRESS</h4></td>
			</tr>
			<tr>
				<td>DOOR No.</td><td><Input type="text" name="dn" id="lightText" size="30"></td><td></td><td></td>
			
				<td>VILLAGE/CITY/TOWN</td><td><Input type="text" name="ct" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>MANDAL</td><td><Input type="text" name="md" id="lightText" size="30"></td><td></td><td></td>
			
				<td>DISTRICT</td><td><Input type="text" name="dt" id="lightText" size="30"></td>
			</tr>
			
			<tr>
				<td >PINCODE</td><td><Input type="text" name="pc" id="lightText" maxlength="6" size="30" style="margin-right:180px;"></td><td></td><td></td>
				
				<td>RATIONCARD NO</td><td><Input type="text" name="no" value="${ridatt}" id="lightText" readonly="readonly"  size="30"></td>
			</tr>
		</table>
	
		<table style="color:black">
			<tr style="font-weight:bold;">
				<th>S No.</th><th>Name in block letters</th><th>Nationality</th><th>Age</th><th>Father's Name</th><th>Relation With Applicant</th>
			</tr>
			
			<tr>
				<td>1</td><td><input type="text" name="nm1"></td> <td><Input type="text" name="na1"></td> <td><Input type="text" name="ag1"></td> <td><Input type="text" name="fn1"></td><td><Input type="text" name="rl1"></td>
			</tr>
			<tr>
				<td>2</td><td><input type="text" name="nm2"></td> <td><Input type="text" name="na2"></td> <td><Input type="text" name="ag2"></td> <td><Input type="text" name="fn2"></td><td><Input type="text" name="rl2"></td>
			</tr>
			<tr>
				<td>3</td><td><input type="text" name="nm3"></td> <td><Input type="text" name="na3"></td> <td><Input type="text" name="ag3"></td> <td><Input type="text" name="fn3"></td><td><Input type="text" name="rl3"></td>
			</tr>
			
			</table>
			<table style="text-align:justify;font-size:15px;font-family:Lucida Sans;">
			<tr>
				<td><b style="color:blue;" >Declaration</b></td>
			</tr>
			<tr>
				<td style="color:black">Hereby solemnly declare that:Information given in this form is correct.Members including in column No. 4 above do(es) not draw specified food/articles from defence force or hold any
					Consumer card in his/their name or in any of the names mentioned above and their name(s) is/are not included in any
					other consumer card.I am Gas/K. oil users. 1 2 Cylinders
					I and other members included at Col. 4 are likely to stay in Jalandhar permanently.The members mentioned in col. 5 above are still residing at the given address and names are the same in the lost card.</td>
			</tr>
 			<tr>
 				<td style="font-size:13px;font-family:Lucida Sans;">EMAIL<Input type="text" name="eid" id="lightText" size="30"></td>
			</tr>
			<tr></tr>
			<tr>
			 	<td><input type="button" value="Save Record" onClick="checkRationcardValidations()"/></td>
				<td><input type="reset" value="Reset Values"/></td>
			 </tr>
			
			 <tr>
				<td><div id="rationcardarea" style="width:200px;color:red;font-size:13px;font-family:Lucida Sans;"></div></td>
			 </tr>
</table>
</form>
	

 <%@ include file="footer.jsp"%>
</body>
</html>