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
<script  type="text/javascript" src="js_of_clicks/UserStatus.js">
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
          	<div id="content" style="margin-left:155px">
				<a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
                        <div id="login" class="animate form">
                            <form name="updateStudentStatus" method="post" action="ChangeStaffStatusServlet"> 
                                <h1>Update Staff Status</h1> 
                        
                                <p>
                              
                                    <label for="username" class="uname">Enter StaffID </label>
                                    <input id="username" name="username" required type="text" />
                                </p>
                                 <p class="login button"> 
                                    <input type="button" value="Fetch" onclick="FetchDataOfStaffViaJS()"  style=" width: 65px; height:30px;  padding-top:0px;padding-bottom:0px"/> 
                                    <p><span id="responseFetchStaffArea"></span></p>
                                
                        		 <p>
                                <span id="displayMyContent"></span>
                                </p>
                                  <div id="hiddenDiv" style="display: none;">
                                  <p > 
                                    <label for="status" class="uname" >Change Staff Status</label><br/>
                                      <select class="usertype" name="status" style="width: 90%">
		                              		<option>-select-</option>
		                                    <option value="active">active</option>
		                                    <option value="left">left</option>
		                                    <option value="suspend">suspend</option>
		                                    <option value="rusticate">rusticate</option>
		                                   
                                    </select> 
                                </p>
                                <p class="login button"> 
                                    <input type="submit" value="Update" /> 
								</p>
								<p><span id="updateStudentStatus"></span></p>
                              </div>
                            </form>
                        </div>

                      
                    </div>            </div><!-- end of sidebar -->
            
          <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->

<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>