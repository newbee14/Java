 
function checkMarriagecertValidations()
{
	
	var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;

	var issueno=document.marriagecertform.is.value;
	var date=document.marriagecertform.dt.value;
	var name=document.marriagecertform.nm.value;
	var fname=document.marriagecertform.fn.value; 
	var mname=document.marriagecertform.mn.value;
	var dob=document.marriagecertform.db.value;
	var nationality=document.marriagecertform.na.value;
	var occupation=document.marriagecertform.oc.value;
	var resident=document.marriagecertform.rs.value;
	
	
	var bname=document.marriagecertform.bnm.value;
	var bfname=document.marriagecertform.bfn.value; 
	var bmname=document.marriagecertform.bmn.value;
	var bdob=document.marriagecertform.bdb.value;
	var bnationality=document.marriagecertform.bna.value;
	var boccupation=document.marriagecertform.boc.value;
	var bresident=document.marriagecertform.brs.value;
	var mdate=document.marriagecertform.dm.value;
	 
	var addn=document.marriagecertform.dn.value;
	var adct=document.marriagecertform.ct.value;
	var admd=document.marriagecertform.md.value;
	var addt=document.marriagecertform.dst.value;
	var pincode=document.marriagecertform.pc.value;
	var email=document.marriagecertform.eid.value;
	 
	if(date=="")	
    {
		document.getElementById("marriagecertarea").innerHTML="Enter date";
		document.marriagecertform.dt.focus();
    }
	else if(name=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter  name";
		document.marriagecertform.nm.focus();
	}
	else if(fname=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter Father's name";
		document.marriagecertform.fn.focus();
	}
	else if(mname=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter Mother's name";
		document.marriagecertform.mn.focus();
	}
	else if(dob=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter dob";
		document.marriagecertform.db.focus();
	}
	else if(nationality=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter nationality";
		document.marriagecertform.na.focus();
	}
	else if(occupation=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Specify occupation";
		document.marriagecertform.oc.focus();
	}
	else if(resident=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter Resident field";
		document.marriagecertform.rs.focus();
	}
	
	
	
	else if(bname=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter  name";
		document.marriagecertform.bnm.focus();
	}
	else if(bfname=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter Father's name";
		document.marriagecertform.bfn.focus();
	}
	else if(bmname=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter Mother's name";
		document.marriagecertform.bmn.focus();
	}
	else if(bdob=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter dob";
		document.marriagecertform.bdb.focus();
	}
	else if(bnationality=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter nationality";
		document.marriagecertform.bna.focus();
	}
	else if(boccupation=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Specify occupation";
		document.marriagecertform.boc.focus();
	}
	else if(bresident=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter Resident field";
		document.marriagecertform.brs.focus();
	}
	else if(mdate=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Specify marriage date";
		document.marriagecertform.dm.focus();
	}
	else if((addn==""))
	{
		document.getElementById("marriagecertarea").innerHTML="Enter doorno";
		document.marriagecertform.dn.focus();
	}
	else if(adct=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter City";
		document.marriagecertform.ct.focus();	
	}
	else if(admd=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter Mandal";
		document.marriagecertform.md.focus();
	}
	else if(addt=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter District";
		document.marriagecertform.dst.focus();
	}
	else if(pincode=="")
	{
		document.getElementById("marriagecertarea").innerHTML="Enter Pincode";
		document.marriagecertform.pc.focus();
	}
	else if(pincode.length<6)
	{
		document.getElementById("marriagecertarea").innerHTML="Pincode should be 6-digit";
		document.marriagecertform.pc.focus();
	}
	else if(isNaN(pincode)==true)
	{
		document.getElementById("marriagecertarea").innerHTML="Pincode should be numeric";
		document.marriagecertform.pc.focus();
	}		
	else if(email.search(emregex)==-1)
	{
		document.getElementById("marriagecertarea").innerHTML="Invalid Email id";
		document.marriagecertform.eid.focus();
	}
	else
	{
		document.getElementById("marriagecertarea").innerHTML="";
		aadhaarRegisterAjax(issueno,date,name,fname,mname,dob,nationality,occupation,resident,bname,bfname,bmname,bdob,
				bnationality,boccupation,bresident,mdate,addn,adct,admd,addt,pincode,email);
	}
}
  
var obj;
function aadhaarRegisterAjax(issueno,date,name,fname,mname,dob,nationality,occupation,resident,bname,bfname,bmname,bdob,
		bnationality,boccupation,bresident,mdate,addn,adct,admd,addt,pincode,email)
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
	url="MarriagecertServlet";
  	url=url+"?issueno="+issueno+"&date="+date+"&name="+name+"&fname="+fname+"&mname="+mname+"&dob="+dob+"&nationality="+
  	nationality+"&occupation="+occupation+"&resident="+resident+"&bname="+bname+"&bfname="+bfname+"&bmname="+bmname+
  	"&bdob="+bdob+"&bnationality="+bnationality+"&boccupation="+boccupation+"&bresident="+bresident+"&mdate="+mdate+
  	"&addn="+addn+"&adct="+adct+"&admd="+admd+"&addt="+addt+"&pincode="+pincode+"&email="+email;
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
  			document.getElementById("marriagecertarea").innerHTML="Registration Fail";
  	}
}
  