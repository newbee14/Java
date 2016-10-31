var obj;
	var fullname =document.register.fullname.value;	
		
	var password =document.register.password.value;	
	var confirmpassword =document.register.confirmpassword.value;	
function checkEmail()
{
    var emailRegEx = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i;
     if (document.register.email.value.search(emailRegEx) == -1) 
		 {
         document.getElementById("eresult").innerHTML="Not valid email";
		document.register.email.focus();
     }
     else 
		 {
		 document.getElementById("eresult").innerHTML="";
   		 checkDatabase();	
     }
   
}
function checkpandcp()
{
	var password =document.register.password.value;	
	var confirmpassword =document.register.confirmpassword.value;	
 
	if(password==confirmpassword)
	{
		document.getElementById("pass").innerHTML="";
		document.image.src="images/tick.gif";
	}
	else
	{
		document.getElementById("pass").innerHTML="";
	    document.image.src="images/cross.png";
	    document.register.confirmpassword.focus();
	}

}
function checkRegister()
{
	var fullname =document.register.fullname.value;	
	var email =document.register.email.value;
	var password =document.register.password.value;	
	var confirmpassword =document.register.confirmpassword.value;	



if(window.XMLHttpRequest)
	obj=new XMLHttpRequest();
else if(window.ActiveXObject)
	obj=new ActiveXObject("Microsoft.XMLHTTP");
else
	alert("Browser not support AJAX");

obj.onreadystatechange=registerRequest;
obj.open("post", "RegisterServlet?fullname="+fullname+"&email="+email+"&password="+password,true);
obj.send();
}

function registerRequest()
{
     	
  if(obj.readyState==4)
	{
	var k=parseInt(obj.responseText);   
	if(k==0)
	 document.getElementById("result").innerHTML="Not Registered";
	if(k==1)
	document.getElementById("result").innerHTML="Registered Succefully";
	
}
}

function checkDatabase()
{
var email =document.register.email.value;

if(window.XMLHttpRequest)
	obj=new XMLHttpRequest();
else if(window.ActiveXObject)
	obj=new ActiveXObject("Microsoft.XMLHTTP");
else
	alert("Browser not support AJAX");
obj.onreadystatechange=handelRequest2;
obj.open("post", "EmailValidateServlet?email="+email,true);
obj.send();
}
function handelRequest2()
{
  if(obj.readyState==4)
  {
	var k=parseInt(obj.responseText);
	if(k==1)
	{
	 document.getElementById("eresult").innerHTML="Email ID Exsists";
	 document.register.email.focus();
	 }
	else
	{
		document.getElementById("eresult").innerHTML="";
		
	}
	 
}
	  
}
