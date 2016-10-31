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
***********************************************/

</script>
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
<body onload="fetchNoticeOnLoad()">

<div id="templatemo_wrapper">
		<div id="templatemo_header">
		
        <div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Free CSS Templates</a></h1></div>
        <div style="width:700px; height:52px; float:right">
           <ul id="menu">
	<li><a href="AdminHome.jsp">Home</a></li>
	<li><a href="StaffRegisteration.jsp">Register Staff</a></li>
	
	<li> <a href="">Upload</a>
                  <ul>
                    <li><a href="SeatingArrangementUpload.jsp">Seating Plan</a></li>
                    <li><a href="StaffStatusUpdate.jsp">Update Status</a></li>
                    <li><a href="AddNotice.jsp">Upload Notice</a></li>
					
                  </ul>
                </li>
	
	<li> <a href="">View</a>
                  <ul>
 
					<li><a href="ViewStaffByDesignation.jsp">View Staff</a></li>
                  </ul>
                </li>
                
	<li><a href="LogoutServlet">Logout</a></li>
</ul>
        </div>
        
        </div>
	<!-- end of header -->
    
    <div id="templatemo_middle" style="width:960px"><script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
            <script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
            <script type="text/javascript">
            $(window).load(function() {
                $('#slider').nivoSlider();
            });
            </script>
        <div class="cleaner"><img src="images/for-admin.png" width="960" height="300"></div>
    </div> <!-- end of middle -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">

          	<div id="content">
                    <h3 align="center">Your Notice Board..</h3>
				<div class="post">
                
                  
                 <div class="noticeboardimages">
                   <table width="620" border="0" align="center" class="tablepadding">
                     <tr>
                       <td height="176"><div class="pinimagesdiv"><div class="noticecontentpadding" id="NoticeBoard1" onclick="fetchNoticeDescriptionForAdmin(1)">vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div>
                       </div></td>
                       <td><div class="pinimagesdiv"> <div class="noticecontentpadding" id="NoticeBoard2" onclick="fetchNoticeDescriptionForAdmin(2)">vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div></div></td>
                       <td><div class="pinimagesdiv"> <div class="noticecontentpadding" id="NoticeBoard3" onclick="fetchNoticeDescriptionForAdmin(3)">vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div></div></td>
                     </tr>
                     <tr>
                       <td height="218"><div class="pinimagesdiv"><div class="noticecontentpadding" id="NoticeBoard4" onclick="fetchNoticeDescriptionForAdmin(4)"> vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div></div></td>
                       <td><div class="pinimagesdiv"> <div class="noticecontentpadding" id="NoticeBoard5" onclick="fetchNoticeDescriptionForAdmin(5)">vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div></div></td>
                       <td><div class="pinimagesdiv"> <div class="noticecontentpadding" id="NoticeBoard6" onclick="fetchNoticeDescriptionForAdmin(6)">vrrrrhfkenfekf mefej fjf jfje ndv ned djej cdncd dj cdjcdmc n de ndd djd</div></div></td>
                     </tr>
                   </table>
                 
                 
                  
                  
                 </div>
			  </div>
				<div class="cleaner"></div>
            </div>
            <div id="sidebar">
              <div class="sb_box">
                <h3>Placement Drives</h3>
                   <marquee direction="up" scrollamount="2">
                    <ul class="templatemo_list">
                        <li>Placement Drive By Kayako on 15th May 2014</li>
                        <li>Placement Drive By Cognizant on 18th May 2014</li>
                        <li>Placement Drive By Amdocs on 20th May 2014</li>
                        <li>Placement Drive By Google on 23th May 2014</li>
                        <li><a class="no_style" href="http://de.hdstockphoto.com" title="HD Stock Photo"  target="_blank">Integer placerat dolor vel</a></li>
                        <li>Placement Drive By Facebook on 27th May 2014</li>
                        
                    </ul>
 					</marquee>
				</div>
                
            </div> <!-- end of sidebar -->
            
            <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->

<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include></body>
</html>