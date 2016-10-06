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
})
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
            <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content">
				<a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
                        <div id="view/modify" class="animate form">
                        <div style="width:500px; height:12px; float:left; padding: 140px ; padding-top: 0px">
                     <form  name="ViewOrModifyForm" action="StudentModifyDetailsServlet" method="post"> 
                                                     <h1> View/Modify Own Details </h1> 
                               <p> 
                                    <label for="usernamemodify" class="uname" style=" width:200px; padding-right: 60px">Your Roll Number/Username</label>
                                    <input id="username" name="username" style="width: 200px" required type="text" value="${usertypeatt.username}" readonly/>
                                </p>  	
                                <p> 
                                    <label for="namemodify" class="name"  >Your Name</label>
                                    <input id="name" name="name"  type="text" value="${useratt.name}" onkeypress="return onlyAlphabets(event,this);"/> 
                                </p>
                                <p> 
                                    <label for="branchmodify" class="branch">Branch</label><br/>
                             		<select name="branch" style="width: 500px;height:40px">
              							<option value="${useratt.branch}">${useratt.branch}</option>
              							<option value="ece">ece</option>
              							<option value="cse">cse</option>
              							<option value="mca">mca</option>
              							
              						</select>                  
                                </p>
                                <p>
                                <label class="batch" for="batch"> Batch</label><br/>
                                    <select name="batch" style="width: 500px;height:40px">
              							<option value="${useratt.batch}">${useratt.batch}</option>
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
                                    <label for="dobmodify" class="dob" >Date of birth </label>
                                    <input id="dob" name="dob"   type="date" value="${useratt.dob}" readonly/>
                                </p>
                                  <p>
                                  <label class="gender" for="gender"> Gender</label><br/>
                                    
                                     <input id="gender" name="gender"   type="text" value="${useratt.gender}" readonly />
                                 
								                         
                                    
                               	</p> 
                                <p> 
                                    <label for="mobilenumber" class="youmail"  > Your Mobile Number</label>
                                    <input id="mobilenumber" name="mobilenumber"  type="tel" value="${useratt.mobilenumber}"/> 
                                </p>
                                <p> 
                                    <label for="addressmodify" class="youmail"  > Your Address</label>
                                    <input id="address" name="address"  type="text" value="${useratt.address}"/> 
                                </p>
                                
                                
                                <table style ="width:500px" cellspacing="0" cellpadding="0">
                                <tr>
									<td>
										 <p class="modify button"> 
										 <input type="button" style="width: 200px" value="Modify Details" onclick="modifyStudentDetailsJS()"/> 
										 </p>
          							</td>
          						</tr>
          						</table>
          						<div id="responsearea1" style="width:auto;height: auto">
                    </div>
                                   </form>
                        </div>

                        
						
                    </div>            </div>
         
                 </div> <!-- end of sidebar -->
            
            <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
   
</div> <!-- end of wrapper -->
		</div>
         
<script type='text/javascript' src='js/logging.js'></script>
</body>
</html>