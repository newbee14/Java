<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Platinum Theme - Free CSS Template</title>
<meta name="keywords" content="platinum, web design theme, free templates, website templates, CSS, HTML" />
<meta name="description" content="Platinum Theme is a free CSS template provided by templatemo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />



<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js_of_clicks/myscript.js"></script>
<script type="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/</script>
<!-- Copy to the head section of your webpage -->



<script type="text/javascript" src="js0101/jquery.js"></script>
<script type="text/javascript" src="js0101/mhslideshow.js"></script>
<script type="text/javascript" src="js0101/initslide.js"></script>
<link rel="stylesheet" href="js0101/mhslideshow.css" type="text/css" />
<!-- End of head section codes -->



<style type="text/css">
.tablepadding {
	padding-top: 10px;
	padding-left: 30px;
	text-align: center;
}
.pinimagesdiv {
	background-image: url(images/noticeboard5.png);
	height: 157px;
	width: 150px;
	background-repeat: no-repeat;
	background-position: center center;
	border-top-width: thin;
	border-right-width: thin;
	border-bottom-width: thin;
	border-left-width: thin;
	border-top-color: rgb(63,108,101);
	border-right-color: rgb(63,108,101);
	border-bottom-color: rgb(63,108,101);
	border-left-color: rgb(63,108,101);
	-webkit-transition: all 0.5s ease-in-out 0s;
	-moz-transition: all 0.5s ease-in-out 0s;
	-ms-transition: all 0.5s ease-in-out 0s;
	-o-transition: all 0.5s ease-in-out 0s;
	transition: all 0.5s ease-in-out 0s;
}
.noticecontentpadding {
	height: 117px;
	width: 135px;
	padding-top: 40px;
	padding-right: 5px;
	padding-bottom: 5px;
	padding-left: 5px;
	color: rgb(63,108,101);
	font-size: 12px;
	font-weight: normal;
	text-align: center;
	vertical-align: middle;
	text-transform: capitalize;
	line-height: normal;
	font-family: "Comic Sans MS", cursive;
}
.noticecontent {
	height: 157px;
	width: 150px;
	padding-top: 20px;
	padding-right: 2px;
	padding-bottom: 2px;
	padding-left: 2px;
}
.pinimagesdiv:hover {
	-webkit-transform: scale(1.2);
	-moz-transform: scale(1.2);
	-ms-transform: scale(1.2);
	-o-transform: scale(1.2);
	transform: scale(1.2);
	cursor: pointer;
}
</style>
<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

</head>
<body onload="fetchNoticeOnLoadInStudentHome()">

<div id="templatemo_wrapper">
		<div id="templatemo_header">
		
        <div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Free CSS Templates</a></h1></div>
        <div style="width:700px; height:52px; float:right">
           <ul id="menu">
	 <li><a href="HODHome.jsp">Home</a></li>
               <li> <a href="">Upload</a>
                  <ul>
                    <li><a href="NewStudentRegistration.jsp">New Student Details</a></li>
                 
               	  
                  <li><a href="UploadContent.jsp">Upload Notes</a></li>
                  
                  <li><a href="UploadContent.jsp">Upload Syllabus</a></li>
                  
                  <li><a href="UploadContent.jsp">Upload Papers</a></li>
                  </ul>
                  
             
            <li> <a href="">View</a>
              <ul>
                
                <li> <a href="">No Dues</a>
                  <ul>
                    <li><a href="NonTeachingStaff.jsp">Update No Dues</a></li>
                  </ul>
                  <li><a href="StudentStatusUpdation.jsp">Students Status</a></li>
                </li>
                <li> <a href="ViewNotesServlet">Notes</a>
                  
                </li>
                
                <li> <a href="ViewPapersServlet">Previous Years Papers</a>
                  
                </li>
                <li> <a href="ViewSyllabusServlet">Syllabus</a>
                  
                </li>
              </ul>
            </li>
            <li> <a href="">Blood Bank</a>
              <ul>
                <li> <a href="BlooddonorlistStaff.jsp">View Donor's List</a></li>
                <li> <a href="BloodbankregisterStaff.jsp">Register</a></li>
              </ul>
            </li>
            <li><a href="">E-Magazine</a>
              <ul>
                <li> <a href="EMagazineTeacher.jsp">View E-Magazine</a></li>
                <li> <a href="AddEMagazineStaff.jsp">Upload Content</a></li>
              </ul>
            </li>
            
            
            <li><a href="">Settings</a>
              <ul>
              <li> <a href="ModifyDetailsofStaff.jsp">Modify Details</a></li>
                <li> <a href="ChangeStaffPassword.jsp">Edit Password</a></li>
                <li> <a href="LogoutServlet">Logout</a></li>
              </ul>
            </li>
             
             
</ul>
        </div>
        
        </div>
	<!-- end of header -->
  <table width="980" border="2" align="center" class="paddinginstudenthome">
	  <tr>
	    <td width="349" height="300" align="center" valign="bottom"><div id="login" class="animate form">
	      <div id="login2" class="animate form">
	        <form  autocomplete="on" name="ForgetPasswordForm" method="post">
	          <h1>Welcome ${staffatt.facultyname}	          
	        <br>
        <img src="images/AnimatedLaptop-Copy.gif" width="125" height="151" align="right"></h1>
	        </form>
	      </div>
	    </div></td>
	    <td width="613" height="300" align="center" valign="middle"><!-- Copy to where you want to display the Slideshow -->
