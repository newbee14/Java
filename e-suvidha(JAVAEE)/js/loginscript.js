function checkLogin()
{
	 var u=document.loginform.un.value;
	 var userid=document.loginform.uid.value;
	 var p=document.loginform.pw.value;
  if(u=="")	
  {
	 
	document.getElementById("loginarea").innerHTML="Enter Name";
	document.loginform.un.focus();
  }
  else if(userid=="")
  {
	document.getElementById("loginarea").innerHTML="Enter Userid";
	document.loginform.uid.focus();
  }
  else if(p=="")
  {
	document.getElementById("loginarea").innerHTML="Enter Password";
	document.loginform.pw.focus();
  }
  else
  {
	  document.getElementById("loginarea").innerHTML="";
	  loginAjax(u,userid,p);
  }
}
  
  var obj;
function loginAjax(un,id,pw)
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
  	url="LoginServlet";
  	url=url+"?user="+un+"&userid="+id+"&pass="+pw;
  	
  	obj.open("post",url,true);
  	obj.send();
}
function handlerequest()
  {
  	if(obj.readyState==4 || obj.status==200)
  	{
  		k=parseInt(obj.responseText);
  		if(k==1)
  			
  			document.location="services.jsp";
  		else if(k==0)
  			document.getElementById("loginarea").innerHTML="Invalid User";
  	}
  }
  
function clearText()
{
	document.loginform.un.value="";
	document.loginform.userid.value="";
}
