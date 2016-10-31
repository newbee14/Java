function checkforgotpass()
{
	
	var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;
	
	var name=document.forgotpassform.nm.value;
	var email=document.forgotpassform.eid.value;
	var mobile=document.forgotpassform.mb.value;
	if(name=="")
	{
		document.getElementById("forgotarea").innerHTML="Enter  name please";
		document.forgotpassform.nm.focus();
	}
	else if(email.search(emregex)==-1)
	{
		document.getElementById("forgotarea").innerHTML="Invalid Email id";
		document.forgotpassform.eid.focus();
	}
	else if(isNaN(mobile)==true)
	{
		document.getElementById("forgotarea").innerHTML="Contact should be numeric";
		document.forgotpassform.mb.focus();
	}
	else if(mobile.length<10)
	{
		document.getElementById("forgotarea").innerHTML="Contact should be 10-digit";
		document.forgotpassform.mb.focus();
	}
	else if(mobile.charAt(0)!=9 && mobile.charAt(0)!=8 && mobile.charAt(0)!=7)
	{
		document.getElementById("forgotarea").innerHTML="Contact must start with 9/8/7";
		document.forgotpassform.mb.focus();
	}
	else
	{
		document.getElementById("forgotarea").innerHTML="";
		document.getElementById("forgotarea").innerHTML="Please wait for few seconds";
		aadhaarRegisterAjax(name,email,mobile);
	}
}
var obj;
function aadhaarRegisterAjax(name,email,mobile)
{
	
	if(window.XMLHttpRequest)
		{
			obj=new XMLHttpRequest();
		}
	else if(window.ActiveXObject)
		{
			obj=new ActiveXObject("Microsoft.XMLHTTP");
		}  
	obj.onreadystatechange=handlerequest;
	url="ForgotpassServlet";
  	url=url+"?name="+name+"&email="+email+"&mobile="+mobile;
  	obj.open("post",url,true);
  	obj.send();
}
function handlerequest()
{
	if(obj.readyState==4 || obj.status==200)
  	{
  		k=parseInt(obj.responseText);
  		if(k==1)
  		{
  			alert("New Password is Sent On Your Email ID"); 
  			document.getElementById("forgotarea").innerHTML="";
  			document.location="login.jsp";
  		}
  		else if(k==0)
  			document.getElementById("forgotarea").innerHTML="Invalid Username/email/mobile";
  	}
}