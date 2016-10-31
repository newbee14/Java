<%@taglib prefix="hr" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hr-Mgr</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/State.js"></script>

<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<script type="text/javascript" src="js/shortlist.js"></script>
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
                 <li ><a href="ViewApplicantServlet">View Applicants</a></li>
      <li><a href="ShortlistApplicantServlet">Shortlist Applicants</a></li>
         <li><a href="HrChangePassword.jsp">Change Password</a></li>
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
     <img src="images/hr.jpg" alt="" width="960" height="326" />
     </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article" style="overflow:auto;height:20;width:620;">
            <center>  <h2>Applicant applied for jobs</h2></center>
       
        <form name="filter" action="">
         <fieldset>
          <table align="center" border="0" >
       
          <tr>
          	<td width="100" align="center">Qualification</td>
          	<td width="100" align="center">Year of Passing</td>
          	<td width="100" align="center">Jobcode</td>
          	
          	<td width="100" align="center">Domain</td>
          	<td width="150" align="center">Skills</td>
          </tr>
        <tr><td width="50" align="center">
        <select name="qualification" onchange="shortlistajax()">
         <option value="All">All</option>
        <option value="b.tech">B.tech</option>
        <option value="b.com">B.com</option>
        <option value="bca">BCA</option>
        <option value="ba">B.A</option>
        <option value="bsc">BSC</option>
         </select></td>
         <td width="50" align="center"><select name="yop" onchange="shortlistajax()">
         <option value="All">All</option>
         <option value="2015">2015</option>
         <option value="2014">2014</option>
         <option value="2013">2013</option>
		 <option value="2012">2012</option>
         <option value="2011">2011</option>
         <option value="2010">2010</option>
         <option value="2009">2009</option>
         <option value="2008">2008</option>
         <option value="2007">2007</option>
		 <option value="2006">2006</option>
         <option value="2005">2005</option>
         <option value="2004">2004</option>
         </select></td>
        
         <td width="50" align="center"><select name="jobcode" onChange="shortlistajax()">
          <option value="All">All</option>
        <option value="1001">1001</option>
         <option value="1002">1002</option>
         <option value="1003">1003</option>
         <option value="1004">1004</option>
		 </select></td>
        
        
        <td width="100" align="center">
        <select name="domain"  onchange="skillMethod2(),shortlistajax()">
        <option value="All">All</option>
       <option value="Programmer">Programmer</option>
    	<option value="web designer">Web Designer</option>
		<option value="web developer">Web Developer</option>
    	<option value="finance">Finance</option>
  		 </select>
        </td>
        <td width="150" align="center">
        <span id="skillarea">
        		<select name="skill"><option value="All">All</option></select>
        </span></td>
        <td width="20" align="center"><input type="submit" value="Shortlist" onclick=/></td>
         </tr>
          </table>
        </fieldset>  
          </form>
       </div>
       <div style="overflow:auto;height:400px;width:620px" id="table_area">   
          <table border="1" cellpadding="1" cellspacing="1" bordercolor="gray">
          
          <tr><td>Username</td><td>Jobcode</td><td>Applied Date</td><td>Graduation</td><td>Marks</td>
          <td>Year of passing</td><td>Post Graduation</td><td>Marks</td><td>Year of passing</td><td>Domain</td><td>Skill</td>
          </tr>
          <hr:forEach var="i" items="${Shortlist_Applicant}">
        <tr>
        <td>${i.username}</td>
        <td>${i.jobcode}</td>
        <td>${i.applied_date}</td>
        <td>${i.graduation}</td>
        <td>${i.g_marks}</td>
        <td>${i.g_yof}</td>
        <td>${i.postgraduation}</td>
        <td>${i.pg_marks}</td>
        <td>${i.pg_yof}</td>
        <td>${i.domain}</td>
        <td>${i.skill}</td>
        </tr>
        </hr:forEach>
          </table>
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
