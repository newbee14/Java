 
function checkAadhaarValidations()
{
	
	var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;

	var date=document.aadharform.d.value;
	var enm=document.aadharform.en.value;
	var name=document.aadharform.nm.value;
	var fname=document.aadharform.fn.value; 
	var mname=document.aadharform.mn.value;
	var dob=document.aadharform.db.value;
	if(document.getElementById("male").checked)
 		 gender="Male";
	else if(document.getElementById("female").checked)
	 	 gender="Female";
	 
	var addn=document.aadharform.dn.value;
	var adct=document.aadharform.ct.value;
	var admd=document.aadharform.md.value;
	var addt=document.aadharform.dt.value;
	var pincode=document.aadharform.pc.value;
	var mobile=document.aadharform.mb.value;
	var email=document.aadharform.eid.value;
	var proof1=document.aadharform.idp.value;
	var proof2=document.aadharform.adp.value;
	
	if(date=="")	
    {
		document.getElementById("aadhararea").innerHTML="Enter date";
		document.aadharform.d.focus();
    }
	else if(name=="")
	{
		document.getElementById("aadhararea").innerHTML="Enter  name";
		document.aadharform.nm.focus();
	}
	else if(fname=="")
	{
		document.getElementById("aadhararea").innerHTML="Enter Father's name";
		document.aadharform.fn.focus();
	}
	else if(mname=="")
	{
		document.getElementById("aadhararea").innerHTML="Enter Mother's name";
		document.aadharform.mn.focus();
	}
	else if(dob=="")
	{
		document.getElementById("aadhararea").innerHTML="Enter dob";
		document.aadharform.db.focus();
	}
	else if((addn==""))
	{
		document.getElementById("aadhararea").innerHTML="Enter doorno";
		document.aadharform.dn.focus();
	}
	else if(adct=="")
	{
		document.getElementById("aadhararea").innerHTML="Enter City";
		document.aadharform.ct.focus();	
	}
	else if(admd=="")
	{
		document.getElementById("aadhararea").innerHTML="Enter Mandal";
		document.aadharform.md.focus();
	}
	else if(addt=="")
	{
		document.getElementById("aadhararea").innerHTML="Enter District";
		document.aadharform.dt.focus();
	}
	else if(pincode=="")
	{
		document.getElementById("aadhararea").innerHTML="Enter Pincode";
		document.aadharform.pc.focus();
	}
	else if(pincode.length<6)
	{
		document.getElementById("aadhararea").innerHTML="Pincode should be 6-digit";
		document.aadharform.pc.focus();
	}
	else if(isNaN(pincode)==true)
	{
		document.getElementById("aadhararea").innerHTML="Pincode should be numeric";
		document.aadharform.pc.focus();
	}
	else if(isNaN(mobile)==true)
	{
		document.getElementById("aadhararea").innerHTML="Contact should be numeric";
		document.aadharform.mb.focus();
	}
	else if(mobile.length<10)
	{
		document.getElementById("aadhararea").innerHTML="Contact should be 10-digit";
		document.aadharform.mb.focus();
	}
	else if(mobile.charAt(0)!=9 && mobile.charAt(0)!=8 && mobile.charAt(0)!=7)
	{
		document.getElementById("aadhararea").innerHTML="Contact must start with 9/8/7";
		document.aadharform.mb.focus();
	}		
	else if(email.search(emregex)==-1)
	{
		document.getElementById("aadhararea").innerHTML="Invalid Email id";
		document.aadharform.eid.focus();
	}
	else if(proof1=="")
	{
		document.getElementById("aadhararea").innerHTML="Upload idproof document";
		document.aadharform.idp.focus();
	}
	else if(proof2=="")
	{
		document.getElementById("aadhararea").innerHTML="Upload address document";
		document.aadharform.adp.focus();
	}
	else
	{
		document.getElementById("aadhararea").innerHTML="";
		//document.location="services.jsp";
		alert("id proof="+proof1+"add proof:"+proof2);
		aadhaarRegisterAjax(date,enm,name,fname,mname,dob,gender,addn,adct,admd,addt,pincode,mobile,email,proof1,proof2);	
		document.aadharform.submit();
	}
}
  
 var obj;
function aadhaarRegisterAjax(date,enm,name,fname,mname,dob,gender,addn,adct,admd,addt,pincode,mobile,email,proof1,proof2)
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
	url="AadharServlet";
  	url=url+"?date="+date+"&enm="+enm+"&name="+name+"&fname="+fname+"&mname="+mname+"&dob="+dob+
  	"&gender="+gender+"&addn="+addn+"&adct="+adct+"&admd="+admd+"&addt="+addt+"&pincode="+pincode+
  	"&mobile="+mobile+"&email="+email+"&proof1="+proof1+"&proof2="+proof2;
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
  			document.getElementById("aadhararea").innerHTML="Registration Fail";
  	}
}     
  