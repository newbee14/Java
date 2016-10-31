<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>e-SuwidhaCentre|Enrollment Form</title>

<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/textbox.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/voter.js">
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
  $('#date-pick2').datePicker({clickInput:true});
});
</script>
<script type="text/javascript">
  $(window).ready(function(){
  $('#date-pick1').datePicker({clickInput:true});
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

	<form name="voterform" action="" method="post" style="margin:0 100px  0 100px;">
		<img src="images/voter1.bmp" alt="" width="1000">
		<table style="margin-top:40px;">
		<tr>
			<td>NAME</td><td><input type="text" name="nm" id="lightText" size="30"></td><td></td>
			<td>SURNAME</td><td><input type="text" name="sn" id="lightText" size="30"></td>
		</tr>
		<tr>
			<td>FATHER's NAME</td><td><input type="text" name="fn" id="lightText" size="30"></td><td></td>
			<td>MOTHER's NAME</td><td><input type="text" name="mn" id="lightText" size="30"></td>
		</tr>
		<tr>
			<td>DATE OF BIRTH</td><td><input type="text" name="db" id="dob-pick" readonly="readonly" style="width:82%;" class="classText"></td><td></td>
			<td>GENDER</td>
				<td><input type="radio" name="Gender" id="male" checked="checked">MALE<input type="radio" name="Gender" id="female">FEMALE</td> 
		</tr>
		<tr>
			<td>PLACE OF BIRTH</td><td><textarea rows="5" cols="23" name="pb"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><b style="color:black;font-size:15px;">PRESENT ORDINANCE RESIDENCE(Full address)</b></td>
		</tr>
		<tr>
			<td>DOORNO</td><td><input type="text" name="dn" id="lightText" size="30"></td><td></td>
			<td>STREET/AREA/LOCALITY/MOHALLA/ROAD</td><td><input type="text" name="st" id="lightText" size="30"></td>
		</tr>
		<tr>
			<td>POST OFFICE</td><td><input type="text" name="po" id="lightText" size="30"></td><td></td>
			<td>TEHSIL</td><td><input type="text" name="tl" id="lightText" size="30"></td>
		</tr>
		<tr>
			<td>PINCODE</td><td><input type="text" name="pc" id="lightText" maxlength="6" size="30"></td><td></td>
			<td>CITY</td><td><input type="text" name="ct" id="lightText" size="30"></td>
		</tr>
		<tr>
			<td>DISTRICT</td><td><input type="text" name="dst" id="lightText" size="30"></td><td></td>
			<td>VOTER NO</td><td><input type="text" name="vn" id="lightText" value="${vidatt}" readonly="readonly" size="30"></td>
		</tr>
	   </table>
	 <table>
		<tr>
			<td ><h4 style="color:blue">DETAILS OF MEMBER(s) OF APPLICANT's FAMILY ALREADY INCLUDED IN THE ELECTORAL ROLE OF THE CONSTITUTENCY:</h4></td>
		</tr>
	</table>
	<table border="2" style="color:black">
		<tr style="font-weight:bold;">
			<th>S No.</th> <th>NAME</th>
			<th>RELATIONSHIP WITH THE  APPLICANT</th><th>PART NO OF THE ROLE OF CONSTITUENCY</th> <th>ELECTOR"S PHOTO IDENTITY CARD NO"</th>
			<th>MOBILE NO.</th>
		</tr>
		<tr>
			<td>1</td> <td><input type="text" name="nm1"></td>
			<td width="200"><input type="text" name="rl1"></td>
			<td width="200"><input type="text" name="pn1"></td>
			<td width="200"><input type="text" name="id1"></td>
			<td><input type="text" name="mb1" maxlength="10"></td>
		</tr>
		<tr>
			<td>2</td> <td><input type="text" name="nm2"></td>
			<td><input type="text" name="rl2"></td>
			<td><input type="text" name="pn2"></td>
			<td><input type="text" name="id2"></td>
			<td><input type="text" name="mb2" maxlength="10"></td>
		</tr>
	</table>
	<table>
		<tr>
			<td style="color:black">DECLARATION</td>
		</tr>
		<tr>
			<td>I HEREBY DECLARE THAT</td>
		</tr>
		<tr>
			<td style="font-align:justify;"> I AM A CITIZEN OF INDIA.I AM THE ORDINARY RESIDENT AT THE ADDRESS SINCE DATE<input type="text" name="dt" readonly="readonly" id="date-pick" class="classText">.
			I HAVE NOT APPLIED FOR THE INCLUSION OF MY NAME IN THE ELECTORAL FOR ANY OTHER CONSTITUENCY.
			MY NAME HAS NOT ALREADY BEEN INCLUDED IN THE ELECTORAL FOR THIS OR ANY OTHER ASSEMBLY CONSTITUENCY.</td>
		</tr>
		<tr></tr>
		<tr>
			<td><input type="button" value="Save Record" onClick="checkVoterValidations()"/></td>
			<td><input type="reset" value="Reset Values"/></td>
			 </tr>
			
			 <tr>
				<td><div id="voterarea" style="width:200px;color:red;"></div></td>
			 </tr>
		</table>
	</form>

 <%@ include file="footer.jsp"%>
</body>
</html>