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
            <li><a href="TransportOfficerHome.jsp">Home</a></li>
            <li> <a href="">View</a>
              <ul>
            	  <li><a href="">E-Magazine</a>
              		<ul>
                		<li> <a href="EMagazineTransportOfficer.jsp">View E-Magazine</a></li>
                	</ul>
            	</li>
              	<li> <a href="">No Dues</a>
                  <ul>
                    <li><a href="NoDuesTransportOfficer.jsp">Update No Dues</a></li>
                  </ul>
                </li>
               
                
              </ul>
            </li>
            <li> <a href="">Transportation</a>
                	<ul>
                  		<li><a href="AddBus.jsp">Add Buses' Routes</a></li>
                   		
                  	</ul>
                </li>
                
            <li> <a href="">Blood Bank</a>
              <ul>
  
                <li> <a href="BloodbankregisterTransportOfficer.jsp">Register</a></li>
              </ul>
            </li>
            <li><a href="">Account Settings</a>
              <ul>
              <li> <a href="ModifyDetailsOfNonTeachingStaff.jsp">Modify Details</a></li>
                <li> <a href="ChangeTransportOfficerPassword.jsp">Edit Password</a></li>
                <li> <a href="LogoutServlet">Logout</a></li>
              </ul>
            </li>
          </ul>
          
        </div> <!-- end of menu -->
    </div> <!-- end of header -->
    
    <div id="templatemo_main_wrapper">
   		<div id="templatemo_main">
          	<div id="content">
				<a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
						<div id="wrapper">
                        <div id="view/modify" class="animate form">
                        <div style="width:500px; height:12px; float:left; padding: 140px ; padding-top: 0px">
                     	
              	          <h1> View/Modify Own Details </h1> 
                          <form name="ViewOrModifyStaffForm" action="" method="post">
                          	<p> 
                         	   <label for="usernamemodify" class="uname" style=" width:200px; padding-right: 60px">StaffID</label>
                               <input id="staffid" name="staffid" style="width: 200px" required type="text" value="${usertypeatt.username}" readonly/>
                            </p>
                           <!--  <p class="view button"> 
							 	<input type="button" style="width: 200px" value="View Details" onclick="viewStaffDetailsJS()"/> 
							</p> -->
							<p> 
                           		<label for="namemodify" class="name"  >Name</label>
                                <input id="facultyname" name="facultyname"  type="text" value="${nonteachingstaffatt.facultyname}" onkeypress="return onlyAlphabets(event,this);"/> 
                            </p>
                            <p> 
                                <label for="designationmodify" class="designation" >Designation</label>
                                <input id="designation" name="designation"  type="text" value="${nonteachingstaffatt.designation}" readonly/> 
                            </p>
                            <p>
                                <label class="branch" for="branch"> Branch</label><br/>
                                <input id="branch" name="branch"  type="text" value="${nonteachingstaffatt.branch}" readonly/>
                            </p>
                            <p>
                                <label class="qualification" for="qualification">Qualification</label><br/>
                                <input id="qualification" name="qualification"  type="text" value="${nonteachingstaffatt.qualification}" readonly/>
                            </p>
                            <p>
                                <label class="gender" for="gender"> Gender</label><br/>
                                <input id="gender" name="gender"   type="text" value="${nonteachingstaffatt.gender}" readonly/>
                            </p>
                            <p> 
                                <label for="dobmodify" class="dob" >Date of birth </label>
                                <input id="dob" name="dob"   type="date" value="${nonteachingstaffatt.dob}" readonly/>
                            </p>
                            <p> 
                                <label for="dojmodify" class="doj" >Date of Joining </label>
                                <input id="doj" name="doj"   type="date" value="${nonteachingstaffatt.doj}" readonly/>
                            </p>  
                            <p> 
                                 <label for="mobilenumber" class="youmail"  > Mobile Number</label>
                                 <input id="phone" name="phone"  type="tel" value="${nonteachingstaffatt.phone}"/> 
                            </p>
                            <p> 
                                 <label for="addressmodify" class="youmail"  > Address</label>
                                 <input id="address" name="address"  type="text" value="${nonteachingstaffatt.address}"/> 
                            </p>
                            <table style ="width:500px" cellspacing="0" cellpadding="0">
                                <tr>
									<td>
										 <p class="modify button"> 
										 <input type="button" style="width: 200px" value="Modify Details" onclick="modifyStaffDetailsJS()"/> 
										 </p>
          							</td>
          						</tr>
          		 			</table>
                      </form>
                 </div>
            </div>
       </div>
    </div> <!-- end of sidebar -->
   <div class="cleaner"></div>
  </div> <!-- end of main -->
 </div> <!-- end of main wrapper -->
 
</div> <!-- end of wrapper -->
</div>
<script type='text/javascript' src='js/logging.js'></script>
</body>
</html>