<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Platinum Theme - About Our Company</title>
<meta name="keywords" content="platinum, about us, our company, free templates, website templates, CSS, HTML" />
<meta name="description" content="Platinum Theme - free CSS template provided by templatemo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />

<script language="javascript" type="text/javascript">
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
<body>

<div id="templatemo_wrapper">

    <div id="templatemo_header">
        <div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Free CSS Templates</a></h1></div>
        <div style="width:700px; height:52px; float:right">
           <ul id="menu">
	<li><a href="StudentHome.jsp">Home</a></li>
            <li> <a href="">View</a>
              <ul>
                
                
                <li> <a href="ViewNotesServlet">Notes</a>
                  
                </li>
                
                <li> <a href="ViewPapersServlet">Previous Years Papers</a>
                  
                </li>
                <li> <a href="ViewSyllabusServlet">Syllabus</a>
                  
                </li>
                <li> <a href="ViewSeatingArrangement.jsp">Seating Plan</a>
                  
                </li>
              </ul>
            </li>
            <li> <a href="">Blood Bank</a>
              <ul>

                <li> <a href="Bloodbankregister.jsp">Register</a></li>
              </ul>
            </li>
            <li><a href="">E-Magazine</a>
              <ul>
                <li> <a href="EMagazineStudent.jsp">View E-Magazine</a></li>
                <li> <a href="AddEMagazine.jsp">Upload Content</a></li>
              </ul>
            </li>
            
            
            <li><a href="">Account Settings</a>
              <ul>
              <li> <a href="ModifyDetailsofStudent.jsp">Modify Details</a></li>
                <li> <a href="ChangeStudentPassword.jsp">Edit Password</a></li>
                <li> <a href="LogoutServlet">Logout</a></li>
              </ul>
            </li>
</ul>
        </div> <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content" style="padding-left: 30px; width: 590px; border: double medium rgb(0,0,0); padding-bottom: 30px; box-shadow: 3px 3px 4px 4px rgb(153,153,153); border-radius: 20px;">
				<h2>Notice Details....</h2>
			  <div style="padding: 80px; width: 407px; height: 257px; font-family: Verdana, Geneva, sans-serif; font-size: 14px; background-image: url(images/clipper.png); background-repeat: no-repeat;" id="NoticeDescription">${descriptiondeptatt}</div>
			  <div class="cleaner"></div>
            </div>
            <div id="sidebar">
              <div class="sb_box" style="margin-top:140px">
                <h3 align="center">Information.</h3>
                    <p class="testimonial" align="center" style="padding-left:30px;padding-right:20px">Students Are Hereby Informed That These Notices Are Still Not Finalized And May Get Altered In The Time Being....<br>
                      <br>
                    Be In Touch To Get Regularly Updated.....</p>
                    <div class="cleaner"></div>
              </div>
            </div> <!-- end of sidebar -->
            
            <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->
<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>