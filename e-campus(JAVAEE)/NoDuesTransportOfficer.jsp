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
<script type="text/javascript">window.history.forward();
function noback(){
	window.history.forward();
}
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
    	
    	 <!-- div style="padding:10px;font-size: 16px;">
			<marquee behavior="scroll" scrollamount="3" bgcolor="#cccccc"
				width="100%"><b style="color:#3797DC;">Notice:</b>
				<a href="BasicServlet?id=NoDues">Students can check No Dues
					Slip here..</a>.
			</marquee>
			</div>
			-->
			
			
          	<div id="content">
				<a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
                        <div div id="NoDues" class="animate form">
                            <form  autocomplete="on" name="duesByNonTeachingStaff" action="DuesSubmissionByStaff" method="post"> 
                                <h1>Welcome ${nonteachingstaffatt.facultyname}</h1> 
                                <br/>
                                <br/>
                                  <h2 style="font-family:fantasy; font-size: 30px; color: #066A75; margin-top: -40px; padding-bottom: 10px;">No Dues Form</h2> 
                          			<div id="main" style="margin-bottom: 20px; margin-left:120px">
                          		
                          			<div style="float: left;padding-top: 10px"><label for="rollnumber">RollNumber</label></div>
                          
                          			<div style="float: left; margin-left: 30px"><input type="text" name="rollnumber" style="width: 160px; "/></div>
                          			  <p class="login button"> 
                                    <input type="button" value="Fetch" onclick="FetchDataOfStudentViaJS()"  style="margin-top: 3px;  margin-right:224px; width: 65px; height:30px;  padding-top:0px;padding-bottom:0px"/> 
                                    <p><span id="responseFetchRollArea"></span></p>
								      <div class="cleaner"></div>
								     
								         					<span id="displayMyContent"></span>
								         					
								    <div id="hiddenDueStatus" style="display: none;">				
                          			<div style="padding-top: 36px"><label for="branch">Due Status</label></div>
                          			<div style="float: left;margin-left: 106px; margin-top:-30px">
                          			<select class="usertype"  style="width:160px" name="duesval">
                          			<option>--select--</option>
                          			<option value="true">Cleared</option>
                          			<option value="false">Not Cleared</option>
                          			
                          			</select>
                          			
                          			</div>
                          			
                          			</div>   	
                          			</div>
                                
                                        <p class="login button"> 
                                    <input  type="button" value="Update" id="btnUpdate" onclick="duesSubmissionByStaff()" style="margin-top: 28px;  margin-right:224px; width: 65px; height:30px; margin-left:346px; display:none;"/> 
								</p>
								<p><span id="responseSubmission"></span></p>
                              
                            </form>
                        </div>

                      
                    </div>            </div>
      
            <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->
<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include></body>
</html>