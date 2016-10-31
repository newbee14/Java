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
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/buspass.js"></script>
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

	<form name="buspassform" action="" method="post" style="margin:0 100px  0 100px;">
	<img src="images/buspass.jpg" alt="" width="1000" />
	
		<table style="margin-top:40px;">
			<tr>
				<td colspan="4"><b style="color:blue;font-size:15px;">Please Select As Appropriate</b></td>
			</tr>
			<tr>
				<td><b style="color:black">Please Specify</b></td>
				<td><Input type="radio" name="type" checked="checked" id="nw">NEW
				<Input type="radio" name="type" id="rn">RENEWAL
				<Input type="radio" name="type" id="dl">DUPLICATE</td>
			</tr>
			<tr>
				<td ><b style="color:black">Which Type Of Pass Do You Require? Please Select</b></td>
			
				<td><Input type="radio" name="type1" checked="checked" id="ds">Disabled (Bearer only)
				<Input type="radio" name="type1" id="bl">Blind (Bearer only)</td>
			</tr>
			<tr>
				<td colspan="4"><b style="color:blue;font-size:15px;">PART_A(Applicant General Information)</b></td>
			</tr>
			<tr>
				<td>FIRST NAME<br/><Input type="text" name="fn" id="lightText" size="30"/></td>
				<td>LAST NAME<br/><Input type="text" name="ln" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td><b style="color:black">ADDRESS</b></td>
			</tr>
			<tr>
				<td>DOOR No.<br/><Input type="text" name="dn" id="lightText" size="30"></td>
			
				<td>VILLAGE/CITY/TOWN<br/><Input type="text" name="ct" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>MANDAL<br/><Input type="text" name="md" id="lightText" size="30"></td>
			
				<td>DISTRICT<br/><Input type="text" name="dt" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>PINCODE<br/><Input type="text" name="pc" id="lightText" maxlength="6" size="30"></td>
			
				<td>DOB<br/><input type="text" name="db" id="date-pick" size="30" readonly="readonly" class="classText"></td>
			</tr>
			
			<tr>
				<td>WHAT IS YOUR DISABILITY?</td><td><Input type="text" name="da" id="lightText" size="60"></td>
			</tr>
				
			<tr>
				<td ><b style="color:black">1. Is your name on a social services register of disabled, deaf or blind persons?</b></td>
			
				<td><Input type="radio" name="rd1" id="yes">YES
				<Input type="radio" name="rd1" id="no" checked="checked">NO
				<Input type="radio" name="rd1" id="dont">DON'T KNOW</td>
			</tr>
			<tr>
				<td><b style="color:black">2. Are you in possession of a Disabled Parking Badge?</b></td>
			
				<td><Input type="radio" name="rd2" id="yes1">YES
				<Input type="radio" name="rd2" id="no1" checked="checked">NO</td>
				
			</tr>
			<tr>
				<td colspan="6"><b style="color:blue;font-size:15px;">Part-B(You must answer YES to one of the following questions to qualify for a
travel pass and upload evidence document)</b></td>
			</tr>
			
			<tr>
			
				<td><b style="color:black">1. Are you registered blind or partially sighted?</b></td>
				
				<td><Input type="radio" name="rd3" id="yes2">YES
				<Input type="radio" name="rd3" id="no2" checked="checked">NO</td>
			</tr>
			<tr>
				<td><b style="color:black">2. Are you profoundly or severely deaf?</b></td>
				<td><Input type="radio" name="rd4" id="yes3">YES
				<Input type="radio" name="rd4" id="no3" checked="checked">NO</td>
			</tr>
			<tr>
				<td><b style="color:black">3. Are you without speech?</b></td>
				<td><Input type="radio" name="rd5" id="yes4">YES
				<Input type="radio" name="rd5" id="no4" checked="checked">NO</td>
			</tr>
			<tr>
				<td><b style="color:black">4. Do you receive Mobility allowance or the higher rate of the mobility component
of the disability living allowance?</b></td>
				<td><Input type="radio" name="rd6" id="yes5">YES
				<Input type="radio" name="rd6" id="no5" checked="checked">NO</td>
			</tr>
			<tr>
				<td><b style="color:black">5. Have you a disability or injury which has a substantial and long-term effect on
your ability to walk?</b></td>
				<td><Input type="radio" name="rd7" id="yes6">YES
				<Input type="radio" name="rd7" id="no6" checked="checked">NO</td>
			</tr>
			<tr>
				<td><b style="color:black">6. Do you receive War Pensioners mobility supplement?</b></td>
				<td><Input type="radio" name="rd8" id="yes7">YES
				<Input type="radio" name="rd8" id="no7" checked="checked">NO</td>
			</tr>
			<tr>
				<td><b style="color:black">7. Have you lost the use of both your arms?</b></td>
				<td><Input type="radio" name="rd9" id="yes8">YES
				<Input type="radio" name="rd9" id="no8" checked="checked">NO</td>
			</tr>
			<tr>
				<td><b style="color:black">8. Do you have learning disabilities?</b></td>
				<td><Input type="radio" name="rd10" id="yes9">YES
				<Input type="radio" name="rd10" id="no9" checked="checked">NO</td>
			</tr>
			<tr>
				<td><b style="color:black">9. Have you or would you have been refused a driving license on medical grounds?
(Other than on the grounds of persistent misuse of drugs or alcohol)</b></td>
				<td><Input type="radio" name="rd11" id="yes10">YES
				<Input type="radio" name="rd11" id="no10" checked="checked">NO</td>
			</tr>
			<tr>
				<td><b style="color:black">10. Is your disability so severe that you require assistance of a companion to use
public transport?</b></td>
				<td><Input type="radio" name="rd12" id="yes11">YES
				<Input type="radio" name="rd12" id="no11" checked="checked">NO</td>
			</tr>
			<tr>
				<td colspan="6"><b style="color:blue;font-size:15px;">Part-C(What is the name and address of your family doctor:)</b></td>
			</tr>
			<tr>
				<td>NAME</td><td><Input type="text" name="dnm" id="lightText" size="30"></td>
			
				<td>PHONE/MOBILE</td><td><input type="text" name="dmb" id="lightText" maxlength="10" size="30"></td>
			</tr>
			<tr>
				<td colspan="6"><b style="color:blue;font-size:15px;">Part-E(I declare that, to the best of my belief, all the statements I have made on this form are true)</b></td>
			</tr>
				
			<tr>
				<td>EMAIL</td><td><input type="text" name="eid" id="lightText" size="30"></td>
				<td>Token No</td><td><Input type="text" name="tn" size="30" value="${bidatt}" readonly="readonly" id="lightText"></td>
			</tr>
				<tr></tr>
		     <tr>
		     	
			 	<td><input type="button" value="Save Record" onclick="checkBuspassValidations()"/></td>
				<td><input type="reset" value="Reset Values"/></td>
			 </tr>
			
			 <tr>
				<td><div id="buspassarea" style="width:200px;color:red;"></div></td>
			 </tr>
		</table>
   
</form>
	
	
 <%@ include file="footer.jsp"%>
</body>
</html>