<div id="mhslideshow">
<style type="text/css"> #mhslideshow img { display:none; } </style>
<img src="images0101/11111.jpg" title="11111" />
<img src="images0101/22222.jpg" title="22222" />
<img src="images0101/33333.jpg" title="33333" />
<img src="images0101/44444.jpg" title="44444" />
</div>
<!-- End of Slideshow codes --></td>
      </tr>
  </table>
	<!-- end of middle -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content">
            <h3 align="center" id="noticeBoardHeading">Department Notice Board</h3>
				<div class="post">
                
                  
                 <div class="noticeboardimages">
                   <table width="620" border="0" align="center" class="tablepadding">
                     <tr>
                       <td height="176"><div class="pinimagesdiv"><div class="noticecontentpadding" id="NoticeBoard1" onclick="fetchNoticeDescriptionForDept(1)">vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div>
                       </div></td>
                       <td><div class="pinimagesdiv"> <div class="noticecontentpadding" id="NoticeBoard2" onclick="fetchNoticeDescriptionForDept(2)">vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div></div></td>
                       <td><div class="pinimagesdiv"> <div class="noticecontentpadding" id="NoticeBoard3" onclick="fetchNoticeDescriptionForDept(3)">vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div></div></td>
                     </tr>
                     <tr>
                       <td height="218"><div class="pinimagesdiv"><div class="noticecontentpadding" id="NoticeBoard4" onclick="fetchNoticeDescriptionForDept(4)"> vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div></div></td>
                       <td><div class="pinimagesdiv"> <div class="noticecontentpadding" id="NoticeBoard5" onclick="fetchNoticeDescriptionForDept(5)">vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div></div></td>
                       <td><div class="pinimagesdiv"> <div class="noticecontentpadding" id="NoticeBoard6" onclick="fetchNoticeDescriptionForDept(6)">vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div></div></td>
                     </tr>
                   </table>
                 
                 
                  
                  
                 </div>
			  </div>
			  <div class="cleaner"></div>
            </div>
            <div id="sidebar">
           <a href="AddNoticeHOD.jsp"><div style="width:280px;height:80px;background-image:url(images/notice.png);cursor:pointer;margin-top:70px">
              <table width="280" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td width="190" height="80">&nbsp;</td>
                  <td width="90"><img src="images/animated_New.gif" width="74" height="65"></td>
                </tr>
              </table>
            </div></a>
              <div class="sb_box" style="border-radius:20px">
                <h3 align="center">New Updates..</h3>
                   <marquee direction="up" scrollamount="2" >
                    <ul class="templatemo_list">
                        <li>Syllabus of Sem 7th Updated..</li><br/>
                        <li>Placement Drive By Cognizant Shifted From 9th May To 21st May 2014..</li><br/>
                        <li>New Notes Of D.S.P.M Uploaded..</li><br/>
                        <li>New Notes Of Discrete Structure Uploaded..</li><br/>
                        <li>Students With Attendence Less Than 75% Will Be Detained According To The Rules Of University</li><br/>
                       <!-- <li><a class="no_style" href="http://de.hdstockphoto.com" title="HD Stock Photo"  target="_blank">Integer placerat dolor vel</a></li>-->
                        <li>New Notes Of Micro-Processors Uploaded..</li><br/>
                       	<li>New Notes Of Software Engineering Uploaded..</li><br/>
                    </ul>
 					</marquee>
				</div>
                
            </div> <!-- end of sidebar -->
            
            <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
    	<a href="#templatemo_header" class="goto_top"></a>
    	<div class="col_4">
        	<h5>Pages</h5>
            <ul class="footer_list">
            	<li><a href="home.html">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="portfolio.html">Portfolio</a></li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="contact.html">Contact</a></li>
			</ul>
        </div>
        
        <div class="col_4">
        	<h5>Partners</h5>
            <ul class="footer_list">
            	<li><a rel="nofollow" href="http://www.flashmo.com/">Free Flash Templates</a></li>
                <li><a rel="nofollow" href="http://www.templatemo.com/">Free CSS Templates</a></li>
                <li><a rel="nofollow" href="http://www.flashmo.com/store">Preminum Templates</a></li>
                <li><a href="http://www.koflash.com/">Website Gallery</a></li>
                <li><a href="http://www.webdesignmo.com/blog/">Web Design Resources</a></li>
			</ul>             
        </div>
        
        <div class="col_4">
        	<h5>Twitter</h5>
            <ul class="twitter_post">
	            <li>Suspendisse at scelerisque urna. Aenean tincidunt massa in tellus varius ultricies.</li>
                <li>Proin dignissim, diam nec <a href="#">@TemplateMo</a> enim lorem tempus orci, ac ante purus in justo.</li>
			</ul>
        </div>
        
        <div class="col_4 col_l">
        	<h5>Follow Us</h5>
            <div class="footer_social_button">
                <a href="http://www.facebook.com/templatemo"><img src="images/facebook.png" title="facebook" alt="facebook" /></a>
                <a href="#"><img src="images/flickr.png" title="flickr" alt="flickr" /></a>
                <a href="#"><img src="images/twitter.png" title="twitter" alt="twitter" /></a>
                <a href="#"><img src="images/youtube.png" title="youtube" alt="youtube" /></a>
                <a href="#"><img src="images/feed.png" title="rss" alt="rss" /></a>
			</div>
            <div class="cleaner h40"></div>
            
        	Copyright © 2048 <a href="#">Company Name</a> <br /> 
            Designed by <a href="http://www.templatemo.com" rel="nofollow" target="_parent">Free CSS Templates</a>
      		
		</div>
        
        <div class="cleaner"></div>
    </div>
</div>


<script type='text/javascript' src='js/logging.js'></script>
</body>
</html>