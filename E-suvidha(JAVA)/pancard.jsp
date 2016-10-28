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
<script type="text/javascript" src="js/pancard.js">
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

	<form name="pancardform" action="" method="post" style="margin:50px 100px  0 100px">

		<table >
		<tr>
				<td colspan=2 style="color:#A52A2A;"><b>STATUS OF APPLICANT</b>
				<select name="status" style="width:200px;height:25px;" id="status"><option>Individual</option>
				<option>Firm</option>
				<option>Company</option>
				<option>Government</option>
				</select></td>
				</tr>
				<tr>
				<td>DATE</td><td><input type="text" name="date" id="date-pick" size="30" style="width:52%;" class="classText" readonly="readonly"></td>
				<td>ENROLEMENT NUMBER</td><td><input type="text" name="pn"  value="${pidatt}" readonly="readonly" id="lightText" size="30" ></td>
			
			</tr>
			<tr>
				<td colspan=2>1. &nbsp;FULL NAME</td></tr>
				<tr><td>Last Name</td><td><input type="text" name="lnm" size="30" id="lightText"></td></tr>
				<tr><td> First Name</td><td><input type="text" name="fnm" size="30" id="lightText"></td></tr>
				<tr><td> Middle Name</td><td><input type="text" name="mnm" size="30" id="lightText"></td>
				</tr>
			<tr>
				<td colspan=2 >2. &nbsp;NAME YOU WOULD LIKE PRINTED ON THE CARD</td><td><input type="text" name="nm" size="30" id="lightText"></td></tr>
                <tr><td colspan=2>3. &nbsp;HAVE YOU EVER BEEN KNOWN BY ANY OTHER NAME</td>
                <td>
                <input type="radio" id="r1" name="onm" value="Yes"  required/>Yes</td>
                <td>
        		<input type="radio" id="r2" name="onm" value="No" required />No
        		</td>
        	</tr>
        	<tr>
          	<td colspan=2>if yes,Please give that other name</td>
				<tr><td>Last Name</td><td><input type="text" name="olnm" size="30" id="lightText"></td>
					<td> First Name</td><td><input type="text" name="ofnm" size="30" id="lightText"></td>
					<td> Middle Name</td><td><input type="text" name="omnm" size="30" id="lightText"></td>
				</tr>
				<tr>
			 <td>4. &nbsp;Gender</td>
             <td><input type="radio" id="r3" name="gender" value="Male"  required/>Male
        		  <input type="radio" id="r4" name="gender" value="Female" required />Female</td></tr>
				<tr>
				<td colspan=2>5. &nbsp; Date Of Birth</td><td><input name="dob"type="text" class="textbox1" size="30" id="date-pick"></td>
				</tr>
				<tr>
				<td colspan=2>6. &nbsp;FATHER's NAME</td><td><input type="text" name="fn" size="30" id="lightText"></td> 
			</tr>
			
			<tr>
				<td>7. &nbsp;ADDRESS</td>
			</tr>
			<tr>
				<td>FLAT/DOOR/BLOCK No.</td><td><Input type="text" name="dn" id="lightText" size="30"></td>
				<td>NAME OF PREMISES/BUILDING/VILLAGE</td><td><Input type="text" name="village" id="lightText" size="30"></td>
			</tr>
			<tr>
					<td>ROAD/STREET/LANE/POST OFFICE</td><td><Input type="text" name="street" id="lightText" size="30"></td>
					<td>AREA/LOCALITY/TALUKA/SUB-DIVISION</td><td><Input type="text" name="area" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>TOWN/CITY/DISTRICT</td><td><Input type="text" name="city" id="lightText" size="30"></td>
				<td>STATE/UNION TERRITORY</td><td><select name="state"><option>Punjab</option></select></td>
			</tr>
			<tr>
				<td >PINCODE</td><td><Input type="text" name="pc" id="lightText" maxlength="6" size="30" style="margin-right:180px;"></td>
				<td>COUNTRY NAME</td><td><select id="cn"><option>India</option></select></td>
			</tr>
			<tr>
				<td>OFFICE ADDRESS</td>
			</tr>
			<tr>
			<td>NAME OF OFFICE</td><td><Input type="text" name="onm" id="lightText" size="30"></td>
				<td>FLAT/DOOR/BLOCK No.</td><td><Input type="text" name="odn" id="lightText" size="30"></td>
				<td>NAME OF PREMISES/BUILDING/VILLAGE</td><td><Input type="text" name="ovillage" id="lightText" size="30"></td>
			</tr>
			<tr>
					<td>ROAD/STREET/LANE/POST OFFICE</td><td><Input type="text" name="ostreet" id="lightText" size="30"></td>
					<td>AREA/LOCALITY/TALUKA/SUB-DIVISION</td><td><Input type="text" name="oarea" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>TOWN/CITY/DISTRICT</td><td><Input type="text" name="ocity" id="lightText" size="30"></td>
				<td>STATE/UNION TERRITORY</td><td><select name="ostate"><option></option></select></td>
			</tr>
			<tr>
				<td >PINCODE</td><td><Input type="text" name="opc" id="lightText" maxlength="6" size="30" style="margin-right:180px;"></td>
				<td>COUNTRY NAME</td><td><select id="ocn"><option></option></select></td>
			</tr>
	
			<tr>
				<td colspan=2>8. &nbsp;ADDRESS FOR COMMUNICATION </td>
				<td>
				<input type="radio" id="r5" name="add" value="residential"  required/>Residential
        		<input type="radio" id="r6" name="add" value="Office" required />Office
        		</td>
			</tr>
			
			<tr>
				<td colspan=2>9. &nbsp;TELEPHONE NO</td>
				<td><Input type="text" name="mobile" max="10"></td>
			</tr>
			<tr>
				<td>10. &nbsp;EMAIL ID</td><td><input type="text" name="email"></td> 
			</tr>
			<tr>
				<td colspan=2>11. &nbsp;AADHAR CARD NO(If alloted)</td><td><input type="text" name="uniqueid"></td> 
			</tr>
			<tr>
				<td colspan=2>12. &nbsp;SOURCE OF INCOME</td>
				<tr><td colspan=2>A) <input type="checkbox" name="salary"/>Are you a salaried employee?</td></tr>
				<tr><td  >B) <input type="checkbox" name="business"/>if you are in business/profession, indicate nature of business or profession</td>
				<td><select name="tob">
				<option>--Please Select--</option>
				<option>Medical Profession and Business(01)</option>
				<option>Engineering(02)</option>
				<option>Architecture(03)</option>
				<option>Charted Accountant(04)</option>
				<option>Interior Decoration(05)</option>
				<option>Others</option>
				</select></td></tr>
				<tr>
				<td colspan=2>C) <input type="checkbox" name="other"/>Are you a salaried employee?</td>
				</tr>
			</tr>
			<tr>
				<td colspan=2>13. &nbsp;DOCUMENT ENCLOSED</td>
			</tr>
			<tr>
				<td colspan=7>I/We have enclosed <select name="document">
				<option>--Please Select--</option>
				<option>Copy of ration card</option>
				<option>opy of PassportC</option>
				<option>Copy of Driving Licence</option>
				<option>Copy of Arm Licence</option>
				<option>Copy of Aadhar Card</option></select> 
				
				as proof of identity and <select name=identity>
				<option>--Please Select--</option>
				<option>Copy of elctricity bill</option>
				<option>Copy of credit card statement</option>
				<option>Copy of Bank account statement</option>
				<option>Copy of Passport</option>
				<option>Copy of Driving Licence</option>
				<option>Copy of Aadhar Card</option>
				</select> as proof of address <select name="paddress">
				<option>--Please Select--</option>
				<option>Copy of Birth Certificate</option>
				<option>Copy of pension payment order</option>
				<option>Copy of matriculation certificate</option>
				<option>Copy of Passport</option>
				<option>Copy of Driving Licence</option>
				<option>Copy of Marriage Certificate</option>
				</select> as proof of date of birth</td>
			</tr>
			<tr>
			<td colspan=7>14. &nbsp;I/We <input type="text" size=30/> ,in the capacity of 
			<select name="capacity"><option>--Please Select--</option>
				<option>Himself/herself</option>
				<option>Reprentative Assesses</option>
				</select>  do herby declare that what is stated above is truth to the best of my/our information and belief.</td>
			</tr>
			<tr></tr>
			<tr>
			<td></td><td></td>
			<td><input type="button" value="Save Record" onclick="checkPanCardValidations()"/></td>
			<td><input type="reset" value="Reset" /></td>
			</tr>
			
			</table>
</form>
	

 <%@ include file="footer.jsp"%>
</body>
</html>