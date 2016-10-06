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
})
</script>


</head>
<body>

<div id="templatemo_wrapper">

    <div id="templatemo_header">
        <div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Free CSS Templates</a></h1></div>
     <div style="width: 700px; height: 52px;float:right">
          <ul id="menu">
           <li><a href="StaffHome.jsp">Home</a></li>
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
                  <li><a href="StudentStatusUpdation.jsp">Update Students Status</a></li>
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
              <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content">
				<a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
                        <div id="changepassword" class="animate form">
                        <div style="width:500px; height:12px; float:left; padding: 140px ; padding-top: 0px">
                     <form  name="ChangeStaffPasswordForm" method="post"> 
                                                     <h1> Change Your Password </h1> 
                               <p> 
                                    <label for="username" class="uname" style=" width:200px; padding-right: 60px">Username</label>
                                    <input id="username" name="username" style="width: 200px" required="required" type="text" value="${usertypeatt.username}" readonly="readonly"/>
                                </p>
                               
                               
                               <p> 
                                    <label for="oldpassword" class="uname" style=" width:200px; padding-right: 60px">Old Password</label>
                                    <input id="oldpassword" name="oldpassword" style="width: 200px" required="required" type="password" />
                                </p>
                                		
                                <p> 
                                    <label for="newpassword" class="name" style=" width:200px; padding-right: 60px" >New Password</label>
                                    <input id="newpassword" name="newpassword"  style="width: 200px" type="password" /> 
                                </p>
                                <p> 
                                    <label for="confirmnewpassword" class="branch" style=" width:200px; padding-right: 60px" > Confirm New Password</label>
                                    <input id="confirmnewpassword" name="confirmnewpassword" style="width: 200px" type="password" /> 
                                </p>
                                <table style ="width:500px" cellspacing="0" cellpadding="0">
                                <tr>
									<td>
										 <p class="pswd button"> 
										 <input type="button" style="width: 200px" value="Change Password" onclick="changeStaffPassword()"/> 
										 </p>
          							</td>
          							
          						</tr>
								<tr align="right"><td><span style="width: 200px;height: 50px" id="wrongstaffpasswordarea"></span></td></tr>	
          						</table>
                                   </form>
                        </div>

                        
						
                    </div>            </div>
         
                 </div> <!-- end of sidebar -->
            
            <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
    
    
</div> <!-- end of wrapper -->
<script type='text/javascript' src='js/logging.js'></script>

</html>