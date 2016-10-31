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
<script type="text/javascript" src="js_of_clicks/EMagazine.js"></script>
<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>

		<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
		<script src="booklet/jquery.easing.1.3.js" type="text/javascript"></script>
		<script src="booklet/jquery.booklet.1.1.0.min.js" type="text/javascript"></script>

		<link href="booklet/jquery.booklet.1.1.0.css" type="text/css" rel="stylesheet" media="screen" />
		<link rel="stylesheet" href="css/style1.css" type="text/css" media="screen"/>

		<script src="cufon/cufon-yui.js" type="text/javascript"></script>
		<script src="cufon/ChunkFive_400.font.js" type="text/javascript"></script>
		<script src="cufon/Note_this_400.font.js" type="text/javascript"></script>
		<script type="text/javascript">
			Cufon.replace('h1,p,.b-counter');
			Cufon.replace('.book_wrapper a', {hover:true});
			Cufon.replace('.title', {textShadow: '1px 1px #C59471', fontFamily:'ChunkFive'});
			Cufon.replace('.reference a', {textShadow: '1px 1px #C59471', fontFamily:'ChunkFive'});
			Cufon.replace('.loading', {textShadow: '1px 1px #000', fontFamily:'ChunkFive'});
		</script>



</head>
<body onload="fetchEMagazineOnLoad()">

