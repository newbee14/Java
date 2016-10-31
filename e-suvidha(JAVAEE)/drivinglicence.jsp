<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Concessionary Bus Pass</title>

<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/textbox.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/buspass.js"></script>
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

<style type="text/css">
.textbox1{font-size: 14px;list-style-type: none;border-bottom-style:double;border-bottom-color:#000000;border-left-style:none;border-right-style:none;border-top-style:none;background-color:#FFFFFF;}
</style>

</head>
<body  bgcolor="#567880">
<div class="header">
  <div class="bg1">
    <div class="container_16">
     <div class="grid_5">  <img src="images/logo.png" alt="" class="pngfix logo"/> </div>
      <div class="grid_11">
        <div class="top-menu pngfix">
          <ul class="sf-menu">
            <li> <a href="index.html">Edit Profile</a> </li>
            <li> <a href="aboutus.html">Change Password</a> </li>
            <li class="current"> <a href="services.html">Services</a>
              <ul>
              		<li> <a href="#">Aadhaar Card</a>
              		 </li>
                
                	<li><a href="#">Ration Card</a>
                		<ul>
                    		<li><a href="#">New Card</a></li>
                    		<li><a href="#">Duplicate Card</a></li>
                  		</ul>
                	</li>
                
                	<li><a href="#">VoterID Card</a>
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
                   					<li><a href="#">New Licence</a></li>
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
                    		<li><a href="#">New Pass</a></li>
                    		<li><a href="#">Reissue Pass</a></li>
                  		</ul>
                	</li>
                
                <li><a href="#">Farm Licence</a></li>
                
                <li><a href="#">Arm Licence</a>
                	<ul>
                    <li><a href="#">New Licence</a></li>
                    <li><a href="#">Renew Licence</a></li>
                  	</ul>
                </li>
                
                <li><a href="#">NO Objection Certificate</a>
                	<ul>
                    <li><a href="#">Property</a></li>
                    <li><a href="#">Vehicles</a></li>
                  </ul>
            	</li>
            	
            	</ul>
            </li>
            
            
             <li> <a href="portfolio.html">Download</a>
              <ul>
                <li><a href="#">Forms</a></li>
              </ul>
            </li>
           
            <li> <a href="contact.html">Contact Us</a> </li>
             <li> <a href="index.html">Logout</a> </li>
          </ul>
          <span class="rightcorner pngfix"></span> </div>
      </div></div></div></div>

	<form name="form1" action="" method="post" style="margin:0 100px  0 100px;">

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

        <input name="lic_no" type="text" class="textbox1" id="lic_no" value="">

Dt.

<input name="lic_dt"type="text" class="textbox1" id="date-pick" value="">

Issued by L.A

<input name="lic_la" type="text" class="textbox1" id="lic_la" value="">

I hereby apply for a Licence authorising me to drive the following vehicles ( Tick at the appropriate box)</font></td>

  </tr>

</tbody></table>

<font face="arial" size="2" color="black"><br>

<br>

</font>

<table width="100%">

<tbody><tr><td width="10%"><font face="Arial, Helvetica, sans-serif">A)</font>

  </td><td width="10%"><input name="motor1" type="checkbox" id="motor1" value="yes">

  

  </td><td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Motor cycle below 50cc</font></td></tr>

<tr><td width="10%"><font face="Arial, Helvetica, sans-serif">B)</font>

  </td><td width="10%"><input name="motor2" type="checkbox" id="motor2" value="yes">

  

  </td><td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Motor cycle above 50cc</font></td></tr>

<tr><td width="10%"><font face="Arial, Helvetica, sans-serif">C)</font>

  </td><td width="10%"><input type="checkbox" name="motor3" value="yes">

  

  </td><td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Light Motor Vehicle (includes Cars &amp; Jeeps)</font></td></tr>

<tr><td width="10%"><font face="Arial, Helvetica, sans-serif">D)</font>

  </td><td width="10%"><input name="tvehicle" type="checkbox" id="tvehicle" value="yes">

  

  </td><td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Transport Vehicle</font></td></tr>

<tr><td width="10%"><font face="Arial, Helvetica, sans-serif">E)</font>

  </td><td width="10%"><input name="rr" type="checkbox" id="rr" value="yes">

  

  </td><td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Road Roller</font></td></tr>

