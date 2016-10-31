

function checkRegister()
{
	 var licno=document.enrolmentform.lic_no.value;
	 var licdt=document.enrolmentform.lic_dt.value;
	 var licla=document.enrolmentform.lic_la.value;
	 if(document.getElementById("motor1").checked)
 		 motor="below 50cc";
	else if(document.getElementById("motor2").checked)
		 motor="above 50cc";
	else if(document.getElementById("motor3").checked)
		 motor="light motor vehicle";
	else if(document.getElementById("motor4").checked)
		 motor="Transport vehicle";
	else if(document.getElementById("motor5").checked)
		 motor="Road Roller";
	else if(document.getElementById("motor6").checked)
		 motor="Invalid Carriage";
	 if(document.getElementById("motor7").checked)
		 {
		 	motor="Any Other Category";
		 }
	 var other=document.enrolmentform.spother.value;
	 var name=document.enrolmentform.fullname.value;
	 var fname=document.enrolmentform.sunof.value;
	 if(document.getElementById("male").checked)
 		 gender="Male";
	 else if(document.getElementById("female").checked)
	 	 gender="Female";
	 var door=document.enrolmentform.doorno.value;
	 var door_temp=document.enrolmentform.doorno_temp.value;
	 var village1=document.enrolmentform.village.value;
	 var vill=document.enrolmentform.v.value;
	 alert(village1+" : "+vill);
	 var mandal1=document.enrolmentform.mandal.value;
	 var mandal2=document.enrolmentform.mandal_temp.value;
	 var district1=document.enrolmentform.district.value;
	 var district2=document.enrolmentform.district_temp.value;
	 var pin1=document.enrolmentform.pin.value;
	 var pin2=document.enrolmentform.pin_temp.value;
	 var dob=document.enrolmentform.dateob.value;
	 var education=document.enrolmentform.edu.value;
	 var idmarks=document.enrolmentform.idmarks1.value;
	 var idmarks11=document.enrolmentform.idmarks2.value;
	 var bloodgroup=document.enrolmentform.bg.value;
	 var endorsed1=document.enrolmentform.endorsed.value;
	 var dis_reason1=document.enrolmentform.dis_reason.value;
	 var cer_no1=document.enrolmentform.cer_no.value;
	 var cer_dt1=document.enrolmentform.cer_dt.value;
	 var issuedby1=document.enrolmentform.issuedby.value;
	 if(document.getElementById("reyes1").checked)
 		 re1="yes";
	else if(document.getElementById("reno2").checked)
		 re1="no";
	 
	if(document.getElementById("reyes3").checked)
 		 re2="yes";
	else if(document.getElementById("reno4").checked)
		 re2="no";
	
	if(document.getElementById("reyes5").checked)
	 	 re3="yes";
    else if(document.getElementById("reno6").checked)
		 re3="no";
	
    if(document.getElementById("reyes7").checked)
	     re4="yes";
	else if(document.getElementById("reno8").checked)
		 re4="no";
	
    if(document.getElementById("reyes9").checked)
	 	 re5="yes";
	else if(document.getElementById("reno10").checked)
			re5="no";
	 
	 
	 
  if(licno=="")	
  {
	 
	document.getElementById("registerarea").innerHTML="Enter lic no.";
	document.enrolmentform.lic_no.focus();
  }
  else if(licdt=="")
  {
	document.getElementById("registerarea").innerHTML="Enter date.";
	document.enrolmentform.lic_dt.focus();
  }
  else if(licla=="")
  {
	document.getElementById("registerarea").innerHTML="Enter  name of LA";
	document.enrolmentform.lic_la.focus();
  }
  else if(name=="")
  {
	document.getElementById("registerarea").innerHTML="Enter Name";
	document.enrolmentform.fullname.focus();
  }
  else if(fname=="")
  {
	document.getElementById("registerarea").innerHTML="Enter son/daughter of";
	document.enrolmentform.sunof.focus();
  }
 else if(door=="")
{
	 document.getElementById("registerarea").innerHTML="Invalid Address";
		document.enrolmentform.doorno.focus();	
}
 else if(village1=="")
{
	 document.getElementById("registerarea").innerHTML="Invalid Address";
		document.enrolmentform.village.focus();
}
 else if(mandal1=="")
 {
 	 document.getElementById("registerarea").innerHTML="Invalid Address";
 		document.enrolmentform.mandal.focus();
 }
 else if(district1=="")
{
	 document.getElementById("registerarea").innerHTML="Invalid Address";
		document.enrolmentform.district.focus();
}
else if(pin1.length<6)
{
	  document.getElementById("registerarea").innerHTML="Pincode should be 6-digit";
		document.enrolmentform.pin.focus();
}
else if(isNaN(pin1)==true)
{
	document.getElementById("registerarea").innerHTML="Pincode should be numeric";
	document.enrolmentform.pin.focus();
}

else if(dob=="")
{
	document.getElementById("registerarea").innerHTML="Enter DOB";
	document.enrolmentform.dateob.focus();
}
else if(education=="")
{
	  document.getElementById("registerarea").innerHTML="Enter Education Details";
		document.enrolmentform.edu.focus();
}
else if(idmarks=="")
{
	document.getElementById("registerarea").innerHTML="Enter  Idmarks ";
	document.enrolmentform.idmarks1.focus();
}
else if(idmarks11=="")
  {
	document.getElementById("registerarea").innerHTML="Enter IDmarks";
	document.enrolmentform.idmarks2.focus();
  }
else if(bloodgroup=="")
{
	document.getElementById("registerarea").innerHTML="Enter Blood Groop";
	document.enrolmentform.bg.focus();
}
else if(endorsed1=="")
{
	document.getElementById("registerarea").innerHTML="Enter endorsed";
	document.enrolmentform.endorsed.focus();
}
else if(dis_reason1=="")
{
	document.getElementById("registerarea").innerHTML="Enter Reason of disqualification";
	document.enrolmentform.dis_reason.focus();
}

else if(cer_no1=="")
{
	document.getElementById("registerarea").innerHTML="Enter Driving Certificate No.";
	document.enrolmentform.cer_no.focus();
}
else if(cer_dt1=="")
{
	document.getElementById("registerarea").innerHTML="Enter Date of Certificate";
	document.enrolmentform.cer_dt.focus();
}
else if(issuedby1=="")
{
	document.getElementById("registerarea").innerHTML="Enter name of DTO";
	document.enrolmentform.issuedby.focus();
}
else
  {
	  document.getElementById("registerarea").innerHTML="";
	  alert(licno+"+"+licdt+"+"+licla+"+"+motor+"+"+other+"+"+name+"+"+fname+"+"+gender+"+"+door+"+"+door_temp+"+"+
			  village1+"+"+vill+"+"+mandal1+"+"+mandal2+"+"+
			  district1+"+"+district2+"+"+pin1+"+"+pin2+"+"+dob+"+"+education+"+"+idmarks+"+"+idmarks11+"+"+
			  bloodgroup+"+"+endorsed1+"+"+dis_reason1+"+"+cer_no1+"+"+cer_dt1+"+"+issuedby1+"+"+re1+"+"+re2+"+"+re3+"+"+re4+"+"+re5);
	  
	  
	  loginAjax(licno,licdt,licla,motor,other,name,fname,gender,door,door_temp,village1,vill,mandal1,mandal2,
			  district1,district2,pin1,pin2,dob,education,idmarks,idmarks11,
			  bloodgroup,endorsed1,dis_reason1,cer_no1,cer_dt1,issuedby1,re1,re2,re3,re4,re5);
  }
}
var obj;
function loginAjax(licno,licdt,licla,motor,other,name,fname,gender,door,door_temp,village1,vill,mandal1,mandal2,
		  district1,district2,pin1,pin2,dob,education,idmarks,idmarks11,
		  bloodgroup,endorsed1,dis_reason1,cer_no1,cer_dt1,issuedby1,re1,re2,re3,re4,re5)
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
	url="drivingServlet";
  	url=url+"?licno="+licno+"&licdt="+licdt+"&licla="+licla+"&motor="+motor+"&other="+other+"&name="+name+"&fname="+
  	fname+"&=gender"+gender+"&door="+door+"&door_temp="+door_temp+"&village1="+village1+"&vill="+vill+"&mandal1="+
  	mandal1+"&mandal2="+mandal2+"&district1="+district1+"&district2="+district2+"&pin1="+pin1+"&pin2="+pin2+
  	"&dob="+dob+"&education="+education+"&idmarks="+idmarks+"&idmarks11="+idmarks11+"&bloodgroup="+bloodgroup+
  	"&endorsed1="+endorsed1+"&dis_reason1="+dis_reason1+"&cer_no1="+cer_no1+"&cer_dt1="+cer_dt1+"&issuedby1="+
  	issuedby1+"&re1="+re1+"&re2="+re2+"&re3="+re3+"&re4="+re4+"&re5="+re5;
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
  			document.getElementById("registerarea").innerHTML="Registration Fail";
  	}
}
