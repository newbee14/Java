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
<script type="text/javascript" src="js/rtiform.js">
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

		<form name="rtiform" action="" method="post" style="margin:0 100px  0 100px;">
		<img src="images/rti.gif" alt="" width="1000">
		<table style="font-size:14px;">
			<tr>
				<td><h1 style="text-align:center;color:black">RTI FORM</h1></td>
			</tr>
			<tr style="text-align:right">
				<td>I.D NO.<input type="text" name="id" id="lightText" size="30" value="${rtidatt}" readonly="readonly"></td>
			</tr>
			
			<tr>
				<td>TO</td>
			</tr>
			<tr style="text-align:left;">
				<td>The Public Information Officer (RTI),<br/>
						National Informatics Centre-HQ,<br/>
						A-Block, CGO Complex,<br/>
						Lodi Road,<br/>
						jalandhar-144008 </td>
			</tr>
			<tr>
				<td style="font-weight:bold;color:red;">Sub:- Request for information under RTI-Act 2005-Application reg.</td>
			</tr>
			<tr>
				<td>Sir;</td>
			</tr>
			<tr>
				<td style="text-align:left;">1. I <input type="text" name="nm" id="lightText"> Son/Daughter/Wife of <input type="text" name="sdw" id="lightText">
							Resident of <input type="text" name="rs" id="lightText">
							wish to seek information, under the RTI Act, 2005. The information needed pertains to the
							National Informatics Centre-HQ, as per details given below:-<br/>
							<input type="text" name="inf" id="lightText" size="40"></td>
			</tr>
			<tr>
				<td>2. It is certified that I am a bona fide Citizen of India.</td>
			</tr>
			<tr>
				<td>3. *It is certified that I do fall under the category Below Poverty Line (BPL), and an attested
				copy of the relevant certificate (issued by the competent authority) is enclosed herewith for
				your information. (*Please strike out if not belonging to the BPL category)</td>
			</tr>
			<tr>
				<td>4. I have deposited the required amount of Rs.10/-(Rupees Ten only) towards application fee
				(Receipt enclosed) with DDO, NIC, vide receipt no.<input type="text" name="rn" id="lightText"> dated
				 <input type="text" name="dt" class="classText" id="date-pick" readonly="readonly" class="classText">. Further, I also
				undertake to pay any additional fees/charges (if applicable) as prescribed under the RTI Act
				and or relevant Rules.</td>
			</tr>
			<tr style="text-align:right" >
				<td>MOBILE NO.<input type="text" name="mb" id="lightText" size="30" maxlength="10"></td>
			</tr>
			<tr style="text-align:right">
				<td>E-MAIL. <input type="text" name="eid" id="lightText" size="30"></td>
			</tr>
			<tr style="text-align:right">
				<td>FAX ADDRESS <input type="text" name="fa" id="lightText" size="40"></td>
			</tr>
			
			<tr>
			<td><input type="button" value="Save Record" onClick="checkRTIValidations()"/><input type="reset" value="Reset Values"/></td>
			 </tr>
			
			 <tr>
				<td><div id="rtiformarea" style="width:200px;color:red;"></div></td>
			 </tr>
		</table>
	</form>

 <%@ include file="footer.jsp"%>
</body>
</html>
	