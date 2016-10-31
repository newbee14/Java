function checkOldPwd()
{
	
	var opw=document.changepassform.op.value;
	alert("hi"+opw);
	
		if(window.XMLHttpRequest)	
    		obj=new XMLHttpRequest();
    	else if(window.ActiveXObject)
    		obj=new ActiveXObject("Microsoft.XMLHTTP");
		
    	obj.onreadystatechange=handleOldPwdRequest;
    	url="ChangePwdServlet?id=1&opw="+opw;
    	obj.open("get",url,true);
    	obj.send();	
}
function handleOldPwdRequest()
{
	if(obj.readyState==4 || obj.status==200)
	{
		k=parseInt(obj.responseText);
		if(k==0)
			{
			document.getElementById("oparea").innerHTML="Password Not Matched";
			document.changepassform.op.focus();
			}
		else if(k==1)
		{
		document.getElementById("oparea").innerHTML="";
		}
	
	}
}

function checkValidations()
{
	var op=document.changepassform.op.value;
	var npw=document.changepassform.np.value;
	var cpw=document.changepassform.cp.value;
	
	if (npw=="")
	{
		document.getElementById("checkarea").innerHTML="Please enter new Password ";
		document.changepassform.np.focus();
	}			
	else if (cpw=="")
	{
		document.getElementById("checkarea").innerHTML="Please enter confirm Password ";
		document.changepassform.cp.focus();
	}
    else if(npw!=cpw)
   	{
    	document.getElementById("checkarea").innerHTML="Password not matched";
    	document.changepassform.np.focus();
   	}
    else
    {
    	//alert("np="+npw);
    	document.getElementById("checkarea").innerHTML="";
    	myAJAX(npw);
    }
}
function myAJAX(npw)
{
	if(window.XMLHttpRequest)	
    		obj=new XMLHttpRequest();
    else if(window.ActiveXObject)
    		obj=new ActiveXObject("Microsoft.XMLHTTP");
		
    obj.onreadystatechange=handleChangePwdRequest;
    url="ChangePwdServlet";
    url=url+"?ide=1&npw="+npw;
    obj.open("post",url,true);
    obj.send();	
}
function handleChangePwdRequest()
{
	if(obj.readyState==4 || obj.status==200)
	{
		k=parseInt(obj.responseText);
		if(k==1)
			{
				alert("password Change Successfully");
				document.location="services.jsp";
			}
		else if(k==0)
		{
			document.getElementById("checkarea").innerHTML="failure";
		}
	}
}