<div id="templatemo_wrapper">

    <div id="templatemo_header">
        <div id="site_title"><h1><a href="http://www.templatemo.com" rel="nofollow">Free CSS Templates</a></h1></div>
 <div style="width: 700px; height: 52px;float:right">
          <ul id="menu">
            <li><a href="StaffHome.jsp">Home</a></li>
               <li> <a href="">Student Details</a>
                  <ul>
                    <li><a href="NewStudentRegistration.jsp">RegisterNewStudent</a></li>
                 <li><a href="StudentStatusUpdation.jsp">UpdateStudentsStatus</a></li>
                  </ul>
             
            <li> <a href="">View</a>
              <ul>
               
                <li> <a href="">No Dues</a>
                  <ul>
                    <li><a href="NonTeachingStaff.jsp">Update No Dues</a></li>
                  </ul>
                </li>
                <li> <a href="">Notes</a>
                  <ul>
                    <li><a href="">Subject 1</a></li>
                    <li><a href="">Subject 2</a></li>
                    <li><a href="">Subject 3</a></li>
                    <li><a href="">Subject 4</a></li>
                  </ul>
                </li>
                <li> <a href="">Maps</a></li>
                <li> <a href="">Previous Years Papers</a>
                  <ul>
                    <li><a href="">Subject 1</a></li>
                    <li><a href="">Subject 2</a></li>
                    <li><a href="">Subject 3</a></li>
                    <li><a href="">Subject 4</a></li>
                  </ul>
                </li>
                <li> <a href="">Syllabus</a>
                  <ul>
                    <li><a href="">Subject 1</a></li>
                    <li><a href="">Subject 2</a></li>
                    <li><a href="">Subject 3</a></li>
                    <li><a href="">Subject 4</a></li>
                  </ul>
                </li>
              </ul>
            </li>
            <li> <a href="">Blood Bank</a>
              <ul>
                <li> <a href="BlooddonorlistStaff.jsp">View Donor's List</a></li>
                <li> <a href="BloodbankregisterStaff.jsp">Register</a></li>
              </ul>
            </li>
            <li><a href="">E-Magazine</a>
              <ul>
                <li> <a href="EMagazineStaff.jsp">View E-Magazine</a></li>
                <li> <a href="AddEMagazineStaff.jsp">Upload Content</a></li>
              </ul>
            </li>
            
            
            <li><a href="">Account Settings</a>
              <ul>
              <li> <a href="ModifyDetailsofStaff.jsp">Modify Details</a></li>
                <li> <a href="ChangeStaffPassword.jsp">Edit Password</a></li>
                <li> <a href="LogoutServlet">Logout</a></li>
              </ul>
            </li>
             
          </ul>
          
        </div> <!-- end of menu -->
    </div> <!-- end of header -->
    
	<div id="templatemo_main_wrapper">
    	<div id="templatemo_main"><!-- end of sidebar -->
    	  <div class="book_wrapper"> <a id="next_page_button"></a> <a id="prev_page_button"></a>
    	    <div id="loading" class="loading">Loading pages...</div>
    	    <div id="mybook" style="display:none;">
    	      <div class="b-load">
    	        <div> <img src="images/e_magazine.png" alt=""/>
    	          <h1 id="titlepage1" style="font-size: large;"></h1>
    	          <p id="themepage1" style="font-family:cursive;">  vallery with a
    	          
    	            slider for the thumbnails. The idea is to have an expanding
    	            thumbnails area which opens once an album is chosen.
    	            The thumbnails will scroll to the end and move back to
    	            the first image. The user can scroll through the thumbnails
    	            by using the slider controls. When a thumbnail is clicked,
    	            it moves to the center and the full image preview pens</p>
    	          <h3 style="color: maroon;font-family:cursive;margin-top:10px" align="center">Let's Go....</h3> </div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=2" alt="" />
    	          <h1 id="titlepage2" style="font-size: large;">Animated Portfolio Gallery</h1>
    	          <p id="themepage2" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(2)">Today we will create an animated portfolio gallery with jQuery.
    	            The gallery will contain a scroller for thumbnails and a
    	            content area where we will display details about the portfolio
    	            item. The image can be enlarged by clicking on it, making
    	            it appear as an overlay.</p>
    	          <a href="#" onclick="fetchCompleteArticle(2)" class="article" style="margin-left: 122px">View</a> </div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=3" alt="" />
    	          <h1 id="titlepage3" style="font-size: large;">Annotation Overlay Effect</h1>
    	          <p id="themepage3" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(3)">Today we will create a simple overlay effect to display annotations in e.g. portfolio
    	            items of a web designers portfolio. We got the idea from the wonderful
    	            portfolio of www.rareview.com where Flash is used to create the
    	            effect. We will use jQuery.</p>
    	          <a href="#" onclick="fetchCompleteArticle(3)" class="article" style="margin-left: 122px">View</a></div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=4" alt="" />
    	          <h1 id="titlepage4" style="font-size: large;">Bubbleriffic Image Gallery</h1>
    	          <p id="themepage4" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(4)">In this tutorial we will create a bubbly image gallery that
    	            shows your images in a unique way. The idea is to show the
    	            thumbnails of albums in a rounded fashion allowing the
    	            user to scroll them automatically by moving the mouse.
    	            Clicking on a thumbnail will zoom in a big circle and
    	            the full image which will be automatically resized to
    	            fit into the screen.</p>
    	          <a href="#" onclick="fetchCompleteArticle(4)" class="article" style="margin-left: 122px">View</a> </div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=5" alt="" />
    	          <h1 id="titlepage5" style="font-size: large;">Collapsing Site Navigation</h1>
    	          <p id="themepage5" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(5)">Today we will create a collapsing menu that contains vertical
    	            navigation bars and a slide out content area. When hovering
    	            over a menu item, an image slides down from the top and a
    	            submenu slides up from the bottom. Clicking on one of the
    	            submenu items will make the whole menu collapse like a card
    	            deck and the respective content area will slide out.</p>
    	          <a href="#" onclick="fetchCompleteArticle(5)" class="article" style="margin-left: 122px">View</a> </div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=6" alt="" />
    	          <h1 id="titlepage6" style="font-size: large;">Custom Animation Banner</h1>
    	          <p id="themepage6" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(6)">In today’s tutorial we will be creating a custom animation banner with jQuery.
    	            The idea is to have different elements in a banner that will
    	            animate step-wise in a custom way.</p>
    	          <a href="#" onclick="fetchCompleteArticle(6)" class="article" style="margin-left: 122px">View</a> </div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=7" alt="" />
    	          <h1 id="titlepage7" style="font-size: large;">Full Page Image Gallery</h1>
    	          <p id="themepage7" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(7)">In this tutorial we are going to create a stunning full page
    	            gallery with scrollable thumbnails and a scrollable full
    	            screen preview. The idea is to have a thumbnails bar at
    	            the bottom of the page that scrolls automatically when
    	            the user moves the mouse. When a thumbnail is clicked,
    	            it moves to the center of the page and the full screen
    	            image is loaded in the background.</p>
    	          <a href="#" onclick="fetchCompleteArticle(7)" class="article" style="margin-left: 122px">View</a> </div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=8" alt="" />
    	          <h1 id="titlepage8" style="font-size: large;">Hover Slide Effect</h1>
    	          <p id="themepage8" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(8)">Today we will create a neat effect with some images using
    	            jQuery. The main idea is to have an image area with several
    	            images that slide out when we hover over them, revealing
    	            other images. The sliding effect will be random, i.e.
    	            the images will slide to the top or bottom, left or
    	            right, fading out or not. When we click on any area,
    	            all areas will slide their images out.</p>
    	          <a href="#" onclick="fetchCompleteArticle(8)" class="article" style="margin-left: 122px">View</a></div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=9" alt="" />
    	          <h1 id="titlepage9" style="font-size: large;">Merging Image Boxes</h1>
    	          <p id="themepage9" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(9)">Today we will show you a nice effect for images with jQuery.
    	            The idea is to have a set of rotated thumbnails that,
    	            once clicked, animate to form the selected image.
    	            You can navigate through the images with previous
    	            and next buttons and when the big image gets clicked
    	            it will scatter into the little box shaped thumbnails again.</p>
    	          <a href="#" onclick="fetchCompleteArticle(9)" class="article" style="margin-left: 122px">View</a> </div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=10" alt="" />
    	          <h1 id="titlepage10" style="font-size: large;">Compact News Previewer</h1>
    	          <p id="themepage10" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(10)">Today we will create a news previewer that let’s you
    	            show your latest articles or news in a compact way.
    	            The news previewer will show some list of articles
    	            on the left side and the preview of the article with a
    	            longer description on the right. Once a news on the left
    	            is clicked, the preview will slide in.</p>
    	          <a href="#" onclick="fetchCompleteArticle(10)" class="article" style="margin-left: 122px">View</a></div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=11" alt="" />
    	          <h1 id="titlepage11" style="font-size: large;">Overlay Effect Menu</h1>
    	          <p id="themepage11" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(11)">In this tutorial we are going to create a simple menu
    	            that will stand out once we hover over it by covering
    	            everything except the menu with a dark overlay.
    	            The menu will stay white and a submenu area will
    	            expand. We will create this effect using jQuery.</p>
    	          <a href="#" onclick="fetchCompleteArticle(11)" class="article" style="margin-left: 122px">View</a></div>
    	        <div> <img src="GetImagesForEMagazineDivServlet?id=12" alt="" />
    	          <h1 id="titlepage12" style="font-size: large;">Polaroid Photobar Gallery</h1>
    	          <p id="themepage12" style="font-family:cursive;cursor: pointer;" onclick="fetchCompleteArticle(12)">In this tutorial we are going to create an image gallery
    	            with a Polaroid look. We will have albums that will expand
    	            to sets of slightly rotated thumbnails that pop out on hover.
    	            The full image will slide in from the bottom once a thumbnail
    	            is clicked. In the full image view the user can navigate
    	            through the pictures or simply choose another thumbnail
    	            to be displayed.</p>
    	          <a href="#" onclick="fetchCompleteArticle(12)" class="article" style="margin-left: 122px">View</a> </div>
    	       
  	        </div>
            
  	      </div>
  	    </div>
    	</div> <!-- end of main -->
    </div> <!-- end of main wrapper -->
    
