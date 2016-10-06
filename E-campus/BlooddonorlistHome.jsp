<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Platinum Theme - Contact Form</title>
<meta name="keywords" content="platinum, contact page, email form, free templates, website templates, CSS, HTML" />
<meta name="description" content="Platinum Theme, Contact Page, Email Form, free CSS template by templatemo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js_of_clicks/bloodDonorJS.js"></script>

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />

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
        </div>
        
        </div>
	<!-- end of header -->
     </div>
            <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content" style="margin-left:140px;border:double medium #333333;border-radius:20px;width:auto;padding:10px">
				
                 <h2 style="font-weight: bold;">Blood Bank Registration</h2>
               <h4>Do You Feel You Dont have much to offer..??
                 You have the most precious resource of all: the ability to save a life by  
                 <span style="color:Red; font-weight: bold;">&quot;DONATING BLOOD&quot;</span>..</h4>
                <div class="cleaner h20"></div>
              <div id="contact_form">
                	<form method="post" name="BloodDonationRegistrationForm" >
					
                    	<div class="cleaner h10"></div>
                        
                        
                         
                                                             
                       Search for Blood Group
                        <select name="bloodgroup" style="width:230px" id="email" class="validate-email required input_field" >
                        <option value="a positive">A+</option>
                        <option value="a negative">A-</option>
                        <option value="b positive">B+</option>
                        <option value="b negative">B-</option>
                        <option value="ab positive">AB+</option>
                        <option value="ab negative">AB-</option>
                        <option value="o positive">O+</option>
                        <option value="o negative">O-</option>
                        </select>
							
                        
                        <input type="button" value="Search" onclick="viewDonorsList()"/>
                        <!-- <span>Result : ${donorslistatt[0].name}</span> -->
                        <div class="cleaner h10"></div>
                        <table width="620" border="2" align="center" cellpadding="1" cellspacing="1">
                        <tr>
                        	<td>Donor_ID</td>
                        	<td>Name</td>
                        	<td>Designation</td>
                        	<td>Age</td>
                        	<td>Gender</td>
                        	<td>BloodGroup</td>
                        	<td>Contact Number</td>
                        	<td>Diseases</td>
                        </tr>
                   
                        
                        <c:forEach var="donors" items="${donorslistatt}">
                        <tr>
 	                        <td>${donors.donorid}</td>
                        	<td>${donors.name}</td>
                        	<td>${donors.designation}</td>
                        	<td>${donors.age}</td>
                        	<td>${donors.gender}</td>
                        	<td>${donors.bloodgroup}</td>
                        	<td>${donors.mobilenumber}</td>
                        	<td>${donors.diseases}</td>
                        </tr>       
                        </c:forEach>     
                        </table>                                                
                          
                                            
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
<jsp:include page="Footer.jsp"></jsp:include></body>
</html>