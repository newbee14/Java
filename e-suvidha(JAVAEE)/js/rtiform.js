
function checkRTIValidations()
{
	var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;
	
	var idno=document.rtiform.id.value;
	var name=document.rtiform.nm.value;
	var family_member=document.rtiform.sdw.value;
	var resident=document.rtiform.rs.value; 
	var info=document.rtiform.inf.value;
	var receipt=document.rtiform.rn.value;
	var date=document.rtiform.dt.value;
	var mobile=document.rtiform.mb.value;
	var email=document.rtiform.eid.value;
	var faxaddress=document.rtiform.fa.value;
	if(name=="")	
    {
		document.getElementById("rtiformarea").innerHTML="Enter your name";
		document.rtiform.nm.focus();
    }
	else if(family_member=="")
	{
		document.getElementById("rtiformarea").innerHTML="Enter the field son/daughter/wife";
		document.rtiform.sdw.focus();
	}
	else if(resident=="")
	{
		document.getElementById("rtiformarea").innerHTML="Enter resident";
		document.rtiform.rs.focus();
	}
	else if(info=="")
	{
		document.getElementById("rtiformarea").innerHTML="Enter information ";
		document.rtiform.inf.focus();
	}
	else if(receipt=="")
	{
		document.getElementById("rtiformarea").innerHTML="Enter receipt no";
		document.rtiform.rn.focus();
	}
	else if(date=="")
	{
		document.getElementById("rtiformarea").innerHTML="Select date";
		document.rtiform.dt.focus();
	}
	else if(mobile=="")
	{
		document.getElementById("rtiformarea").innerHTML="Enter mobile no.";
		document.rtiform.mb.focus();
	}
	else if(isNaN(mobile)==true)
	{
		document.getElementById("rtiformarea").innerHTML="Mobile no should b numeric";
		document.rtiform.mb.focus();
	}
	else if(mobile.length<10)
	{
		document.getElementById("rtiformarea").innerHTML="enter 10-digit no";
		document.rtiform.mb.focus();
	}
	else if(mobile.charAt(0)!=9 && mobile.charAt(0)!=8 && mobile.charAt(0)!=7)
	{
		document.getElementById("rtiformarea").innerHTML="Contact must start with 9/8/7";
		document.rtiform.mb.focus();
	}		
	else if(email.search(emregex)==-1)
	{
		document.getElementById("rtiformarea").innerHTML="Invalid Email id";
		document.rtiform.eid.focus();
	}
	else if(faxaddress=="")
	{
		document.getElementById("rtiformarea").innerHTML="enter fax address";
		document.rtiform.fa.focus();
	}
	else
	{
		document.getElementById("rtiformarea").innerHTML="";
		voterRegisterAjax(idno,name,family_member,resident,info,receipt,date,mobile,email,faxaddress);
	}
}
  
var obj;
function voterRegisterAjax(idno,name,family_member,resident,info,receipt,date,mobile,email,faxaddress)
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
	url="RTIformServlet";
  	url=url+"?idno="+idno+"&name="+name+"&family_member="+family_member+"&resident="+resident+"&info="+info+"&receipt="+
  	receipt+"&date="+date+"&mobile="+mobile+"&email="+email+"&faxaddress="+faxaddress;
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
  			alert("Register Successfully"); 
  			document.location="services.jsp";
  		}
  		else if(k==0)
  			document.getElementById("rtiformarea").innerHTML="Registration Fail";
  	}
}
  