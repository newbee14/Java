<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>eSuwidhaCentre- Admin</title>
<script type="text/javascript" src="scripts/admin_js.js"></script>
<link href="css/layout.css" rel="stylesheet" type="text/css" />
<link href="css/style1.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/960.css" rel="stylesheet" type="text/css" />

</head>
<body onload="collectData();">
<div class="subbg">
  <div class="subheader" style="height:150px;">
    <div class="container_16">
      <div class="grid_5"> <img src="images/logo.png" alt="" class="pngfix logo" /> </div>
  
    
    </div>
  </div>
</div>
<div id="templatemo_wrapper_outer">

<div id="templatemo_wrapper">
    <%@ include file="adminheader.jsp"%>
	
		
		
		
		<article class="module width_full" style="width:76%;margin:-30px 0 0 220px;height:230px;">
			<header><h3 style="padding:10px;">Stats</h3></header>
			<div class="module_content" style="margin-left:-480px;width:100%;">
				
				
				<article class="stats_overview" style="padding:10px;">
					<div class="overview_today">
						<p class="overview_day">Regular Course</p>
						<p class="overview_count">${REG_COURSE_REG_COUNTatt}</p>
						
					</div>
					<div class="overview_previous">
						<p class="overview_day">Six Month Training</p>
						<p class="overview_count">${SIX_MONTH_REG_COUNTatt}</p>
						
					</div>
					<div class="overview_previous">
						<p class="overview_day">Six Week Training</p>
						<p class="overview_count">${SIX_WEEK_REG_COUNTatt}</p>
						
					</div>
					<div class="overview_previous">
						<p class="overview_day">Total Users</p>
						<p class="overview_count">130</p>
						
					</div>
					<div class="clear"></div>
				</article>
				
				<div class="clear"></div>
			</div>
		</article>
	

	</div>
	</div>	
 
</body>
</html>