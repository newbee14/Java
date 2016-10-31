<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-SuwidhaCentre|Register</title>
<link rel="stylesheet" type="text/css" media="all" href="css/reset.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/datePicker.css" />
<script type="text/javascript" src="js/registerscript.js"></script>
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
<body onload="yes()" bgcolor="#567880">
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
            <li> <a href="aboutus.jsp">About Us</a> </li>
		   <li > <a href="contact.jsp">Contact Us</a> </li>
           <li class="current"> <a href="register.jsp">Sign Up</a> </li>
           
          </ul>
          <span class="rightcorner pngfix"></span> </div>
      </div>
      <div class="grid_16">
        <div class="subtitle">
          <h1><b>REGISTER HERE!</b></h1>
        </div>
      </div>
    </div>
  </div>
</div>

	<form style="background-color:#FEFCFF" action="" method="post" name="registerform">
		
			<table style="margin-left:150px; color:#00008B">
			
				<tr>
					
				</tr>		
				<tr>
					<td>NAME</td><td><Input type="text" name="nm"></td><td height="100%">                               USERNAME</td><td><Input type="text" name="un"></td>
				</tr>	
				<tr>
					<td>FATHER'S NAME</td><td><Input type="text" name="fn"></td><td>                               PASSWORD</td><td><Input type="password" name="pw"></td>
				</tr>
				<tr>
					<td>CONTACT</td><td><Input type="text" name="cn" maxLength="10"></td><td>                               EMAIL</td><td><Input type="text" name="em"></td>
				</tr>
				<tr>
					<td>AGE</td><td><Input type="text" name="ag"></td><td>       USER ID</td><td><Input type="text" value="${userridatt}" readonly="readonly" name="uid"></td>
					       
				
				</tr>
				
				<tr>
					<td>SEX</td><td><Input type="radio" name="sx" id="male" checked="checked">MALE        
					<Input type="radio" name="sx" id="female">FEMALE</td>
				</tr>
				<tr style="color:blue;font-weight:BOLD">
					<td>ADDRESS</td><td>PERMANENT</td><td>TEMPORARY(if any)</td>
				</tr>
				<tr>
					<td>DOOR No.</td><td><Input type="text" name="dn"  size="30"></td><td><Input type="text" name="dn1" size="30"></td>
				</tr>
				<tr>
					<td>VILLAGE/CITY/TOWN</td><td><Input type="text" name="ct" size="30"></td><td><Input type="text" name="ct1" size="30"></td>
				</tr>
				<tr>
					<td>MANDAL</td><td><Input type="text" name="md" size="30"></td><td><Input type="text" name="md1" size="30"></td>
				</tr>
				<tr>
					<td>DISTRICT</td><td><Input type="text" name="dt" size="30"></td><td><Input type="text" name="dt1" size="30"></td>
				</tr>
				<tr>
					<td>PINCODE</td><td><Input type="text" name="pc" maxlength="6" size="30"></td><td><Input type="text" name="pc1" maxlength="6" size="30"></td>
				</tr>
				<tr>
					<td>DATE OF BIRTH</td><td><Input type="text"  name="db" id="date-pick" " /></td>
				</tr>
				<tr>
					<td>PLACE OF BIRTH</td><td><Input type="text"  name="pb"  /></td>
				</tr>
				<tr>
					<td>BLOOD GROUP</td> <td><Select name="bg"><option>O+</option><option>A+</option>
					<option>B+</option><option>AB+</option><option>A-</option><option>B-</option><option>AB-</option><option>O-</option></Select></td>
				</tr>	
				<tr>
					<td></td><td></td><td><Input type="button" value="SUBMIT" onclick="checkRegister()"></td>
					<td><Input type="reset" value="RESET"></td>
					<td>
   				<div id="registerarea" style="width:200px; color:red"></div>
   			</td>
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