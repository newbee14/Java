<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Platinum Theme - About Our Company</title>
<meta name="keywords" content="platinum, about us, our company, free templates, website templates, CSS, HTML" />
<meta name="description" content="Platinum Theme - free CSS template provided by templatemo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style2.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />

<script src="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script  type="text/javascript" src="js_of_clicks/myscript.js">
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
});
</script>


</head>
<body>

<div id="templatemo_wrapper">

    <div id="templatemo_header">
        <div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Free CSS Templates</a></h1></div>
       <div style="width: 700px; height: 52px;float:right">
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
        </div>
        </div> <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content">
				<a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
                        <div id="NoDues" class="animate form">
                            <form  autocomplete="on" name="ForgetPasswordForm" method="post"> 
                                <h1>No Dues</h1> 
                          			<div id="main" style="margin-bottom: 20px;">
                          		
                          			<div style="float: left;margin-left: 50px;padding-top: 14px"><label for="rollnumber">RollNumber</label></div>
                          			<div style="float: left; margin-left: 20px"><input type="text" name="rollnumber" style="width: 160px; " value="${useratt.username}" disabled="disabled"/></div>
                          			<div style="float: left;margin-left: 50px;padding-top: 14px"><label for="name">Name</label></div>
                          			<div style="float: left;margin-left: 30px"><input type="text" name="name" style="width: 160px;" value="${useratt.name}"  disabled="disabled"/></div>
									<div class="cleaner"></div>
									<div style="float: left;margin-left: 50px;padding-top: 14px"><label for="batch">Batch</label></div>
                          			<div style="float: left; margin-left: 60px"><input type="text" name="batch" style="width: 160px;" value="${useratt.batch}" disabled="disabled"/></div>
                          			<div style="float: left;margin-left: 50px;padding-top: 14px"><label for="branch">Branch</label></div>
                          			<div style="float: left;margin-left: 20px"><input type="text" name="branch" style="width: 160px;" value="${useratt.branch}"  disabled="disabled"/></div>
                          			                          			
                          			
                          			
                          			</div>
                          			<div class="cleaner"></div>
                          			<div id="main_dues"><div id="inside-main" style="padding:50px 0px 80px 50px">
                          			<div style="float: left; padding-top:15px;">Teacher</div>
                          			<div  style="float: left;margin-left:50px;"><c:choose> 
											    <c:when test= "${teacheratt==false}">
											     	<img src="images/red_dues_pending.png" />
											    </c:when>
											<c:otherwise>
											 		<img src="images/green_dues_cleared.png" />
											</c:otherwise></c:choose>
										</div>
										<div style="float: left;padding:15px 0px 0px 95px">
									Warden</div>
									<div style="float: left; margin-left:50px"><c:choose> 
											    <c:when test= "${wardenatt==false}">
											     	<img src="images/red_dues_pending.png" />
											    </c:when>
											<c:otherwise>
											 		<img src="images/green_dues_cleared.png" />
											</c:otherwise>
									</c:choose></div>
									
									</div>
									<div class="cleaner"></div>
									<div id="inside-main1">
									<div style="float: left;padding:15px 0px 0px 50px">Librarian</div>
									<div style="float: left;margin-left:40px"><c:choose> 
											    <c:when test= "${librarianatt==false}">
											     	<img src="images/red_dues_pending.png" />
											    </c:when>
											<c:otherwise>
											 		<img src="images/green_dues_cleared.png" />
											</c:otherwise>
									</c:choose></div>
								<div style="float: left;padding:15px 0px 0px 95px">	Accountant</div>
									<div style="float: left;margin-left:30px"><c:choose> 
											    <c:when test= "${accountantatt==false}">
											     	<img src="images/red_dues_pending.png" />
											    </c:when>
											<c:otherwise>
											 		<img src="images/green_dues_cleared.png" />
											</c:otherwise>
									</c:choose></div></div>
                          			
                          			</div><!-- -Main-dues closed -->
                         <!--             <p class="login button" > 
                                    <input type="button" value="Submit" onclick="ForgetPasswordViaJs()" style="margin-top: 20px; margin-right:88px; width: 100px;" /> 
                                    
								</p> -->   
								<p><span id="responseForgetPassArea"></span></p>
                              
                            </form>
                        </div>

                      
                    </div>            </div>
    
            <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->
<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>