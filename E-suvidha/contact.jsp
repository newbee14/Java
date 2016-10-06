<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>eSuwidhaCentre | Contact</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" media="all" href="css/reset.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/contact.js"></script>

</head>
<body onload="setfocus()">
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
		   <li class="current"> <a href="contact.jsp">Contact Us</a> </li>
           <li> <a href="register.jsp">Sign Up</a> </li>
           
          </ul>
          <span class="rightcorner pngfix"></span> </div>
      </div>
      <div class="grid_16">
        <div class="subtitle">
          <h1><b>SOMETHING ABOUT SUWIDHA CONTACT US PAGE!</b></h1>
          <p>ANYTIME AVAILABLE FOR YOU</p>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="clear">&nbsp;</div>
<div class="container_16">
  <div class="grid_11 sepline">
    <div class="box-content">
      <h2>Contact Us!</h2>
      <br />
      <form action="#" method="post" name="contactform" style="margin:0px; font:Normal 12px Arial,Tahoma, Verdana, Helvetica, sans-serif;width:200px; color:#000;">
        <p>First Name <b style="color:red;">*</b>
          <input type='text' value='' size='50' maxlength='50' name='nm'/>
        </p>
        <p>Your e-mail <b style="color:red;">*</b>
          <input name="eid" type="text" size='50' value=""/>
        </p>
        <p>Subject <b style="color:red;">*</b>
          <input name="sb" type="text" size='50'  value=""/>
        </p>
        <p>Message <b style="color:red;">*</b>
          <textarea name="msg" cols="38" rows="5" id="message"></textarea>
        </p>
        <p>
          <input name="submit" class="" type="button" value="Submit" onclick="checkValidations()"/>
        </p>
        <div id="contactarea" style="width:200px;color:red"></div>
      </form>
      <br />
    </div>
  </div>
  <div class="grid_5">
    <div class="box-content"> <img src="images/contact.jpg" alt="" class="img_border" />
      <h4>Via Phone</h4>
      <p>1. phone :0181-2453200 </p>
      <p>2. phone :0181-2453300</p>
      <br />
      <h4>Via Mail</h4>
      <p><a href="#">nic.in</a></p>
      <br />
     
    </div>
  </div>
</div>
<div class="clear"></div>

 <%@ include file="footer.jsp"%>
</body>

</html>
