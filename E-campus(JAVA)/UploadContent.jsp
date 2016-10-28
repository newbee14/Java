<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Platinum Theme - Contact Form</title>
<meta name="keywords" content="platinum, contact page, email form, free templates, website templates, CSS, HTML" />
<meta name="description" content="Platinum Theme, Contact Page, Email Form, free CSS template by templatemo.com" />
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
        </div> <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    <div id="Wrapp" >
        	<div id="content" style="margin-left: 70px">
        	<div style="padding-left: 290px;">
                <h2>Upload Files</h2>
            
                <div class="cleaner h20"></div>
              <div id="contact_form" style="border:double medium #333333;border-radius:20px; margin:10px">
                	<form method="post" name="contact" action="FileUploadServlet" enctype="multipart/form-data">
                	<table align="center">
                	<tr>
                		<td height="50">	Description/Title</td><td><input type="text" name="description"  style="width: 300px" />                		  </input></td>
                	</tr>
                	<tr>
                		<td height="44">Type Of Conent</td>
                			<td>	<select class="content" name="content">
                              	<option>-select-</option>
                                <option value="syllabus">Syllabus</option>
                                <option value="notes">Notes</option>
                                <option value="questionpapers">Question Papers</option>
                                </select>
                            </td>
                	</tr>
                	</table>
                <!--  	<div> <b>Description/Title : </b> <input type="text" name="description"  style="width: 350px"/>                	               	
                	</div><div class="cleaner h20"></div> -->
                	
                	<div style="margin-left:90px">
                	  <input type="file" name="syllabus"/>
                	  <br/><br/>
                        <input type="submit" value="Upload"/><br/>
                        
                	</div>
				   <div class="cleaner h20"></div>
				
                    </form>
                </div>
                </div>
                <div class="cleaner h20"></div>
        
                
                <div class="cleaner"></div>
            </div>
            <div id="sidebar"></div> <!-- end of sidebar -->
            
            <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->

<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>