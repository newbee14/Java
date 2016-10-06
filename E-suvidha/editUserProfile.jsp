<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Profile</title>

<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/textboxnew.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/editUserProfile.js"></script>
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

</head>
<body onload="yes()" bgcolor="#567880">
<div class="header">
  <div class="bg1">
    <div class="container_16">
     <div class="grid_5">  <img src="images/logo.png" alt="" class="pngfix logo"/> </div>
      <div class="grid_11">
        <div class="top-menu pngfix">
          <ul class="sf-menu">
           <li class="current"> <a href="EditUserProfileServlet?id=1">Edit Profile</a> </li>
            <li> <a href="userchangepassword.jsp">Change Password</a> </li>
            <li> <a href="services.jsp">Services</a>
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

	<form  action="" method="post" name="updateform" style="margin:0 100px  0 100px;">
		<img src="images/update.jpg" alt="" width="1000" />
			<table >
			
					
				<tr>
					<td width="100">NAME</td><td><Input type="text" size="30" value="${userinfoatt.name}" name="nm"  id="lightText"></td><td width="2"></td><td>FATHER'S NAME</td><td><Input type="text" value="${userinfoatt.fathername}" id="lightText" size="30" name="fn"></td>
				</tr>	
				
				<tr>
					<td>CONTACT</td><td><Input type="text" value="${userinfoatt.contact}" size="30" id="lightText" name="cn" maxLength="10"></td><td width="2"></td><td>EMAIL</td><td><Input type="text" size="30" id="lightText" value="${userinfoatt.email}" name="em"></td>
				</tr>
				<tr>
					<td>AGE</td><td><Input type="text" size="30" id="lightText" value="${userinfoatt.age}" name="ag"></td><td width="2"></td><td>USERID</td><td><Input type="text" value="${userinfoatt.userid}" readonly="readonly" size="30" id="lightText" name="uid"></td>
				</tr>
				<tr style="color:red;font-weight:BOLD">
					<td>ADDRESS</td><td>PERMANENT</td><td width="2"></td><td>TEMPORARY(if any)</td>
				</tr>
				<tr>
					<td>DOOR No.</td><td><Input type="text" size="30" id="lightText" value="${userinfoatt.doorno}" name="dn"></td><td width="2"></td><td><Input type="text" value="${userinfoatt.doorno1}" size="30" id="lightText" name="dn1"></td>
				</tr>
				<tr>
					<td>VILLAGE/CITY/TOWN</td><td><Input type="text" value="${userinfoatt.city}" size="30" id="lightText" name="ct"></td><td width="2"></td><td><Input type="text" value="${userinfoatt.city1}" size="30" id="lightText" name="ct1"></td>
				</tr>
				<tr>
					<td>MANDAL</td><td><Input type="text" value="${userinfoatt.mandal}" name="md" size="30" id="lightText"></td><td width="2"></td><td><Input type="text" size="30" id="lightText" value="${userinfoatt.mandal1}" name="md1"></td>
				</tr>
				<tr>
					<td>DISTRICT</td><td><Input type="text" size="30" id="lightText" value="${userinfoatt.district}" name="dt"></td><td width="2"></td><td><Input type="text" value="${userinfoatt.district1}" name="dt1" size="30" id="lightText"></td>
				</tr>
				<tr>
					<td>PINCODE</td><td><Input type="text" value="${userinfoatt.pincode}" size="30" id="lightText" name="pc" maxlength="6"></td><td width="2"></td><td><Input type="text" value="${userinfoatt.pincode1}" name="pc1" maxlength="6" size="30" id="lightText"></td>
				</tr>
				<tr>
					<td>DATE OF BIRTH</td><td><Input type="text"  value="${userinfoatt.date}" size="30" class="classText" name="db" id="date-pick" readonly="readonly" /></td>
				</tr>
				<tr>
					<td>PLACE OF BIRTH</td><td><Input type="text" value="${userinfoatt.place}" size="30" id="lightText" name="pb"  /></td>
				</tr>
				<tr>
					<td>BLOOD GROUP</td> <td><Select name="bg"><option>${userinfoatt.bloodgroup}</option><option>O+</option><option>A+</option>
					<option>B+</option><option>AB+</option><option>A-</option><option>B-</option><option>AB-</option><option>O-</option></Select></td>
				</tr>
				<tr></tr>	
				<tr>
					<td></td><td></td><td><Input type="button" value="UPDATE" onclick="checkValidations()"></td>
					
				</tr>	
				<tr>
   			<td>
   				<div id="updatearea" style="width:200px;color:red;"></div>
   			</td>
   		</tr>	
			</table>
		
	</form>
	
	

 <%@ include file="footer.jsp"%>
</body>
</html>