<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Platinum Theme - Contact Form</title>
<meta name="keywords" content="platinum, contact page, email form, free templates, website templates, CSS, HTML" />
<meta name="description" content="Platinum Theme, Contact Page, Email Form, free CSS template by templatemo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/menu.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js_of_clicks/myscript.js"></script>
<script type="text/javascript" src="js_of_clicks/TransportPoutes.js"></script>

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
<div style="width: 700px; height: 52px;float:right">
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
            <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content">
				
                 <h2 style="font-weight: bold;">View Bus Details</h2>
               <h4> It's easy to reach our campus........ You can view transportataion details.....
                 
                 <span style="color:Red; font-weight: bold;"></span></h4>
                <div class="cleaner h20"></div>
              <div id="contact_form">
                	<form method="post" name="ViewBusForm" >
					
                    	<div class="cleaner h10"></div>
      				       VIEW BUS DETAILS
                        <select onchange="whatselected(this.value)" name="BUS" style="width:160px" id="route" class="validate-email required input_field" >
                        <option>--SELECT--</option>
                        <option value="Route No">Route No</option>
                        <option value="Destination">Destination</option>
                        </select>
                        <span id="hiddenInputs" style="display:none;">
                        <select name="busRoute" style="width:230px" id="routewise" class="validate-email required input_field" >
                        	<option id="routeno">Select Route</option>
                         </select>
                         </span>
                        <span id="hiddenInputs1" style="display: none;"> 
                        <select name="busDestination" style="width:230px" id="destinationwise" class="validate-email required input_field" >
                        	<option id="destination">Select Destination</option>
                        </select>
						</span>	
                       
                        <input type="button" value="Search" onclick="viewBusViaJS()"/>
                        <!-- <span>Result : ${routelistatt[0].routeno}</span> -->
                        <div class="cleaner h10"></div>
                        <table width="620" border="2" align="center" cellpadding="1" cellspacing="1">
                        <tr>
                        	<td>Route no</td>
                        	<td>Bus no</td>
                        	<td>From</td>
                        	<td>To</td>
                        	<td>Driver name</td>
                        	<td>Driver contactno</td>
                        	<td>Conductor name</td>
                        	<td>Conductor contactno</td>
                        	<td>Seats</td>
                        </tr>
                  <!--   <c:forEach var="destination" items="${destinationlistatt}">
                        <tr>
 	                        <td>${destination.routeno}</td>
                        	<td>${destination.busno}</td>
                        	<td>${destination.from}</td>
                        	<td>${destination.to}</td>
                        	<td>${destination.drivername}</td>
                        	<td>${destination.drivercontactno}</td>
                        	<td>${destination.conductorname}</td>
                        	<td>${destination.conductorcontactno}</td>
                        	<td>${destination.seats}</td>
                        </tr>       
                        </c:forEach> -->    
                   <c:forEach var="route" items="${routelistatt}">
                        <tr>
 	                        <td>${route.routeno}</td>
                        	<td>${route.busno}</td>
                        	<td>${route.from}</td>
                        	<td>${route.to}</td>
                        	<td>${route.drivername}</td>
                        	<td>${route.drivercontactno}</td>
                        	<td>${route.conductorname}</td>
                        	<td>${route.conductorcontactno}</td>
                        	<td>${route.seats}</td>
                        </tr>       
                        </c:forEach>    
                        
                        </table>                                                
                </form>
                </div>
                <div class="cleaner h20"></div>
              <div class="cleaner"></div>
            </div>
            <div id="sidebar">
              <div class="sb_box">
                
                <div class="cleaner"></div>
                    
                    <div class="cleaner"><img src="images/bus.png" width="256" height="256"></div>
              </div>
            </div> <!-- end of sidebar -->
            
            <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->

<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include></body>
</html>