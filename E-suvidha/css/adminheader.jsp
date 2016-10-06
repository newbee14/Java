<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<link href="styles/layout.css" rel="stylesheet" type="text/css" />
</head>
<body>

 <div id="templatemo_header">
  	

    	<div id="site_title">
          	<img src="images/header2.png" style=""/>
        </div> 
</div>

    
   <div id="templatemo_content" style="margin-top:130px;">
	
	
	<section id="secondary_bar" >
		<div class="user">
			<p>Admin (<a href="#">3 Messages</a>)</p>
			<!-- <a class="logout_user" href="#" title="Logout">Logout</a> -->
		</div>
		
	</section><!-- end of secondary bar -->
	
	<aside id="sidebar" class="column" style="padding-bottom:10px;">
		<h3>Admin</h3>
		<ul >
			<li><a href="AdminMenuServlet?id=adminindex">Home</a></li>
			<li class="icn_photo"><a href="AdminMenuServlet?id=bethegem">Gem Request</a></li>
			<li class="icn_add_user"><a href="AdminMenuServlet?id=bethegem">Send Message</a></li>
			<li class="icn_jump_back"><a href="AdminMenuServlet?id=logout">Logout</a></li>
		</ul>
		
		<h3>Users</h3>
		<ul>
			
			<li class="icn_view_users"><a href="AdminMenuServlet?id=edituser">Edit Users</a></li>
			
		</ul>
		<h3>Verify Registration</h3>
		<ul class="toggle">
			<li class="icn_categories"><a href="AdminMenuServlet?id=regcourse">Regular Course</a></li>
			<li class="icn_categories"><a href="AdminMenuServlet?id=sixmonthtraining">Six Month Training</a></li>
			<li class="icn_categories"><a href="AdminMenuServlet?id=sixweektraining">Six Week Training</a></li>
			
		</ul>
		<h3>Resumes</h3>
		<ul >
			<li class="icn_new_article"><a href="AdminMenuServlet?id=uploadresume">Upload Resume</a></li>
			<li class="icn_delete"><a href="AdminMenuServlet?id=deleteresume">Delete Resume</a></li>				
		</ul>
		<h3>Upcoming Schedule</h3>
		<ul>
			<li class="icn_new_article"><a href="AdminMenuServlet?id=addupcomingschedule">Add Upcoming Schedule</a></li>
			<li class="icn_edit_article"><a href="AdminMenuServlet?id=editupcomingschedule">Edit Upcoming Schedule</a></li>				
		</ul>
		<h3>Courses</h3>
		<ul>
			<li class="icn_new_article"><a href="AdminMenuServlet?id=addcourses">Add Courses</a></li>
			<li class="icn_edit_article"><a href="AdminMenuServlet?id=editcourses">Edit Courses</a></li>				
		</ul>
		
		
		
	</aside><!-- end of sidebar -->
	</div>

	
</body>
</html>