<tr><td width="10%"><font face="Arial, Helvetica, sans-serif">F)</font>

  </td><td width="10%"><input name="invalid" type="checkbox" id="invalid" value="yes">

  

  </td>
  <td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Invalid Carriage (incase of physically handicapped applicants)</font></td></tr>

<tr>
<td width="10%"><font face="Arial, Helvetica, sans-serif">G)</font>

  </td>
  <td width="10%"><input name="other" type="checkbox" id="other" value="yes">

  </td>
  <td width="80%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Any Other Category 

      <input name="spother" type="text" value="">

     (Specify the category in the box)</font></td>

</tr></tbody></table>

<hr width="100%" size="2">

<center>

  <font face="Arial, Helvetica, sans-serif" size="1" color="black">(Please fill the following particulars in CAPITAL Letters only)</font>

</center>

<font face="arial" size="2" color="black">1. &nbsp; FULL NAME (Leave one Space between first and last name)<br>



<input name="fullname" type="text" id="fullname" value="" size="45">

<br>

2. &nbsp; Son/Daughter/Wife of<br>

<input name="wifeof" type="text" id="wifeof" value="" size="45">

</font><font face="Arial, Helvetica, sans-serif"><br>

<br>

</font>

<table width="100%">

<tbody><tr>

<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">3. &nbsp; SEX</font></td>

<td width="40%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">MALE 

  <input name="r1" type="radio" value="male">

</font></td>

<td width="40%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">FEMALE 

  <input name="r1" type="radio" value="female">

</font></td>

</tr>

<tr>

<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">4. &nbsp; ADDRESS</font></td>

<td width="40%" align="CENTER"><font face="Arial, Helvetica, sans-serif" size="2" color="black">PERMANENT</font></td>

<td width="40%" align="CENTER"><font face="Arial, Helvetica, sans-serif" size="2" color="black">TEMPORARY</font></td>

</tr>

<tr>

<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">&nbsp;&nbsp;&nbsp;&nbsp; Door No.</font></td>

<td width="40%" align="CENTER"><input name="doorno" type="text" id="doorno" value="" size="35"></td>

<td width="40%" align="CENTER"><input name="doorno_temp" type="text" id="doorno_temp" value="" size="35"></td>

</tr>

<tr>

<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">&nbsp;&nbsp;&nbsp;&nbsp; Village/town/city</font></td>

<td width="40%" align="CENTER"><input name="village" type="text" id="village" value="" size="35"></td>

<td width="40%" align="CENTER"><input name="village_temp" type="text" id="village_temp" value="" size="35"></td>

</tr>

<tr>

<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">&nbsp;&nbsp;&nbsp;&nbsp; Mandal</font></td>

<td width="40%" align="CENTER"><input name="mandal" type="text" id="mandal" value="" size="35"></td>

<td width="40%" align="CENTER"><input name="village_temp" type="text" id="village_temp" value="" size="35"></td>

</tr>

<tr>

<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">&nbsp;&nbsp;&nbsp;&nbsp; District</font></td>

<td width="40%" align="CENTER"><input name="district" type="text" id="district" value="" size="35"></td>

<td width="40%" align="CENTER"><input name="district_temp" type="text" id="district_temp" value="" size="35"></td>

</tr>

<tr>

<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">&nbsp;&nbsp;&nbsp;&nbsp; Pincode</font></td>

<td width="40%" align="center"><font face="arial" size="35" color="black">

  <input name="pin" type="text" class="text" id="pin" value="" size="35">

</font></td>

<td width="40%" align="center"><font face="arial" size="2" color="black">

  <input name="pin_temp" type="text" class="text" id="pin_temp" value="" size="35">

</font></td>

</tr></tbody></table>

<table width="100%">

<tbody><tr>

<td width="20%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">
5.&nbsp; DATE OF BIRTH </font></td>

<td style="padding-left:87px;" ><input name="dateob" type="text" id="dob-pick" value="" size="35">

  </td>

</tr>

</tbody></table>

<table width="100%">

<tbody><tr>

<td width="40%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">6.&nbsp; EDUCATIONAL QUALIFICATION</font></td>

<td width="60%"><font face="Arial, Helvetica, sans-serif">&nbsp;&nbsp;&nbsp;

  <input name="edu" type="text" id="edu" value="" size="40">

</font></td>

</tr>

<tr>

<td width="40%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">7.&nbsp; IDENTIFICATION MARKS</font></td>

