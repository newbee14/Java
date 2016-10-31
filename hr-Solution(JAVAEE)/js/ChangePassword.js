var obj;
function checkPassword()
{
	
var oldpassword=document.ChangePasswordform.oldpassword.value;

if(window.XMLHttpRequest)
	obj=new XMLHttpRequest();
else if(window.ActiveXObject)
	obj=new ActiveXObject("Microsoft.XMLHTTP");
else
	alert("Browser not support AJAX");

obj.onreadystatechange=handelRequest;
obj.open("post", "ChangePasswordServlet?oldpassword="+oldpassword,true);
obj.send();
}

function handelRequest()
{
  if(obj.readyState==4)
	 document.getElementById("result").innerHTML=obj.responseText;
}

