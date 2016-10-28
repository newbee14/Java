<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hr-Mgr</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/State.js"></script>
<script type="text/javascript" src="js/Interview.js"></script>

<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
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
         
          <li><a href="InterviewerFinalApplicant.jsp">Shortlisted Applicant</a></li>
		   <li><a href="InterviewShedule.jsp">Interview Schedule</a></li>
        	
            <li><a href="InterviewResult.jsp">Interview Results</a></li>
         
         
          <li><a href="InterviewerChangePassword.jsp">Change Password</a></li>
          <li class="last"><a href="LogoutServlet">Logout</a></li>
       	         			
        </ul>
        <div class="search">
          <form id="form" name="form" method="post" action="#">
            <span>
            <input name="q" type="text" class="keywords" id="textfield" maxlength="50" value="Search..." />
            <input name="b" type="image" src="images/search.gif" class="button" />
            </span>
          </form>
        </div>
      </div>
      <div class="clr"></div>
     <div class="header_img">
     <img src="images/interviewer.jpg" alt="" width="960" height="326" />
     </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          
              
       <fieldset>
          <legend><h2><span>Interview </span><span style="color:#40b5ff;"> Results</span></h2></legend>
      <form name="interview_result" mthod="post" action="">
      <table border="0" cellspacing="5" cellpadding="5" class="sb_menu">
        <tr>
        <td width="100" >Name</td><td ><input type="text" name="name"/></td>
        <td align="center" width="100" >Username</td><td ><input type="text" name="username"/></td>
         </tr>
      <tr>
        <td width="100" >Apply For Job</td><td ><input type="text" name="jobcode"/></td></td>
       </tr>
      
      <tr>
      
      <td width="100" >Writen Test Marks</td><td ><input type="text" name="writen_test" />
      <td align="center" width="100" >Interview Marks</td><td ><input type="text" name="interview_marks"/>
      
      </tr>
     <tr>
     <td width="100" ></td ><td align="center">(Marks out of 50)</td>
     <td width="100" ></td ><td align="center">(Marks out of 50)</td>
     </tr>
      
      <tr>
     <td width="105" >Status Of Interview</td >
     <td width="105">
     <select name="status">
     <option value="selected">Selected</option>
     <option value="not selected">Not Selected</option>
     </select></td> 
      </tr>
     <tr><td></td> 
     <td>
      <input type="button" value="Submit" onclick="manageResult()"/>
      </td>
      <td><span id="resultAdded"></span></td>
     </tr>
      </table>
      </form>
          </fieldset>
          
      </div></div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star">User Profile</h2>
          <div class="clr"></div>
           User :  ${username}</br>
           User Id : ${userid} 
          </div>
        <div class="gadget">
          <h2 class="star"><span>Jobs</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
          <marquee direction="up" onmouseover="stop()" onmouseout="start()">
            <li><a href="http://www.dreamtemplate.com">DreamTemplate</a><br />
              Over 6,000+ Premium Web Templates</li>
            <li><a href="http://www.templatesold.com/">TemplateSOLD</a><br />
              Premium WordPress &amp; Joomla Themes</li>
            <li><a href="http://www.imhosted.com">ImHosted.com</a><br />
              Affordable Web Hosting Provider</li>
            <li><a href="http://www.myvectorstore.com">MyVectorStore</a><br />
              Royalty Free Stock Icons</li>
            <li><a href="http://www.evrsoft.com">Evrsoft</a><br />
              Website Builder Software &amp; Tools</li>
            <li><a href="http://www.csshub.com/">CSS Hub</a><br />
              Premium CSS Templates</li>
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
          <a href="#">9988574649</a></p>
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
