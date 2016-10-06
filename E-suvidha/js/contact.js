function setfocus()
{
	document.contactform.nm.focus();
}
function checkValidations()
{
	var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;
	
	var name=document.contactform.nm.value;
	var email=document.contactform.eid.value;
	var subject=document.contactform.sb.value;
	var message=document.contactform.msg.value;
	
	if(name=="")
	{
		document.getElementById("contactarea").innerHTML="Enter Your Name";
		document.contactform.nm.focus();
	}
	else if(email.search(emregex)==-1)
	{
		document.getElementById("contactarea").innerHTML="Invalid Email id";
		document.contactform.eid.focus();
	}
	if(subject=="")
	{
		document.getElementById("contactarea").innerHTML="Please Enter The Subject";
		document.contactform.sb.focus();
	}
	if(message=="")
	{
		document.getElementById("contactarea").innerHTML="Enter Your Query Please";
		document.contactform.msg.focus();
	}
	else
	{
		document.getElementById("contactarea").innerHTML="";
		document.getElementById("contactarea").innerHTML="Please wait for few seconds.....";
  		
		contactAjax(name,email,subject,message);
	}
}
  
var obj;
function contactAjax(name,email,subject,message)
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
	url="ContactServlet";
  	url=url+"?name="+name+"&email="+email+"&subject="+subject+"&message="+message;
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
  			alert("Thank You For Contact Us"); 
  			document.getElementById("contactarea").innerHTML="";
  			
  			document.location="index.jsp";
  		}
  		else if(k==0)
  			document.getElementById("contactarea").innerHTML="Mail Not send";
  	}
}