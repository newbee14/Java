<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>e-SuwidhaCentre|ChangePassword</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" media="all" href="css/reset.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/960.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/style.css" />
<link rel="stylesheet" type="text/css" media="all" href="css/textbox.css" />
<!-- Start menu css and js files here -->
<link rel="stylesheet" type="text/css" href="css/superfish.css" media="screen" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/hoverIntent.js"></script>

<script type="text/javascript" src="js/superfish.js"></script>
<script type="text/javascript" src="js/userChangePwd.js"></script>
<script type="text/javascript">jQuery(function(){ jQuery('ul.sf-menu').superfish(); });</script>
<!-- End menu css and js files here -->
<!--[if IE 6]>
<script type='text/javascript' src='js/dd_belated_png.js'></script>
<script>DD_belatedPNG.fix('.pngfix');</script>
<![endif]-->
</head>
<body onload="setfocus()">
<div class="subbg">
  <div class="subheader">
    <div class="container_16">
      <div class="grid_5"> <img src="images/logo.png" alt="" class="pngfix logo"/> </div>
      <div class="grid_11">
        <div class="top-menu pngfix">
          <ul class="sf-menu">
                    <li> <a href="EditUserProfileServlet?id=1">Edit Profile</a> </li>
            <li class="current"> <a href="userchangepassword.jsp">Change Password</a> </li>
            <li > <a href="services.jsp">Services</a>
              <ul>
              		<li> <a href="AadharServlet">Aadhaar Card</a>
              		 </li>
                
                	<li><a href="#">Ration Card</a>
                		<ul>
                    		<li><a href="RationcardServlet">New Card</a></li>
                    		<li><a href="#">Duplicate Card</a></li>
                  		</ul>
                	</li>
                
                	<li><a href="#">VoterID Card</a>
                		<ul>
                    		<li><a href="VotercardServlet">New Card</a></li>
                    		<li><a href="#">Duplicate Card</a></li>
                  		</ul>
                	</li>
                
                	<li><a href="#">Driving Licence</a>
                		<ul>
                    		<li><a href="#">Learner's Licence</a></li>
                    		<li><a href="#">Permanent Licence</a>
                   				<ul>
                   					<li><a href="Driving Licence">New Licence</a></li>
                    				<li><a href="#">Duplicate Licence</a></li>
                  				</ul>
                    		</li>
                    	</ul>
                	</li>
                
                	<li><a href="#">Pan Card</a>
                		<ul>
                	    	<li><a href="#">New Card</a></li>
                    		<li><a href="#">Duplicate Card</a></li>
                  		</ul>
                	</li>
                
                	<li><a href="MarriagecertServlet">Marriage Certificate</a></li>
                
                	<li><a href="#">Bus Pass</a>
                		<ul>
                    		<li><a href="BuspassServlet">New Pass</a></li>
                    		<li><a href="BuspassServlet">Reissue Pass</a></li>
                  		</ul>
                	</li>
                
                <li><a href="#">Farm Licence</a></li>
                
                <li><a href="#">Arm Licence</a>
                	<ul>
                    <li><a href="ArmServlet">New Licence</a></li>
                    <li><a href="#">Renew Licence</a></li>
                  	</ul>
                </li>
                
                <li><a href="#">NO Objection Certificate</a>
                	<ul>
                    <li><a href="#">Property</a></li>
                    <li><a href="#">Vehicles</a></li>
                  </ul>
            	</li>
            	<li><a href="RTIformServlet">RTI</a></li>
            	</ul>
            </li>
            
            
             <li> <a href="userdownload.jsp">Download</a>
              <ul>
                <li><a href="#">Forms</a></li>
              </ul>
            </li>
           
            <li> <a href="usercontactus.jsp">Contact Us</a> </li>
             <li> <a href="LoginServlet?id=logout">Logout</a> </li>
          </ul>
          <span class="rightcorner pngfix"></span> </div>
      </div>
      <div class="grid_16">
        <div class="subtitle">
          <h1>CHANGE YOUR PASSWORD HERE</h1>
          <p>ANYTIME AVAILABLE FOR YOU</p>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="clear">&nbsp;</div>
<div class="container_16">
  <div class="grid_11 sepline">
    <div class="box-content">
      <h2>Change Your Password!</h2>
      <br />
      <form action="" method="post" name="changepassform" style="margin:0px; font:Normal 12px Arial,Tahoma, Verdana, Helvetica, sans-serif;width:200px; color:#000;">
        <p>OLD PASSWORD ++:
          <input type="password" value='' size='50' maxlength='50' name='op' id="lightText" onblur="checkOldPwd()"/>
        </p><span id="oparea" style="color:blue"></span>
        <p>NEW PASSWORD ++:
          <input name="np" type="password" size='50' id="lightText" value=""/>
        </p>
        <p>CONFIRM NEW PASSWORD ++:
          <input name="cp" type="password" size='50' id="lightText" value=""/>
        </p>
        
        <p>
          <input class="" type="button" value="UPDATE" onclick="checkValidations()"/>
        </p>
        <div id="checkarea" style="width:200px;color:red"></div>
      </form>
      <br />
    </div>
  </div>
  <div class="grid_5">
    <div class="box-content"> <img src="images/cp.png" alt="" class="img_border" />
     
      <br />
     
    </div>
  </div>
</div>
<div class="clear"></div>


 <%@ include file="footer.jsp"%>
</body>

</html>
