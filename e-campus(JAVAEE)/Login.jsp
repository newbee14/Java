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
        <div style="width:700px; height:52px; float:right">
           <ul id="menu">
	<li><a href="index.jsp">Home</a></li>
	<li><a href="About.jsp">About</a></li>
	<li><a href="Contact.jsp">Contact</a></li>
	<li> <a href="">Transport</a>
                  <ul>
                    <li><a href="SearchBus.jsp">Search Buses Route</a></li>
                  </ul>
                </li>
                <li> <a href="">Blood Bank</a>
                  <ul>
                    <li><a href="BlooddonorlistHome.jsp">View Our Donors</a></li>
                  </ul>
                </li>
	<li><a href="Login.jsp">Login</a></li>
</ul>
        </div> <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content" style="margin-left: 155px">
				<a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
                        <div id="login" class="animate form">
                            <form  autocomplete="on" name="loginDiv" method="post"> 
                                <h1>Log in</h1> 
                                <p>
                                <label class="uname" for="username"> Which type of user you are? </label><br/>
                                    <select class="usertype" name="usertype">
                              		<option>-select-</option>
                                    <option value="admin">Administrator	</option>
                                    <option value="teacher">Teacher</option>
                                     <option value="hod">H.O.D</option>
                                      <option value="librarian">Librarian</option>
                                       <option value="warden">Warden</option>
                                        <option value="accountant">Accountant</option>
                                    <option value="student">Student</option>
                                      <option value="transportofficer">Transport Officer</option>
                                    </select></p>
                                <p> 
                                    <label for="username" class="uname">username </label>
                                    <input id="username" name="username" required type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" > Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="login button"> 
                                    <input type="button" value="Login" onclick="checkUserViaJs()" /> 
								</p>
								<p><span id="responseLoginArea" style="color: red;"></span></p>
                                <p class="change_link">
									<a href="BasicServlet?id=ForgetPassword" style="border:none;background-color: transparent;color: #7f7c7c;font-size: 16px">Forget Password</a>
									</p>
                            </form>
                        </div>

                        						
                    </div>            </div><!-- end of sidebar -->
            
          <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->
<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include></body>
</html>