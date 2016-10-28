<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hr-Mgr</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/jsDatePick_ltr.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/ApplicantProfile.js"></script>
<script type="text/javascript" src="js/State.js"></script>

<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
<script type="text/javascript" src="js/jsDatePick.min.1.3.js"></script>

<script type="text/javascript">
	window.onload = function(){
		new JsDatePick({
			useMode:2,
			target:"dob",
			dateFormat:"%d-%M-%Y"
			/*selectedDate:{				This is an example of what the full configuration offers.
				day:5,						For full documentation about these settings please see the full version of the code.
				month:9,
				year:2006
			},
			yearsRange:[1978,2020],
			limitToToday:false,
			cellColorScheme:"beige",
			dateFormat:"%m-%d-%Y",
			imgPath:"img/",
			weekStartDay:1*/
		});
	};
</script>

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
          <li ><a href="#">Edit Profile</a></li>
          <li ><a href="ChangePassword.jsp">Change Password</a></li>
          <li><a href="ApplyJobServlet">Apply Job</a></li>
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
     <div class="header_img"><embed src="images/theam.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="960" height="326" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed> </div>
        </div>
  </div>
  <div class="clr"></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          
          <form name="personalform" method="post" action="" >
          <fieldset style="width:610px">
          <h2 class="star">Personel Detail</h2>
           <table cellspacing="5" cellpadding="5" class="sb_menu" border="0">
        		  <tr><td>Name</td><td><input type="text" name="n" value="${username}" readonly="readonly"/></td>
        		  <td>Date Of Birth</td><td><input type="text" name="dob" id="dob"/></td></tr>
        		 <tr><td>Address</td><td><input type="text" name="address"/></td>
        		 <td>Mailing Address</td><td><input type="text" name="mailaddress"/></td></tr>
       			  <tr><td>State</td><td><select name ="state" onchange="showCities()">
       		      <option value="null">States</option>
       			  <option value="punjab">Punjab</option>
       			  <option value="haryana">Haryana</option>
       			  <option value="delhi">Delhi</option>
       			  <option value="rajasthan">Rajasthan</option>
       			  </select></td><td><span id="city"></span></td>
       			  <td><span id="cityarea"></span></td></tr>
       			  <tr><td>Contact No</td><td><input type="text" name="contactno"/></td>
       			  <td>Email ID</td><td><input type="text" name="email" value="${userid}"  readonly="readonly"/></td></tr>
          		</table>
		
    <br/>
          <h2 class="star">Qualifications</h2>
           <table cellspacing="5" cellpadding="5" class="sb_menu" border="0">
        		  <tr><td>Graduation</td><td><select name="graduation">
        			  <option value="null">Select</option>
        			  <option value="b.tech">B.tech</option>
        		   	 <option value="b.com">B.com</option>
        			<option value="bca">BCA</option>
        			<option value="ba">B.A</option>
        			<option value="bsc">BSC</option>
        		  </select></td><td>Graduation Marks</td><td><input type="text" name="g_marks"/>%</td></tr>
        		 <tr><td>University Name</td><td><input type="text" name="g_university"/></td>
        		 <td>Year Of Passing</td><td><input type="text" name="g_yof"/></td></tr>
       			  <tr><td>Post Graduation</td><td><select name="postgraduation">
        			  <option value="null">Select</option>
        			  <option value="M.tech">M.tech</option>
        			 <option value="m.com">M.com</option>
        			<option value="mca">MCA</option>
        			<option value="mba">MBA</option>
        			<option value="msc">MSC</option>
        		  </select></td><td>Post Graduation Marks</td><td><input type="text" name="pg_marks"/>%</td></tr>
           		 <tr><td>University Name</td><td><input type="text" name="pg_university"/></td>
           		 <td>Year Of Passing</td><td><input type="text" name="pg_yof"/></td></tr>
    				</table>
    		<br/>		
    				<h2 class="star">Skills</h2>
    				<table cellspacing="5" cellpadding="5" class="sb_menu" border="0">
    				<tr><td>Domain</td><td><select name="domain" onchange="skillMethod()">
    				<option value="null">Select</option>
    				<option value="Programmer">Programmer</option>
    				<option value="web designer">Web Designer</option>
    				<option value="web developer">Web Developer</option>
    				<option value="finance">Finance</option>
    				</select></td><td><span id="skill"></span></td><td><span id="skillarea"></span></td></tr>
    	           <tr><td>Upload Resume</td><td><input type="file" name="resume"/></td></tr>
       				<tr><td><span id="output"></span></td></tr>
       			  <tr><td colspan="2"><input type="button" value="Submit" onclick="yes(this.form)" />
                </td></tr>
       		</table>
    
		</fieldset>
    </form>
    
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
