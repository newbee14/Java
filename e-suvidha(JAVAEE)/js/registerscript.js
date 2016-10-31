function yes()
{
	document.registerform.nm.focus();

}
function checkRegister()
{
	
	 var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;
	 var name=document.registerform.nm.value;
	 var user=document.registerform.un.value;
	 var father=document.registerform.fn.value;
	 var pass=document.registerform.pw.value;
	 var contact=document.registerform.cn.value;
	 var email=document.registerform.em.value;
	 var age=document.registerform.ag.value;
	 var userid=document.registerform.uid.value;
	 
	 if(document.getElementById("male").checked)
	 		 sex="Male";
	 else if(document.getElementById("female").checked)
		 	 sex="Female";
	 var addn=document.registerform.dn.value;
	 var addn1=document.registerform.dn1.value;
	 var adct=document.registerform.ct.value;
	 var adct1=document.registerform.ct1.value;
	 var admd=document.registerform.md.value;
	 var admd1=document.registerform.md1.value;
	 var addt=document.registerform.dt.value;
	 var addt1=document.registerform.dt1.value;
	 var pin=document.registerform.pc.value;
	 var pin1=document.registerform.pc1.value;
	 var dob=document.registerform.db.value;
	 var pob=document.registerform.pb.value;
	 var bgrp=document.registerform.bg.value;
	 
  if(name=="")	
  {
	 
	document.getElementById("registerarea").innerHTML="Enter Name";
	document.registerform.nm.focus();
  }
  else if(user=="")
  {
	document.getElementById("registerarea").innerHTML="Enter Username";
	document.registerform.un.focus();
  }
  else if(father=="")
  {
	document.getElementById("registerarea").innerHTML="Enter Father's name";
	document.registerform.fn.focus();
  }
  else if(pass=="")
  {
	document.getElementById("registerarea").innerHTML="Enter Password";
	document.registerform.pw.focus();
  }
  else if(contact=="")
  {
	document.getElementById("registerarea").innerHTML="Enter Contact";
	document.registerform.cn.focus();
  }
  else if(isNaN(contact)==true)
  {
	document.getElementById("registerarea").innerHTML="Contact should be numeric";
	document.registerform.cn.focus();
  }
else if(contact.charAt(0)!="9"&&contact.charAt(0)!="8"&&contact.charAt(0)!="7")
{
	document.getElementById("registerarea").innerHTML="Contact must start with 9/8/7";
	document.registerform.cn.focus();
}
else if(contact.length<10)
{
	  document.getElementById("registerarea").innerHTML="Contact should be 10-digit";
		document.registerform.cn.focus();
}
else if(email.search(emregex)==-1)
  {
	document.getElementById("registerarea").innerHTML="Invalid Email id";
	document.registerform.em.focus();
  }
  else if(age=="")
  {
	document.getElementById("registerarea").innerHTML="Age is Required";
	document.registerform.ag.focus();
  }
  else if(isNaN(age)==true)
  {
	document.getElementById("registerarea").innerHTML="Age should be numeric";
	document.registerform.ag.focus();
  }
 else if((addn==""))
  {
	document.getElementById("registerarea").innerHTML="Invalid Address";
	document.registerform.dn.focus();
  }
 else if(adct=="")
{
	 document.getElementById("registerarea").innerHTML="Invalid Address";
		document.registerform.ct.focus();	
}
 else if(admd=="")
{
	 document.getElementById("registerarea").innerHTML="Invalid Address";
		document.registerform.md.focus();
}
 else if(addt=="")
{
	 document.getElementById("registerarea").innerHTML="Invalid Address";
		document.registerform.dt.focus();
}
else if(pin=="")
{
	document.getElementById("registerarea").innerHTML="Enter Pincode";
	document.registerform.pc.focus();
}
else if(pin.length<6)
{
	  document.getElementById("registerarea").innerHTML="Pincode should be 6-digit";
		document.registerform.pc.focus();
}
else if(isNaN(pin)==true)
{
	document.getElementById("registerarea").innerHTML="Pincode should be numeric";
	document.registerform.pc.focus();
}
else if(dob=="")
  {
	document.getElementById("registerarea").innerHTML="Enter DOB";
	document.registerform.db.focus();
  }
  else if(pob=="")
  {
	document.getElementById("registerarea").innerHTML="Enter POB";
	document.registerform.pb.focus();
  }
else
  {
	  document.getElementById("registerarea").innerHTML="";
	  loginAjax(name,user,father,pass,contact,email,age,userid,sex,addn,addn1,adct,adct1,admd,admd1,addt,addt1,pin,pin1,dob,pob,bgrp);
  }
}
  
  var obj;
function loginAjax(name,user,father,pass,contact,email,age,userid,sex,addn,addn1,adct,adct1,admd,admd1,addt,addt1,pin,pin1,dob,pob,bgrp)
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
  	url="RegisterServlet";
  	url=url+"?name="+name+"&user="+user+"&father="+father+"&pass="+pass+"&contact="+contact+"&email="+email+"&age="+age
  	+"&userid="+userid+"&sex="+sex+"&addn="+addn+"&addn1="+addn1
  	+"&adct="+adct+"&adct1="+adct1+"&admd="+admd+"&admd1="+admd1+"&addt="+addt+"&addt1="+addt1+"&pin="+pin
  	+"&pin1="+pin1+"&dob="+dob+"&pob="+pob+"&bgrp="+bgrp;
  	
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
  			document.getElementById("registerarea").innerHTML="";
  			document.location="index.jsp";
  		}
  		else if(k==0)
  			document.getElementById("registerarea").innerHTML="Registration Fail";
  	}
  }
  

