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
<script type="text/javascript" src="js/marriagecert.js">
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

	<form name="marriagecertform" action="" method="post" style="margin:0 100px 0 100px;">		
			<table style="padding-top:30px;">
			<tr>
				<td colspan="2" align="center" style="font-weight:bold;font-size:25px;color:black;padding-bottom:30px;">APPLICATION FORM FOR MARRIAGE CERTIFICATE</td>
			</tr>
			<tr>
				<td></td><td></td><td>ISSUE NO.<input type="text" size="30" name="is" value="${midatt}" readonly="readonly" id="lightText"></td>
			</tr>
			<tr>
				<td></td><td></td><td>DATE  <input type="text" size="30" name="dt" style="width:92%;" id="date-pick2" readonly="readonly" class="classText"></td>
			</tr>
			<tr>
				<td><b>TO:</b></td>
			</tr>
			<tr style="text-align:left">
				<td><b>The Chief Executive Officer,<br/>Jalandhar-144008 </b></td>
			</tr>
			<tr>
				<td><b> Sir;</b></td>
			</tr>
			<tr>
				<td></td><td><b style="font-size:15px;;color:brown">Sub: Issue Of Marriage Certificate Reg.</b></td>
			</tr>
			<tr>
				<td></td><td width="800" style="font-weight:bold;font-size:20px;color:black;text-decoration:underline;padding:20px 0 20px 0;">FIELDS OF BRIDEGROOM AS MARRIAGE RECORD</td>
			</tr>
			<tr>
				<td >NAME<input type="text" name="nm" id="lightText" size="30"/></td>
				<td class="centerrow">FATHER's NAME<br/><input type="text" name="fn" id="lightText" size="30"/></td>
				<td >MOTHER's NAME <input type="text" name="mn" id="lightText" size="30"/></td>
			</tr>
			<tr>
				<td>DOB <input type="text" name="db" style="width:92%;" id="date-pick" class="classText" readonly="readonly"></td>
				<td class="centerrow" >NATIONALITY<br/><input type="text" name="na" id="lightText" size="30"></td>
				<td >OCCUPATION   <input type="text" name="oc" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>RESIDENT OF:<input type="text" name="rs" id="lightText" size="30"></td>
				
			</tr>
			<tr>
				<td></td><td width="800" style="font-weight:bold;font-size:20px;color:black;text-decoration:underline;padding:20px 0 20px 0;">FIELDS OF BRIDE AS MARRIAGE RECORD</td>
			</tr>
			<tr>
				<td >NAME<input type="text" name="bnm" id="lightText" size="30"></td>
				<td class="centerrow" >FATHER's NAME<br/><input type="text" name="bfn" id="lightText" size="30"></td>
				<td >MOTHER's NAME   <input type="text" name="bmn" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>DOB <input type="text" name="bdb" style="width:92%;" id="date-pick1" class="classText" readonly="readonly"></td>
				<td class="centerrow">NATIONALITY<br/><input type="text" name="bna" id="lightText" size="30"></td>
				<td >OCCUPATION   <input type="text" name="boc" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>RESIDENT OF:<input type="text" name="brs" id="lightText" size="30"></td>
				<td class="centerrow" >DATE OF MARRIAGE <br/><input type="text" name="dm" style="width:52%;" id="dob-pick" class="classText" size="30" readonly="readonly"></td>
			</tr>
			<tr>
				<td><h4 style="color:black;padding:20px 0 20px 0;">ADDRESS</h4></td>
			</tr>
			<tr>
				<td>DOOR No.<Input type="text" name="dn" id="lightText" size="30"></td>
				<td class="centerrow">CITY <br/><Input type="text" name="ct" id="lightText" size="30"></td>
				<td>MANDAL  <Input type="text" name="md" id="lightText" size="30"></td>
			</tr>
			<tr>
				<td>DISTRICT<Input type="text" name="dst" id="lightText" size="30"></td>
				<td class="centerrow">PINCODE <br/><Input type="text" name="pc" id="lightText" maxlength="6" size="30"></td>
				<td >EMAIL   <input type="text" name="eid" id="lightText" size="30"></td>
			</tr>
			<tr></tr>
			
			 <tr>
			 	<td></td>
			 	<td><input type="button" value="Save Record" onClick="checkMarriagecertValidations()"/></td>
				<td><input type="reset" value="Reset Values"/></td>
			 </tr>
			
			 <tr>
				<td><div id="marriagecertarea" style="width:200px;color:red;"></div></td>
			 </tr>
		</table>
	</form>
	<%@ include file="footer.jsp"%>

</body>
</html>