<td width="60%"><font face="Arial, Helvetica, sans-serif">1 &nbsp;

  <input name="idmarks1" type="text" id="idmarks" value="" size="40">

</font></td>

</tr>

<tr>

<td width="40%"><font face="Arial, Helvetica, sans-serif">&nbsp;</font></td>

<td width="60%"><font face="Arial, Helvetica, sans-serif">2  &nbsp;

  <input name="idmarks2" type="text" id="idmarks2" value="" size="40">

</font></td>

</tr>

<tr>

<td width="40%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">8. &nbsp;(Optional) : BLOOD GROUP &amp; Rh FACTOR</font></td>

<td width="60%"><strong><font face="Arial, Helvetica, sans-serif"><font color="black" size="2">

  <input name="bg" type="text" id="bg" value="" size="2">

</font></font></strong></td>

</tr>

</tbody></table>

<font face="Arial, Helvetica, sans-serif"><br>

<font size="2" color="black">

<b>Disclaimer</b> : The applicant is solely responsible for any medical complications that may 

arise due to wrong declaration of the Blood group.</font><br>

<br>

<font size="2" color="black">9.&nbsp; Particulars and date of every conviction which has been ordered to be endorsed on 

<input name="endorsed" type="text" class="textbox1" id="endorsed" value="" size="30">

<br>

any Licence held by the applicant.<br>

<br>

</font></font>

<font face="Arial, Helvetica, sans-serif" size="2" color="black">

10.&nbsp; Particulars of disqualification of the applicant from obtaining a Licence to drive,and reasons for it.  

<input name="dis_reason" type="text" class="textbox1" id="dis_reason" value="" size="30">

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

<input name="cer_no" type="text" class="textbox1" id="cer_no" value="">    

Dated

<input name="cer_dt" type="text" class="textbox1" id="dcd-pick" readonly="readonly" value="">

<br>

 Issued by

<input name="issuedby" type="text" class="textbox1" id="issuedby" value="" size="50">

<br>

</font>

<table width="100%">

<tbody><tr>

<td width="5%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">12.</font></td>

<td width="65%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">I have submitted along with my application for learner's Licence the written consent of parent/guardian</font></td>

<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Yes 

  <input name="re1" type="radio" value="lin_y">

</font></td>

<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">No 

  <input name="re1" type="radio" value="lin_n">

  </font></td>

</tr>

<tr>

<td width="5%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">13.</font></td>

<td width="65%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">I have submitted along with the application for learner's Licence/I enclose the medical fitness certificate</font></td>

<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Yes 

  <input name="re2" type="radio" value="enclose_y">

</font></td>

<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">No </font>

  <input name="re2" type="radio" value="enclose_n"></td>

</tr>

<tr>

<td width="5%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">14.</font></td>

<td width="65%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">I am exempted from the medical test under Rule 6 of the Central Motor Vehicle Rules 1989</font></td>

<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Yes 

  <input name="re3" type="radio" value="cmv_y">

</font></td>

<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">No 

  <input name="re3" type="radio" value="cmv_n">

</font></td>

</tr>

<tr>

<td width="5%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">15.</font></td>

<td width="65%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">I am exempted from primary test under rule 11(2) of the Central Motor Vehicle Rules 1989</font></td>

<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Yes 

  <input name="re4" type="radio" value="cmv_ry">

</font></td>

<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">No 

  <input name="re4" type="radio" value="cmv_rn">

</font></td>

</tr>

<tr>

<td width="5%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">16.</font></td>

<td width="65%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">I hereby declare that to the best of my knowledge and belief the particulars given above are true.</font></td>

<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">Yes 

  <input name="re5" type="radio" value="declare_y">

</font></td>

<td width="15%"><font face="Arial, Helvetica, sans-serif" size="2" color="black">No 

  <input name="re5" type="radio" value="declare_n">

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

      <input type="submit" name="Submit" value="Submit">

    </b></font></td>

  </tr>

</tbody>
</table>

</form>
	
	
	<div class="footer">
  <div class="container_16">
    <div class="footer_left">
      <p> &copy; Copyright 2009 All Rights Reserved by <a href="#">Suwidha.com</a></p>
    </div>
    <div class="footer_right">
      <p>Designed and Developed by <a href="http://www.nic.in">nic.in</a></p>
    </div>
  </div>
</div>

</body>
</html>