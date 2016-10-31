<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Platinum Theme - Contact Form</title>
<meta name="keywords" content="platinum, contact page, email form, free templates, website templates, CSS, HTML" />
<meta name="description" content="Platinum Theme, Contact Page, Email Form, free CSS template by templatemo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script type="text/javascript" src="js_of_clicks/EMagazine.js"></script>
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
<body >

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
    	<div id="templatemo_main">
          	<div id="content" style="border:medium double #333; padding-left:20px;margin-left:155px">
				
                <h2>Add New Post</h2>
                <div class="cleaner h20"></div>
              <div id="contact_form">
                	<form method="post" name="AddEMagazine" action="AddEMagazineServlet" enctype="multipart/form-data" >
                        <div class="cleaner h10"></div>
                         
                        <label for="articleid" style="width: auto;">Select Page Content You Want To replace(Starting From 2)</label>
                        <select name="articleid" style="width:230px" id="email" class="validate-email required input_field" >
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
                        <option value="9">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        </select>
                        
                        <div class="cleaner h10"></div>
                        
                        <label for="username">Username:</label>
                        <input type="text" style="width:550px" id="author2" name="username" class="validate-email required input_field" value="${usertypeatt.username}" readonly="readonly"/>
                        <div class="cleaner h10"></div>
                        
                        <div class="cleaner h10"></div>
                        
                        <label for="name">Name:</label>
                        <input type="text" style="width:550px" id="author2" name="name" class="validate-email required input_field"  value="${staffatt.facultyname}" readonly="readonly"/>
                        <div class="cleaner h10"></div>
                        
                        
                        <div class="cleaner h10"></div>
                        
                        <label for="branch">Branch:</label>
                        <input type="text" style="width:550px" id="author2" name="branch" class="validate-email required input_field" value="${staffatt.branch}" readonly="readonly">
                        <div class="cleaner h10"></div>
                     
                    
                        <label for="title">Title:</label>
                        <input type="text" style="width:550px" id="author2" name="title" class="validate-email required input_field" required="required"/>
                        <div class="cleaner h10"></div>
                        
                        <label for="category">Select Category</label>
                        <select name="category" style="width:230px" id="email" class="validate-email required input_field" >
                        <option value="article">Article</option>
                        <option value="poems">Poems</option>
                        <option value="technology">Technology</option>
                        <option value="jokes">Jokes</option>
                        <option value="food">Food</option>
                        <option value="shayari">Shayari</option>
                        <option value="sports">Sports</option>
                        <option value="others">Others</option>
                        </select>
                        
                                                                
                    	<label for="emagazineimage" style="width:auto;">Upload Image Regarding This:</label>
                        <input type="file" id="author2" style="width:auto;" name="pic" class="validate-email required input_field" required onchange="readURL(this);" required="required"/>
                        
                        	<img id="mypic" src="" width="300px" height="163px" alt="" style="float: left;border: solid;"/>
                        
                        <div class="cleaner h10"></div>
                    	
                    	
                    	<label for="theme" style="width:auto">Article Theme(Max 100 Words)</label> 
                        <textarea style="width:550px;height:100px" class="validate-subject required input_field" name="theme" id="subject" required="required"></textarea>				               			
               	
                        <div class="cleaner h10"></div>
               
               <label for="completearticle">Complete Article</label> <textarea style="width:550px" class="validate-subject required input_field" name="completearticle" id="subject" required="required"></textarea>				               				
               					 <div class="cleaner h10"></div>
               
               	      <input type="submit" value="Submit" name="submit" class="submit_btn float_l" />
                	</form>
                </div>
                
                <div class="cleaner h20"></div>
              <div class="cleaner"></div>
            </div><!-- end of sidebar -->
            
          <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->

<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>