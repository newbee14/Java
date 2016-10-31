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
<body>

<div id="templatemo_wrapper">

    <div id="templatemo_header">
        <div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Free CSS Templates</a></h1></div>
        <div style="width: 700px; height: 52px;float:right">
          <ul id="menu">
            <li><a href="LibWarAcc.jsp">Home</a></li>
            <li> <a href="">View</a>
              <ul>
            <li><a href="">E-Magazine</a>
              <ul>
                <li> <a href="EMagazineLibWarAcc.jsp">View E-Magazine</a></li>
             </ul>
            </li>

                
                <li> <a href="">No Dues</a>
                  <ul>
                    <li><a href="NoDuesLibWarAcc.jsp">Clear Dues</a></li>
                  </ul>
                </li>
               
              </ul>
            </li>
            <li> <a href="">Blood Bank</a>
              <ul>
             
                <li> <a href="BloodBankRegisterLibWarAcc.jsp">Register</a></li>
              </ul>
            </li>
            
            
            <li><a href="">Account Settings</a>
              <ul>
              <li> <a href="ModifyDetailsOfLibWarAcc.jsp">Modify Details</a></li>
                <li> <a href="ChangeNonTeachingStaffPassword.jsp">Edit Password</a></li>
                <li> <a href="LogoutServlet">Logout</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main" style="border: double medium #999999; border-radius: 20px; box-shadow: 5px 5px 5px 5px #CCCCCC;">
          	<h2 style="font-weight: bold;" id="title">My First Post</h2><!-- end of sidebar -->
           
          <div class="cleaner">
            <table width="900" border="0" cellspacing="20">
              <tr>
                <td width="516" align="center" valign="top">
                <div id="completearticle" style="float: left; text-align: justify; width: 460px; font-size: large;font-family: cursive;"> 
                ${completearticleatt}  
                </div></td>
                <td width="320" align="center" valign="top">
                <img src="GetImagesForEMagazineDivServlet?id=${param.id}" width="300" height="163"></td>
              </tr>
            </table>
          </div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->
<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>