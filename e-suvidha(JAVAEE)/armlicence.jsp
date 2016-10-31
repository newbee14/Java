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
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/armlicence.js">
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

	<form name="armlicenceform" action="" method="post" style="margin:0 100px  0 100px;">
		<img src="images/arm.png" alt="" width="1000">
		<table>
			<tr>
				<td>NAME</td><td><input type="text" name="nm" id="lightText"></td>
				<td>FATHER's NAME</td><td><input type="text" name="fn" id="lightText"></td>
			</tr>
			<tr>
				<td>PLACE OF BIRTH</td><td><input type="text" name="pb" id="lightText"></td>
				<td>NATIONALITY</td><td><input type="text" name="na" id="lightText"></td>
			</tr>
			<tr>
				<td>PRESENT ADDRESS</td><td><input type="text" name="ad" id="lightText"></td>
				<td>NEAREST POLICE STATION OF PRESENT ADDRESS</td><td><input type="text" name="ps" id="lightText"></td>
			</tr>
			<tr>
				<td>MOBILE NO.</td><td><input type="text" name="mb" maxlength="10" id="lightText"></td>
				<td>EMAIL ID</td><td><input type="text" name="eid" id="lightText"></td>
			</tr>
			<tr>
				<td>OCCUPATION</td><td><input type="text" name="oc" id="lightText"></td>
				<td>LICENCE NO.</td><td><input type="text" name="ln" id="lightText" value="${armidatt}" readonly="readonly"></td>
			</tr>
			<tr>
				<td colspan="2"><b style="color:blue;font-size:15px;">WHETHER THE PROJECT HAS BEEN:</b></td> 
			</tr>
			<tr>
				<td>CONVICTED</td><td><input type="radio" checked="checked" name="Convicted" id="yes1">Yes</td> 
				<td><input type="radio" name="Convicted" id="no1">No</td> 
			</tr>
			<tr>
				<td>ORDERED TO EXECUTE A BOND UNDER CHAPTER VIII OF CrPC (2 of 1974) FOR KEEPING THE PEACE OR FOR GOOD BEHAVIOUR :</td>
				<td><input type="radio" name="Crpc" id="yes2" checked="checked">Yes</td> 
				<td><input type="radio" name="Crpc" id="no2">No</td>
			</tr>
			<tr>
				<td>PROHIBITED UNDER THE ARM ACT 1959, OR ANY OTHER LAW FROM POSSESSING ARMS AND AMMUNITION</td>
				<td><input type="radio" name="arm" id="yes3" checked="checked">Yes</td>
				<td><input type="radio" name="arm" id="no3">No</td>
			</tr>
			<tr>
				<td>WHETHER THE APPLICANT APPLIED FOR A LICENCE EARLIER ANYWHERE IN INDIA</td>
				<td><input type="radio" name="ind" id="yes4" checked="checked">Yes</td> 
				<td><input type="radio" name="ind" id="no4">No</td>
			</tr>
			<tr>
				<td>WHETHER THE APPLICANT's LICENCE EVER:</td>
			</tr>
			<tr>
				<td>SUSPENDED</td><td><input type="radio" name="sus" checked="checked" id="yes5">Yes</td>
				<td><input type="radio" name="sus" id="no5">No</td>
			</tr>
			<tr>
				<td>CACELLED</td><td><input type="radio" name="can1" checked="checked" id="yes6">Yes</td>
				<td><input type="radio" name="can1" id="no6">No</td>
			</tr>
			<tr>
				<td>REVOKED</td><td><input type="radio" name="rev" checked="checked" id="yes7">Yes</td>
				<td><input type="radio" name="rev" id="no7">No</td>
			</tr>
			<tr>
				<td>IF ANY OF THE ENTRY IN COL. NO. 9 TO 12 IS 'Yes', THEN GIVE DETAILS HERE BY WRITING THE PARTICULAR COLUMN NO.:</td>
				<td><textarea rows="5" cols="20" name="dt"></textarea></td>
			</tr>
			<tr>
				<td>TYPE OF LICENCE FOR WHICH LICENCE IS REQUIRED :</td>
				<td><input type="radio" name="can" id="revolver">Revolver</td>
				<td><input type="radio" name="can" checked="checked" id="rifle">Rifle</td>
				<td><input type="radio" name="can" id="pistol">Pistol</td>
				<td></td><td><input type="radio" name="can" id="gun">Gun</td>
			</tr>
			<tr>
				<td>NEED FOR THE WEAPON</td><td><input type="text" name="nd" id="lightText"></td>
				</tr>
			<tr>
				<td>ANY CLAIM FOR SPECIAL CONSIDERATION</td><td><input type="text" name="cl" id="lightText"></td>
			</tr>
			<tr></tr>
			<tr>
			 	<td><input type="button" value="Save Record" onClick="checkArmlicenceValidations()"/></td>
				<td><input type="reset" value="Reset Values"/></td>
			 </tr>
			
			 <tr>
				<td><div id="armlicencearea" style="width:200px;color:red;"></div></td>
			 </tr>
		</table>
	</form>
	 <%@ include file="footer.jsp"%>
</body>
</html>