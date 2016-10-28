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
          
   </div> <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content">
				<a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
                        <div id="login" class="animate form">
                            <form  name="StaffRegistrationForm" method="post"  autocomplete="on"> 
                                <h1>Staff Registration</h1> 
                                <p> 
                                    <label for="staffId" class="uname" >Staff ID/Username</label>
                                    <input   name="staffid"  type="text" readonly disabled="disabled" value="${staffID_att}"/>
                                </p>
                                <p> 
                                    <label for="facultyname" class="youmail"  >Faculty Name</label>
                                    <input id="emailsignup" name="facultyname" required type="text" onkeypress="return onlyAlphabets(event,this);" /> 
                                </p>
                                <p> 
                                    <label for="Designation" class="youmail"  > Designation</label><br/>
                                    <select class="usertype" name="designation">
                                    <option value="select">-select-</option>
                                    <option value="accountant">Accountant</option>                                    
                                    <option value="hostel warden">Hostel Warden</option>
                                    <option value="hod">H.O.D</option>
                                    <option value="librarian">Librarian</option>
                                    <option value="teacher">Professors/Teachers</option>
                                    <option value="accountant">Transport officer</option>
                                                                    
                                    </select>
                                </p>
                                <p>
                                <label class="uname" for="branch"> Branch</label><br/>
                                    <select class="usertype" name="branch">
                                     <option value="select">-select-</option>
                                    <option value="nonteaching">Non-Teaching</option>
                                    <option value="cse">CSE</option>
                                    <option value="ece">ECE</option>
                                    
                                    </select>
                                 </p>
                                      <p>
                                <label class="uname" for="qualification"> Qualification</label><br/>
                                    <select class="usertype" name="qualification">
                                    <option value="select">-select-</option>
                                    <option value="phd">PHD</option>
                                    <option value="mtech">MTECH</option>
                                    <option value="btech">BTECH</option>
									 <option value="mca">MCA</option>
                                    <option value="bca">BCA</option>                                    
                                    </select>
                                 </p>
                                 <p>
                                  <label class="uname" for="gender"> Gender</label><br/>
                                    <select class="usertype" name="gender">
                                     <option value="select">-select-</option>
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                 
								                         
                                    </select></p>
                               	<p> 
                                    <label for="dob" class="youpasswd" >Date of birth </label>
                                    <input id="passwordsignup_confirm" name="dob" required  type="date" />
                                </p>
                                <p> 
                                    <label for="doj" >Date of joining </label>
                                    <input name="doj" required  type="date" max="2014-05-20" />
                                </p>
                                
                                 <p> 
                                    <label for="password" class="youpasswd" >Enter your password </label>
                                    <input id="passwordsignup_confirm" name="password" required type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                
                                <p> 
                                    <label for="passwordconfirm" class="youpasswd" >Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="confirmpassword" required type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail"  > Your email</label>
                                    <input id="emailsignup" name="email" required type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="phone" class="youmail"  > Your Mobile Number</label>
                                    <input id="emailsignup" name="phone" required type="tel" placeholder="10-digits" min="10"/> 
                                </p>
                                <p> 
                                    <label for="address" class="youmail"  > Your Address</label>
                                    <input id="emailsignup" name="address" required type="textarea" placeholder="address" min="10"/> 
                                </p>
                                
                                
                                <p class="signin button"> 
									<input type="button" value="Register" onclick="registerStaffViaJs()"/> 
								</p>
								<div id="responsearea1" style="width:auto;height: auto">
                    </div>
                               
                              </form>
                        </div>                    
						
                    </div>            
                  </div>
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