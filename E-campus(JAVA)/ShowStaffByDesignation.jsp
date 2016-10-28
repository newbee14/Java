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
});
</script>
<style type="text/css">
table
{
    border: 1px solid #000000;
    border-collapse: collapse;
    border-spacing: 0px;
}
table td
{
    padding: 8px 8px;
}
</style>
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
					
                  </ul>
                </li>
	
	<li> <a href="">View</a>
                  <ul>
                    <li><a href="ViewStudentByBranch.jsp">View Students</a></li>
					<li><a href="ViewStaffByDesignation.jsp">View Staff</a></li>
                  </ul>
                </li>
                
	<li><a href="LogoutServlet">Logout</a></li>
             
          </ul>
        </div>
        </div> <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main">
          	<div id="content">
				<a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
			<div id="wrapper">
                        <div id="NoDues" class="animate form">
                            <form  autocomplete="on" action="ViewStudentByBranchServlet" method="post" name="ViewStudent"> 
                                <h1> List of Students of ${designation} </h1> 
                                
                                <div style="overflow: scroll; width:auto;">
                          <table width="auto" border="2" align="center"  >
                        <thead>
                      
                        	<td> Employee ID </td>
                        	<td>  Name </td>
                        	<td>  Designation </td>
                        	<td>  Branch </td>
                        	<td>  Qualification </td>
                        	
                        	<td>  Gender </td>
                        	<td>  D.O.B </td>
                        	<td>  D.O.J </td>
                        	<td>  Phone </td>
                        	<td >  Address </td>
                        </thead>             
                        
                        <c:forEach var="des" items="${DesigStaffAtt}">
                        <tr>
 	                        <td>${des.staffid}</td>
                        	<td>${des.facultyname}</td>
                        	<td>${des.designation}</td>
                        	<td>${des.branch}</td>
                        	<td>${des.qualification}</td>
                        	<td>${des.gender}</td>
                        	<td>${des.dob}</td>
                        	<td>${des.doj}</td>
                        	<td>${des.phone}</td>
                        	<td>${des.address}</td>
                        </tr>       
                        </c:forEach>     
                        </table>
				</div>
                 </form>
                        </div>

                      
                    </div>            </div>
    
    
            <div class="cleaner"></div>
        </div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->
<script type='text/javascript' src='js/logging.js'></script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>