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
               
                <li> <a href="BloodbankregisterStaff.jsp">Register</a></li>
              </ul>
            </li>
            <li><a href="">Account Settings</a>
              <ul>
              <li> <a href="ModifyDetailsOfNonTeachingStaff.jsp">Modify Details</a></li>
                <li> <a href="ChangeStaffPassword.jsp">Edit Password</a></li>
                <li> <a href="LogoutServlet">Logout</a></li>
              </ul>
            </li>
             
          </ul>
          
        </div> <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content" style="border:medium double #333; padding-left:20px;margin-left:155px;height:920px;padding-top:20px">
				<a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
                        <div id="login" class="animate form">
                            <form  name="AddBusForm" method="post" action="BusServlet"  autocomplete="on"> 
                                <h1>ADD BUS</h1> 
                                <p> 
                                    <label for="routeno" class="uname" >Route Number</label>
                                    <input   name="routeno"  type="text"  />
                                </p>
                                <p> 
                                    <label for="busnumber" class="youmail"  >Bus Number</label>
                                    <input id="busnumber" name="busno" required type="text"/> 
                                </p>
                                <p> 
                                    <label for="from" class="youmail"  >From</label><br/>
                                     <input id="from" name="from" required type="text" value="COLLEGE" /> 
                                   
                                </p>
                                <p> 
                                    <label for="to" class="youmail">To</label><br/>
                                     <input id="to" name="to" required type="text"/> 
                                </p>
                                <p>
                                <label class="uname" for="drivername">Driver Name</label><br/>
                                     <input id="drivername" name="drivername" required type="text"/> 
                                 </p>
                                 <p>
                                <label class="uname" for="drivercontactnumber">Driver Contact Number</label><br/>
                                     <input id="drivercontactnumber" name="drivercontactno" required type="text"/> 
                                 </p>
                                 <p>
                                  <label class="uname" for="conductorname">Conductor Name</label><br/>
                                    <input id="conductorname" name="conductorname" required type="text"/> 
                               	<p> 
                                    <label for="conductorcontactno" class="youpasswd" >Conductor Contact Number </label>
                                    <input id="conductorcontactnumber" name="conductorcontactno" required  type="text" />
                                </p>
                                <p> 
                                    <label for="seats" >Seats</label>
                                    <input name="seats" required  type="text" />
                                </p>
                                <input type="submit" value="Submit"/>
                                 
                              </form>
                        </div>                    
						
                    </div>            
                  </div><!-- end of sidebar -->
            
          <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->



<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>