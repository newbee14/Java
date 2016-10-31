var obj;
function checkLogin()
{
	var login =document.loginform.login.value;	
	var password =document.loginform.password.value;	
	var usertype =document.loginform.usertype.value;	

	if(window.XMLHttpRequest)
		obj=new XMLHttpRequest();
	else if(window.ActiveXObject)
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	else
		alert("Browser not support AJAX");

	obj.onreadystatechange=handelRequest;
	obj.open("post", "LoginServlet?login="+login+"&password="+password+"&usertype="+usertype,true);
	obj.send();
}

function handelRequest()
{
  if(obj.readyState==4)
	  {
	    var k=parseInt(obj.responseText);   
	  	if(k==0)
	  		document.getElementById("loginresult").innerHTML="Invalid username & Password";
		else if(k==1){
	  		
	  		document.location="Applicant.jsp";
	  	}
	  		else if(k==2)
	  	{	  		
	  		document.location="Hr.jsp";
	  	} 
	  		else if(k==3)
		  	{	  		
		  		document.location="Manager.jsp";
		  	} 
	  		else if(k==4)
		  	{	  		
		  		document.location="Interviewer.jsp";
		  	}
	  }
}