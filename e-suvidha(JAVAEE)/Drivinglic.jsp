<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enrolment Form</title>
<style type="text/css">
.textbox1{font-size: 14px;list-style-type: none;border-bottom-style:double;border-bottom-color:#000000;border-left-style:none;border-right-style:none;border-top-style:none;background-color:#FFFFFF;}
</style>
<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/textbox.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/drivingjs.js">
</script>
<script type="text/javascript">jQuery(function(){ jQuery('ul.sf-menu').superfish(); });</script>
<!-- End menu css and js files here -->
<!-- Begin featured slider css & js files -->
<link rel="stylesheet" type="text/css" media="all" href="css/featuredslider.css" />
<script type="text/javascript" src="js/script.js"></script>
<!-- End featured slider css & js files -->
<!--[if IE 6]>
<script type='text/javascript' src='js/dd_belated_png.js'></script>
<script>DD_belatedPNG.fix('.pngfix');</script>
<![endif]-->



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

<script type="text/javascript">
  $(window).ready(function(){
  $('#dcd-pick').datePicker({clickInput:true});
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
 
	<form name="enrolmentform" action="" method="post" style="margin:0 100px  0 100px;">
		<center>
    	<font color="black" size="4" face="arial"><b>APPLICATION FORM FOR Licence TO DRIVE A MOTOR VEHICLE<br>

               FORM - 4 (See rule - 14)</b></font>
				</center>

			<font face="arial" size="2" color="black"><b>To</b><br>

			The Licencing Authority,<br>


			</font>

			<table width="100%" border="0" cellspacing="0" cellpadding="0">

 				<tbody><tr>

    						<td>
							<font face="arial" size="2" color="black">I </font>
							<font face="arial" size="2" color="black">enclosed Learners Licence No

        					<input name="lic_no"  value="${dlidatt}" readonly="readonly" type="text" class="textbox1" >

							Dt.

							<input name="lic_dt"type="text" class="textbox1" id="date-pick" readonly="readonly"">

							Issued by L.A

							<input name="lic_la" type="text" class="textbox1" id="lic_la" >

							I hereby apply for a Licence authorising me to drive the following vehicles ( Tick at the appropriate box)
							</font></td>

  						</tr>

						</tbody></table>

							<font face="arial" size="2" color="black"><br>

							<br>

							</font>

							<table width="100%">

							<tbody><tr><td width="10%"><font face="Arial, Helvetica, sans-serif">A)</font>

  							</td><td width="10%"><input name="motor" type="radio" id="motor1">

  

  							</td><td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">
  							Motor cycle below 50cc
  							</font></td></tr>

							<tr><td width="10%"><font face="Arial, Helvetica, sans-serif">B)</font>

  							</td><td width="10%"><input name="motor" type="radio" id="motor2">

  

  							</td><td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Motor cycle above 50cc
  							</font></td></tr>

							<tr><td width="10%"><font face="Arial, Helvetica, sans-serif">C)</font>

  							</td><td width="10%"><input type="radio" name="motor"  id="motor3">

  

  							</td><td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Light Motor Vehicle (includes Cars &amp; Jeeps)
  							</font></td></tr>

						<tr>
								<td width="10%"><font face="Arial, Helvetica, sans-serif">D)</font>

  								</td><td width="10%"><input name="motor" type="radio" id="motor4">

  

  								</td><td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Transport Vehicle
  								</font></td>
  						</tr>

						<tr>
							<td width="10%"><font face="Arial, Helvetica, sans-serif">E)</font>

  							</td><td width="10%"><input name="motor" type="radio" id="motor5">

  

  							</td><td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Road Roller</font></td>
  						</tr>

						<tr>
							<td width="10%"><font face="Arial, Helvetica, sans-serif">F)</font>

  							</td><td width="10%"><input name="motor" type="radio" id="motor6" checked="checked"></td>
  							<td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">
  							Invalid Carriage (incase of physically handicapped applicants)
  							</font></td>
  						</tr>

						<tr>
							<td width="10%"><font face="Arial, Helvetica, sans-serif">G)</font></td>
  							<td width="10%"><input name="motor" type="radio" id="motor7" ></td>
  							<td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Any Other Category 

      						<input name="spother" type="text">

     						(Specify the category in the box)</font></td>

						</tr>
					</tbody>
				</table>

				<hr width="100%" size="2">

				<center>

  					<font face="Arial, Helvetica, sans-serif" size="1" color="black">(Please fill the following particulars in CAPITAL Letters only)</font>

				</center>

				<font face="arial" size="2" color="black">1. &nbsp; FULL NAME (Leave one Space between first and last name)<br>



				<input name="fullname" type="text" id="fullname" size="45">

				<br>

				2. &nbsp; Son/Daughter<br>

				<input name="sunof" type="text" id="wifeof" size="45">

				</font><font face="Arial, Helvetica, sans-serif"><br>

				<br>

				</font>

				<table width="100%">

					<tbody>
						<tr>

							<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">3. &nbsp;
							 SEX</font></td>

							<td width="40%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">MALE 

  							<input name="gender" type="radio" id="male" checked="checked">

							</font></td>

							<td width="40%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">FEMALE 

  							<input name="gender" type="radio" id="female">

							</font></td>

						</tr>

						<tr>

							<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">4. &nbsp; ADDRESS
							</font></td>

								<td width="40%" align="CENTER"><font face="Arial, Helvetica, sans-serif" size="2" color="black">
								PERMANENT
								</font></td>

								<td width="40%" align="CENTER"><font face="Arial, Helvetica, sans-serif" size="2" color="black">
								TEMPORARY</font></td>

						</tr>

						<tr>

							<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">&nbsp;&nbsp;&nbsp;&nbsp; 
							Door No.</font></td>

							<td width="40%" align="CENTER"><input name="doorno" type="text" id="doorno" size="35"></td>

							<td width="40%" align="CENTER"><input name="doorno_temp" type="text" id="doorno_temp" size="35"></td>

						</tr>

						<tr>

							<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">&nbsp;&nbsp;&nbsp;&nbsp; Village/town/city
							</font></td>

							<td width="40%" align="CENTER"><input name="village" type="text" id="village" size="35"></td>

							<td width="40%" align="CENTER"><input name="v" type="text" id="village_temp" size="35">
							</td>

						</tr>

						<tr>

							<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">&nbsp;&nbsp;&nbsp;&nbsp;
							 Mandal</font></td>

							<td width="40%" align="CENTER"><input name="mandal" type="text" id="mandal" size="35"></td>

							<td width="40%" align="CENTER"><input name="mandal_temp" type="text" id="village_temp"
							 size="35"></td>

						</tr>

						<tr>

							<td width="20%">
								<font face="Arial, Helvetica, sans-serif" size="2" color="black">&nbsp;&nbsp;&nbsp;&nbsp; District
								</font>
							</td>

							<td width="40%" align="CENTER"><input name="district" type="text" size="35">
							</td>

							<td width="40%" align="CENTER"><input name="district_temp" type="text" 
							size="35"></td>

						</tr>

						<tr>

							<td width="20%">
							<font face="Arial, Helvetica, sans-serif" size="2" color="black">&nbsp;&nbsp;&nbsp;&nbsp; Pincode
							</font></td>

							<td width="40%" align="CENTER"><input name="pin" type="text" maxlength="6" size="35">
							</td>

							<td width="40%" align="CENTER"><input name="pin_temp" type="text" maxlength="6" 
							size="35"></td>

						</tr>
						<tr>

						<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">5.&nbsp; DATE OF BIRTH </font></td>

						<td width="40%" align="CENTER"><input name="dateob" type="text" size="35" id="dob-pick" readonly="readonly">

  						</td>

					</tr>
					</tbody>
				</table>

				<table width="100%">

				

					<tbody>
						<tr>

							<td width="40%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">
							6.&nbsp; EDUCATIONAL QUALIFICATION</font></td>

							<td width="60%"><font face="Arial, Helvetica, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;

  							<input name="edu" type="text" size="40">

							</font></td>

						</tr>

						<tr>

							<td width="40%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">
							7.&nbsp; IDENTIFICATION MARKS</font></td>

							<td width="60%"><font face="Arial, Helvetica, sans-serif">1 &nbsp;

  							<input name="idmarks1" type="text" size="40">

							</font></td>

						</tr>

						<tr>

							<td width="40%"><font face="Arial, Helvetica, sans-serif">&nbsp;</font></td>

							<td width="60%"><font face="Arial, Helvetica, sans-serif">2  &nbsp;

  							<input name="idmarks2" type="text" size="40">

							</font></td>

						</tr>

						<tr>

							<td><font face="Arial, Helvetica, sans-serif" size="2" color="black">
							8.&nbsp; BLOOD GROUP  &amp; Rh FACTOR</font>
							<strong><font face="Arial, Helvetica, sans-serif"><font color="black" size="2">

  							<Select name="bg"><option>O+</option><option>A+</option>
					<option>B+</option><option>AB+</option><option>A-</option><option>B-</option><option>AB-</option><option>O-</option></Select>
				
  							
  							
  							

							</font></font></strong></td>
	
					    </tr>

					</tbody>
				</table>

				<font face="Arial, Helvetica, sans-serif"><br>

				<font size="2" color="black">

					<b>Disclaimer</b> : The applicant is solely responsible for any medical complications that may 

								arise due to wrong declaration of the Blood group.</font><br>

					<br>

				<font size="2" color="black">9.&nbsp; Particulars and date of every conviction which has been ordered to be endorsed on 

					<input name="endorsed" type="text" class="textbox1" size="30">

					<br>

					any Licence held by the applicant.<br>

					<br>

				</font></font>

				<font face="Arial, Helvetica, sans-serif" size="2" color="black">

					10.&nbsp; Particulars of disqualification of the applicant from obtaining a Licence to drive,and reasons for it.  

					<input name="dis_reason" type="text" class="textbox1" size="30">

					<br>

					<br>

				</font>

				<hr width="100%" size="2">

				<center>

  					<font face="Arial, Helvetica, sans-serif" size="4" color="black"><b>Applicant's declaration</b></font>

				</center>

				<br>

				<br>

				<font face="arial" size="2" color="black">

					11.&nbsp; I enclose the Driving Certificate No. 

					<input name="cer_no" type="text" class="textbox1">    

					Dated

					<input name="cer_dt" type="text" class="textbox1" id="dcd-pick" readonly="readonly">

					<br>

 					Issued by

					<input name="issuedby" type="text" class="textbox1" size="50">

					<br>

				</font>

				<table width="100%">

					<tbody>
						<tr>

							<td width="5%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">12.</font></td>

							<td width="65%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">I have submitted along with my application for learner's 
							Licence the written consent of parent/guardian</font></td>

							<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Yes 

  							<input  type="radio" id="reyes1" checked="checked">

							</font></td>

							<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">No 

  							<input type="radio" id="reno2">

  							</font></td>

						</tr>

						<tr>

							<td width="5%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">13.</font></td>

							<td width="65%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">I have submitted
							 along with the application for learner's Licence/I enclose the medical fitness certificate
							 </font></td>

							<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Yes 

  							<input type="radio"  id="reyes3" checked="checked">

							</font></td>

							<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">No </font>

  							<input type="radio" id="reno4"></td>

						</tr>

						<tr>

							<td width="5%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">14.</font></td>

							<td width="65%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">
							I am exempted from the medical test under Rule 6 of the Central Motor Vehicle Rules 1989</font></td>

							<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Yes 

  							<input type="radio" id="reyes5" checked="checked">

							</font></td>

							<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">No 

  							<input type="radio" id="reno6">

							</font></td>

						</tr>

						<tr>

							<td width="5%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">15.</font></td>

							<td width="65%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">
							I am exempted from primary test under rule 11(2) of the Central Motor Vehicle Rules 1989</font></td>

							<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black" >Yes 

  							<input type="radio" id="reyes7" checked="checked">

							</font></td>

							<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">No 

  							<input type="radio" id="reno8">

							</font></td>

						</tr>

						<tr>

							<td width="5%"><font face="Arial, Helvetica, sans-serif">&nbsp;</font></td>

							<td width="65%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">
							I hereby declare that to the best of my knowledge and belief the particulars given above are true.</font></td>

							<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Yes 

  							<input type="radio" id="reyes9" checked="checked">

							</font></td>

							<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">No 

  							<input type="radio"  id="reno10">

							</font></td>

						</tr>

				</tbody>
			</table>

			<font face="arial" size="2" color="black"><br>

				<b>Note:</b>Strike out whichever is inapplicable.<br>

				<br>
			</font>
		<table>
	<tbody>

  	<tr>

    	<td align="center"> <font color="black" size="2" face="Arial, Helvetica, sans-serif"><b>

      	<input type="button" name="Submit" value="Submit" onclick="checkRegister()">
      
    	</b></font></td>
 		<td>   
		<div id="registerarea" style="width:200px;color:red;"></div></td>
  	</tr>
  

</tbody>
</table>

</form>



	
 <%@ include file="footer.jsp"%>

</body>
</html>