</div> <!-- end of wrapper -->

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
    	<a href="#templatemo_header" class="goto_top"></a>
    	<div class="col_4">
        	<h5>Pages</h5>
            <ul class="footer_list">
            	<li><a href="home.html">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="portfolio.html">Portfolio</a></li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="contact.html">Contact</a></li>
			</ul>
        </div>
        
        <div class="col_4">
        	<h5>Partners</h5>
            <ul class="footer_list">
            	<li><a rel="nofollow" href="http://www.flashmo.com/">Free Flash Templates</a></li>
                <li><a rel="nofollow" href="http://www.templatemo.com/">Free CSS Templates</a></li>
                <li><a rel="nofollow" href="http://www.flashmo.com/store">Preminum Templates</a></li>
                <li><a href="http://www.koflash.com/">Website Gallery</a></li>
                <li><a href="http://www.webdesignmo.com/blog/">Web Design Resources</a></li>
			</ul>             
        </div>
        
        <div class="col_4">
        	<h5>Twitter</h5>
            <ul class="twitter_post">
	            <li>Suspendisse at scelerisque urna. Aenean tincidunt massa in tellus varius ultricies.</li>
                <li>Proin dignissim, diam nec <a href="#">@TemplateMo</a> enim lorem tempus orci, ac ante purus in justo.</li>
			</ul>
        </div>
        
        <div class="col_4 col_l">
        	<h5>Follow Us</h5>
            <div class="footer_social_button">
                <a href="http://www.facebook.com/templatemo"><img src="images/facebook.png" title="facebook" alt="facebook" /></a>
                <a href="#"><img src="images/flickr.png" title="flickr" alt="flickr" /></a>
                <a href="#"><img src="images/twitter.png" title="twitter" alt="twitter" /></a>
                <a href="#"><img src="images/youtube.png" title="youtube" alt="youtube" /></a>
                <a href="#"><img src="images/feed.png" title="rss" alt="rss" /></a>
			</div>
            <div class="cleaner h40"></div>
            
        	Copyright © 2048 <a href="#">Company Name</a> <br /> 
            Designed by <a href="http://www.templatemo.com" rel="nofollow" target="_parent">Free CSS Templates</a>
      		
		</div>
        
        <div class="cleaner"></div>
    </div>
