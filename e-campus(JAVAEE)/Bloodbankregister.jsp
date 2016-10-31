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

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<script type="text/javascript" src="js_of_clicks/bloodDonorJS.js"></script>
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
<body onload="bloodDonorJS()">

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
            <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content" style="border:medium double #333; padding-left:20px;margin-left:155px;border-radius:20px">
				
                <h2 style="font-weight: bold;">Blood Bank Registration</h2>
                <p><h4>Do You Feel You Dont have much to offer..??
                 You have the most precious resource of all: the ability to save a life by  
                 <span style="color:Red; font-weight: bold;">&quot;DONATING BLOOD&quot;</span>..</h4></p>
                <div class="cleaner h20"></div>
              <div id="contact_form">
                	<form method="post" name="BloodDonationRegistrationForm" action="BloodDonorServlet" >
					
						<label for="donorid">donorid</label>
                        <input type="text" style="width:230px" id="author" name="donorid" class="validate-email required input_field" disabled="disabled" required="required" value=""/>
                        <div class="cleaner h10"></div>
                    
                        <label for="name">Name:</label>
                        <input type="text" style="width:230px" id="author" name="name" class="validate-email required input_field" value="${useratt.name}" readonly="readonly"/>
                        <div class="cleaner h10"></div>
                                                                        
                        <label for="designation">Designation</label>
                         <select name="designation" style="width:230px" id="email" class="validate-email required input_field" >
                        
                        <option value="student">Student</option>
                        </select>
                        <div class="cleaner h10"></div>
                                                                
                    	<label for="age">Age:</label> 
                    	<input type="text" class="validate-subject required input_field" name="age"  id="age" required="required"/>				               
                        <div class="cleaner h10"></div>
                                                
                        <label for="gender">Gender</label> 
                        <input type="text" style="width:230px" id="author" name="gender" class="validate-email required input_field" value="${useratt.gender}" readonly="readonly"/>
                        <div class="cleaner h10"></div>
                        
                       
                        <div class="cleaner h10"></div>
                        
                         
                                                                        
                        <label for="bloodgroup">Blood Group</label>
                         <select name="bloodgroup" style="width:230px" class="validate-email required input_field" >
                         
                        <option value="a positive">A+</option>
                        <option value="a negative">A-</option>
                        <option value="b positive">B+</option>
                        <option value="b negative">B-</option>
                        <option value="ab positive">AB+</option>
                        <option value="ab negative">AB-</option>
                        <option value="o positive">O+</option>
                        <option value="o negative">O-</option>
                        </select>
							
                        <div class="cleaner h10"></div>
                                                                
                    	<label for="mobilenumber">Contact Number</label>
                    	 <input type="tel" style="width:230px" class="validate-subject required input_field" name="mobilenumber" id="subject" required="required" max="10" min="10" value="${useratt.mobilenumber}" readonly="readonly"/>				               
                        <div class="cleaner h10"></div>
                        				
                        <div class="cleaner h10"></div>
                                                                
                    	<label for="diseases">Diseases(if any)</label> 
                    	<textarea rows="4" cols="4" class="validate-subject required input_field" name="diseases" id="subject"  ></textarea>      
                    	<div class="cleaner h10"></div>                
                                                                    
                        <input type="button" value="Submit"   class="submit_btn float_l" onclick="addBloodGroup()"/>
                        
                                            
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