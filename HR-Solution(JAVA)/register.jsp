<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hr-Mgr</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/RegisterValidation.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/LoginValidation.js"></script>

<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<!-- Start WOWSlider.com HEAD section -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" media="screen" />
	<style type="text/css">a#vlb{display:none}</style>
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->

</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo"> <img src="images/logo_img.gif" alt="" width="51" height="48" />
        <h1>
        	<a href="index.html"><span>HR</span> Operations</a><small>Sky is untouchable But try your best</small>
        </h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.html">Home</a></li>
          <li class="active"><a href="register.jsp">Register</a></li>
          <li><a href="about.jsp">About Us</a></li>
          <li class="last"><a href="contact.jsp">Contact Us</a></li>
        </ul>
        <div class="search">
          <form id="form" name="form" method="post" action="#">
            <span>
            <input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="Search..." />
            <input name="b" type="image" src="images/search.gif" class="button"/>
            </span>
          </form>
        </div>
      </div>
      <div class="clr"></div>
      <div class="header_img"> 
      
       <!-- Start WOWSlider.com BODY section -->
	<div id="wowslider-container1">
	<div class="ws_images">
<a href="#"><img src="data1/images/bannergirlwalking.jpg" alt="banner-girl-walking" title="banner-girl-walking" id="wows0"/></a>
<a href="#"><img src="data1/images/1_banner3.jpg" alt="1_banner3" title="1_banner3" id="wows1"/></a>
<a href="#"><img src="data1/images/hr.jpg" alt="hr" title="hr" id="wows2"/></a>
<a href="#"><img src="data1/images/hr2.jpg" alt="hr2" title="hr2" id="wows3"/></a>
<a href="#"><img src="data1/images/hrmanagementroles.jpg" alt="hr-management-roles" title="hr-management-roles" id="wows4"/></a>
<a href="#"><img src="data1/images/hrmanagement.jpg" alt="hr-management" title="hr-management" id="wows5"/></a>
<a href="#"><img src="data1/images/banner_5.jpg" alt="banner_5" title="banner_5" id="wows6"/></a>
<a href="#"><img src="data1/images/manager.jpg" alt="manager" title="manager" id="wows7"/></a>
</div>
<div class="ws_bullets"><div>
<a href="#wows0" title="banner-girl-walking"><img src="data1/tooltips/bannergirlwalking.jpg" alt="banner-girl-walking"/>1</a>
<a href="#wows1" title="1_banner3"><img src="data1/tooltips/1_banner3.jpg" alt="1_banner3"/>2</a>
<a href="#wows2" title="hr"><img src="data1/tooltips/hr.jpg" alt="hr"/>3</a>
<a href="#wows3" title="hr2"><img src="data1/tooltips/hr2.jpg" alt="hr2"/>4</a>
<a href="#wows4" title="hr-management-roles"><img src="data1/tooltips/hrmanagementroles.jpg" alt="hr-management-roles"/>5</a>
<a href="#wows5" title="hr-management"><img src="data1/tooltips/hrmanagement.jpg" alt="hr-management"/>6</a>
<a href="#wows6" title="banner_5"><img src="data1/tooltips/banner_5.jpg" alt="banner_5"/>7</a>
<a href="#wows7" title="manager"><img src="data1/tooltips/manager.jpg" alt="manager"/>8</a>
</div></div>
<a style="display:none" href="http://wowslider.com">Photo Carousel by WOWSlider.com v1.7</a>
	</div>
	<script type="text/javascript" src="engine1/script.js"></script>
	<!-- End WOWSlider.com BODY section --></div>
    
      
      
      </div>
    </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          </div>
               <form name="register" method="post" action="" >
          <fieldset style="width:600px">
   <legend><h2><span>Register </span><span style="color:#40b5ff;">Form</span></h2></legend>
               <center> <table cellspacing="5" cellpadding="5" class="sb_menu">
        		  <tr><td>Full Name</td><td><input type="text" name="fullname"/></td></tr>
        		 <tr><td>E-mail</td>
        		 <td><input type="text" name="email" onblur="checkEmail()"/></td>
        		 <td><span id="eresult" style="color:red"> </span></td></tr>
        		 <tr><td>Password</td><td><input type="password" name="password"/></td></tr>
       			  <tr><td>Confirm Password</td><td><input type="password" name="confirmpassword" onblur="checkpandcp()"/></td>
       			  <td width="100"><span id="pass"></span><img src="" name="image"/></td></tr>
       			  <tr><td colspan="2"><input type="button" onclick="checkRegister()" value="submit" />
                </td></tr>
                <tr><td></td><td><span id="result"></span></td></tr>
       		</table>
		</fieldset>
    </form></center>
      </div>
        <div class="sidebar">
        <div class="gadget">
          <h2 class="star">Login</h2>
          <div class="clr"></div>
          <form name="loginform" method="post" action="">
          <table cellspacing="10" cellpadding="5" class="sb_menu" border="0">
          <tr><td width="200px">Login</td><td><input type="text" name="login"/></td></tr>
         <tr><td>Password</td><td><input type="password" name="password"/></td></tr>
         <tr><td>User Type </td><td><select name="usertype">
        <!--  <option value="null">Select</option> -->
         <option value="applicant">Applicant</option>
         <option value="hr">HR</option>
         <option value="interviewer">Interviewer</option>
         <option value="manager">Manager</option>
		  </select></td></tr>
          <tr><td><input type="button" value="Submit" onclick="checkLogin()"/></td><td><a href="">Forget Password</a></td></tr>
          <tr><td colspan="2"><span id="loginresult" style="color:red"></span></td></tr>
          </table>	            
        </form>
          </div>
    <div class="gadget">
          <h2 class="star"><span>Jobs</span></h2>
           <div class="clr"></div>
          <ul class="ex_menu">
            <marquee direction="up" onmouseover="stop()" onmouseout="start()">
            <li><a href="register.jsp">Job Code 1001</a><br />
              Web Developer (Banglore)</li>
            <li><a href="register.jsp">Job Code 1002</a><br />
              Network Engineer (New Delhi)</li>
            <li><a href="register.jsp">Job Code 1003</a><br />
              Hr Manager (New Delhi)</li>
            <li><a href="register.jsp">Job Code 1004</a><br />
              Marketing Executer (Chennai)</li>
            <li><a href="register.jsp">Job Code 1005</a><br />
             Web Designer (Noida)</li>
            <li><a href="register.jsp">Job Code 1006</a><br />
              Software Developer (Gurgawon)</li>
              </marquee>
  </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image Gallery</span></h2>
        <a href="#"><img src="images/gallery_1.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/gallery_2.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/gallery_3.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/gallery_4.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/gallery_5.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/gallery_6.jpg" width="58" height="58" alt="" /></a> </div>
      <div class="col c2">
        <h2><span>Lorem Ipsum</span></h2>
        <p>Lorem ipsum dolor<br />
          Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. <a href="#">Morbi tincidunt, orci ac convallis aliquam</a>, lectus turpis varius lorem, eu posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam.</p>
      </div>
      <div class="col c3">
        <h2><span>Contact</span></h2>
        <p>Nullam quam lorem, tristique non vestibulum nec, consectetur in risus. Aliquam a quam vel leo gravida gravida eu porttitor dui. Nulla pharetra, mauris vitae interdum dignissim, justo nunc suscipit ipsum. <a href="#">mail@example.com</a><br />
          <a href="#">+1 (123) 444-5677</a></p>
      </div>
      <div class="clr"></div>
    </div>
    <div class="footer">
      <p class="lr">Copyright &copy; 2010 <a href="#">Domain Name</a> - All Rights Reserved</p>
      <p class="lf">Layout by Atomic <a href="http://www.atomicwebsitetemplates.com/">Website Templates</a></p>
      <div class="clr"></div>
    </div>
  </div>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
