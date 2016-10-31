<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> Forgot Password</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" media="all" href="css/reset.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/forgotpass.js"></script>
</head>
<body>
<div class="subbg">
  <div class="subheader">
    <div class="container_16">
      <div class="grid_5"> <img src="images/logo.png" alt="" class="pngfix logo"/> </div>
      <div class="grid_11">
        <div class="top-menu pngfix">
          <ul class="sf-menu">
         <li> <a href="index.jsp">Home</a> </li>
         <li> <a href="viewservices.jsp">Services</a> </li>
            <li> <a href="download.jsp">Download</a></li>
            <li> <a href="aboutus.jsp">About Us</a> </li>
		   <li> <a href="contact.jsp">Contact Us</a> </li>
           <li> <a href="register.jsp">Sign Up</a> </li>
           
          </ul>
          <span class="rightcorner pngfix"></span> </div>
      </div>
      <div class="grid_16">
        <div class="subtitle">
          <h1>PLEASE FILL THE DETAILS!</h1>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="clear">&nbsp;</div>
<div class="container_16">
  <div class="grid_11 sepline">
    <div class="box-content">
      <h2>FORGOT YOUR PASSWORD!</h2>
      <br />
      <form name="forgotpassform" action="" method="post">
      	<table>
      		<tr>
      			<td>User Name<b style="color:red;">*</b></td>
      		</tr>
      		<tr>
      			<td><input type="text" name="nm" size="50" /></td>
      		</tr>
      		<tr>
      			<td>Your e-mail<b style="color:red;">*</b></td>
      		</tr>
      		<tr>
      			<td><input type="text" name="eid" size="50" /></td>
      		</tr>
      		<tr>
      			<td>Your Contact No<b style="color:red;">*</b></td>
      		</tr>
      		<tr>
      			<td><input type="text" name="mb" size="50" maxlength="10" /></td>
      		</tr>
      		<tr></tr>
      		<tr>
      			<td><input type="button" value="SUBMIT"  onclick="checkforgotpass()" /></td>
      		</tr>
      		<tr>
				<td><div id="forgotarea" style="width:200px;color:red;"></div></td>
			 </tr>
      		
      	</table>
      </form>
      <br />
    </div>
  </div>
  <div class="grid_5">
    <div class="box-content"> <img src="images/forgot.jpg" alt="" class="img_border" />
      
     
    </div>
  </div>
</div>
<div class="clear"></div>
<div class="clear"></div><div class="clear"></div><div class="clear"></div>
 <%@ include file="footer.jsp"%>
</body>

</html>