</div>


<script type='text/javascript' src='js/logging.js'></script>

        <script type="text/javascript">
			$(function() {
				var $mybook 		= $('#mybook');
				var $bttn_next		= $('#next_page_button');
				var $bttn_prev		= $('#prev_page_button');
				var $loading		= $('#loading');
				var $mybook_images	= $mybook.find('img');
				var cnt_images		= $mybook_images.length;
				var loaded			= 0;
				//preload all the images in the book,
				//and then call the booklet plugin

				$mybook_images.each(function(){
					var $img 	= $(this);
					var source	= $img.attr('src');
					$('<img/>').load(function(){
						++loaded;
						if(loaded == cnt_images){
							$loading.hide();
							$bttn_next.show();
							$bttn_prev.show();
							$mybook.show().booklet({
								name:               null,                            // name of the booklet to display in the document title bar
								width:              800,                             // container width
								height:             500,                             // container height
								speed:              600,                             // speed of the transition between pages
								direction:          'LTR',                           // direction of the overall content organization, default LTR, left to right, can be RTL for languages which read right to left
								startingPage:       0,                               // index of the first page to be displayed
								easing:             'easeInOutQuad',                 // easing method for complete transition
								easeIn:             'easeInQuad',                    // easing method for first half of transition
								easeOut:            'easeOutQuad',                   // easing method for second half of transition

								closed:             true,                           // start with the book "closed", will add empty pages to beginning and end of book
								closedFrontTitle:   null,                            // used with "closed", "menu" and "pageSelector", determines title of blank starting page
								closedFrontChapter: null,                            // used with "closed", "menu" and "chapterSelector", determines chapter name of blank starting page
								closedBackTitle:    null,                            // used with "closed", "menu" and "pageSelector", determines chapter name of blank ending page
								closedBackChapter:  null,                            // used with "closed", "menu" and "chapterSelector", determines chapter name of blank ending page
								covers:             false,                           // used with  "closed", makes first and last pages into covers, without page numbers (if enabled)

								pagePadding:        10,                              // padding for each page wrapper
								pageNumbers:        true,                            // display page numbers on each page

								hovers:             false,                            // enables preview pageturn hover animation, shows a small preview of previous or next page on hover
								overlays:           false,                            // enables navigation using a page sized overlay, when enabled links inside the content will not be clickable
								tabs:               false,                           // adds tabs along the top of the pages
								tabWidth:           60,                              // set the width of the tabs
								tabHeight:          20,                              // set the height of the tabs
								arrows:             false,                           // adds arrows overlayed over the book edges
								cursor:             'pointer',                       // cursor css setting for side bar areas

								hash:               false,                           // enables navigation using a hash string, ex: #/page/1 for page 1, will affect all booklets with 'hash' enabled
								keyboard:           true,                            // enables navigation with arrow keys (left: previous, right: next)
								next:               $bttn_next,          			// selector for element to use as click trigger for next page
								prev:               $bttn_prev,          			// selector for element to use as click trigger for previous page

								menu:               null,                            // selector for element to use as the menu area, required for 'pageSelector'
								pageSelector:       false,                           // enables navigation with a dropdown menu of pages, requires 'menu'
								chapterSelector:    false,                           // enables navigation with a dropdown menu of chapters, determined by the "rel" attribute, requires 'menu'

								shadows:            true,                            // display shadows on page animations
								shadowTopFwdWidth:  166,                             // shadow width for top forward anim
								shadowTopBackWidth: 166,                             // shadow width for top back anim
								shadowBtmWidth:     50,                              // shadow width for bottom shadow

								before:             function(){},                    // callback invoked before each page turn animation
								after:              function(){}                     // callback invoked after each page turn animation
							});
							Cufon.refresh();
						}
					}).attr('src',source);
				});
				
			});
        </script>

</body>
</html>