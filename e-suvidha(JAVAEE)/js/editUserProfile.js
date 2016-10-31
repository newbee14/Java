function yes()
{
	document.updateform.nm.focus();

}
function checkValidations()
{
	var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;
	
	 var name=document.updateform.nm.value;
	 var father=document.updateform.fn.value;
	 var contact=document.updateform.cn.value;
	 var email=document.updateform.em.value;
	 var age=document.updateform.ag.value;
	  var addn=document.updateform.dn.value;
	 var addn1=document.updateform.dn1.value;
	 var adct=document.updateform.ct.value;
	 var adct1=document.updateform.ct1.value;
	 var admd=document.updateform.md.value;
	 var admd1=document.updateform.md1.value;
	 var addt=document.updateform.dt.value;
	 var addt1=document.updateform.dt1.value;
	 var pin=document.updateform.pc.value;
	 var pin1=document.updateform.pc1.value;
	 var dob=document.updateform.db.value;
	 var pob=document.updateform.pb.value;
	 var bgrp=document.updateform.bg.value;
  if(name=="")	
  {
	 
	document.getElementById("updatearea").innerHTML="Enter Name";
	document.updateform.nm.focus();
  }
  else if(father=="")
  {
	document.getElementById("updatearea").innerHTML="Enter Father's name";
	document.updateform.fn.focus();
  }
  else if(contact=="")
  {
	document.getElementById("updatearea").innerHTML="Enter Contact";
	document.updateform.cn.focus();
  }
  else if(isNaN(contact)==true)
  {
	document.getElementById("updatearea").innerHTML="Contact should be numeric";
	document.updateform.cn.focus();
  }
 else if(contact.charAt(0)!="9"&&contact.charAt(0)!="8"&&contact.charAt(0)!="7")
 {
	document.getElementById("updatearea").innerHTML="Contact must start with 9/8/7";
	document.updateform.cn.focus();
}
else if(contact.length<10)
{
	  document.getElementById("updatearea").innerHTML="Contact should be 10-digit";
		document.updateform.cn.focus();
}
else if(email.search(emregex)==-1)
  {
	document.getElementById("updatearea").innerHTML="Invalid Email id";
	document.updateform.em.focus();
  }
  else if(age=="")
  {
	document.getElementById("updatearea").innerHTML="Age is Required";
	document.updateform.ag.focus();
  }
  else if(isNaN(age)==true)
  {
	document.getElementById("updatearea").innerHTML="Age should be numeric";
	document.updateform.ag.focus();
  }
 else if((addn==""))
  {
	document.getElementById("updatearea").innerHTML="Invalid Address";
	document.updateform.dn.focus();
  }
 else if(adct=="")
{
	 document.getElementById("updatearea").innerHTML="Invalid Address";
		document.updateform.ct.focus();	
}
 else if(admd=="")
{
	 document.getElementById("updatearea").innerHTML="Invalid Address";
		document.updateform.md.focus();
}
 else if(addt=="")
{
	 document.getElementById("updatearea").innerHTML="Invalid Address";
		document.updateform.dt.focus();
}
else if(pin=="")
{
	document.getElementById("updatearea").innerHTML="Enter Pincode";
	document.updateform.pc.focus();
}
else if(pin.length<6)
{
	  document.getElementById("updatearea").innerHTML="Pincode should be 6-digit";
		document.updateform.pc.focus();
}
else if(isNaN(pin)==true)
{
	document.getElementById("updatearea").innerHTML="Pincode should be numeric";
	document.updateform.pc.focus();
}
else if(dob=="")
  {
	document.getElementById("updatearea").innerHTML="Enter DOB";
	document.updateform.db.focus();
  }
  else if(pob=="")
  {
	document.getElementById("updatearea").innerHTML="Enter POB";
	document.updateform.pb.focus();
  }
else
  {
	  document.getElementById("updatearea").innerHTML="";
	  loginAjax(name,father,contact,email,age,addn,addn1,adct,adct1,admd,admd1,addt,addt1,pin,pin1,dob,pob,bgrp);
  }
}
  
  var obj;
function loginAjax(name,father,contact,email,age,addn,addn1,adct,adct1,admd,admd1,addt,addt1,pin,pin1,dob,pob,bgrp)
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
  	url="EditUserProfileServlet";
  	url=url+"?name="+name+"&father="+father+"&contact="+contact+"&email="+email+"&age="+age
  	+"&addn="+addn+"&addn1="+addn1
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
  			alert("Updated Successfully"); 
  			document.getElementById("updatearea").innerHTML="";
  			document.location="services.jsp";
  		}
  		else if(k==0)
  			document.getElementById("updatearea").innerHTML="Failure Occur";
  	}
  }
  

