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
<script  type="text/javascript" src="js_of_clicks/bloodDonorJS.js">
</script>
<script  type="text/javascript" src="js_of_clicks/EMagazine.js">
</script>
<script  type="text/javascript" src="js_of_clicks/idgeneration.js">
</script>
<script  type="text/javascript" src="js_of_clicks/TransportPoutes.js">
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
          
        </div>        <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content">
				<div id="wrapper" style="border: double medium rgb(0,0,0);box-shadow: 3px 3px 4px 4px rgb(153,153,153); border-radius: 20px;padding:20px">
                
                        <div >
                            <form  name="StudentRegistrationForm"  method="post"> 
                                <h1>Register New Student </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname" >Roll Number/Username</label>
                                    <input id="usernamesignup" name="username" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="name" class="youmail"  >Name of Student</label>
                                    <input id="name" name="name" required="required" type="text" onkeypress="return onlyAlphabets(event,this);"/> 
                                </p>
                                <p> 
                                    <label for="branch" class="youmail"  > Branch</label><br/>
                                    <select class="usertype" name="branch">
                                     <option value="select">-select-</option>
                                    <option value="cse">CSE</option>
                                    <option value="ece">ECE</option>
                                    <option value="mca">MCA</option>
                                 </select>
                                </p>
                                <p>
                                <label class="uname" for="batch"> Batch</label><br/>
                                  <select class="usertype" name="batch">
                                    <option value="select">-select-</option>
                                    <option value="2007">2007</option>
                                    <option value="2008">2008</option>
                                    <option value="2009">2009</option>
                                    <option value="2010">2010</option>
                                    <option value="2011">2011</option>
                                    <option value="2012">2012</option>
                                    <option value="2013">2013</option>
                              </select>
                                 </p>
                                 
                              <p> 
                                    <label for="dob" class="youpasswd" >Date of birth </label>
                                    <input id="passwordsignup_confirm" name="dob" required="required"  type="date" />
                                </p>
                                  <p>
                                  <label class="uname" for="gender"> Gender</label><br/>
                                    <select class="usertype" name="gender">
                                     <option value="select">-select-</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                 
								                         
                                    </select>
                               	</p> 
                                <p> 
                                    <label for="password" class="youpasswd" >Password </label>
                                    <input id="passwordsignup" name="password" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="confirmpassword" class="youpasswd" >Please confirm Password </label>
                                    <input id="passwordsignup_confirm" name="confirmpassword" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail"  > E-mail</label>
                                    <input id="emailsignup" name="email" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="mobilenumber" class="youmail"  > Mobile Number</label>
                                    <input id="emailsignup" name="mobilenumber" required="required" type="tel" placeholder="10-digits" min="10" max="10"/> 
                                </p>
                                <p> 
                                    <label for="mobilenumber" class="youmail"  > Address</label>
                                    <input id="emailsignup" name="address" required="required" type="text" placeholder="address"/> 
                                </p>
                                
                                
                                <p class="signin button"> 
									<input type="button" value="Sign up" onclick="registerStudentViaJs()"/> 
								</p>
								<div id="responsearea" style="width:auto;height: auto">
                    </div>
                            </form>
                        </div>
						
                    </div>            </div>
                    
                    
                    
         <div id="sidebar">
           <div class="sb_box" style="margin-top:140px">
             <h3 align="center">Information.</h3>
             <p class="testimonial" align="center" style="padding-left:30px;padding-right:20px">These Details Can Be Easily Modified Later On In The Modify Tab By Students....</p>
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