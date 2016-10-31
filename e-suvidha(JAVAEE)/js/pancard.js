function checkPanCardValidations()
{
	var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;
	
	var status=document.pancardform.status.value;
	var date=document.pancardform.date.value; 
	var pid=document.pancardform.pn.value; 
	
	var fnm=document.pancardform.fnm.value; 
	var mnm=document.pancardform.mnm.value;
	var lnm=document.pancardform.lnm.value;
	 var fullname= fnm+" "+mnm+" "+lnm;
	 var name=document.pancardform.nm.value;
	var fathername=document.pancardform.fn.value;
//	if(document.getElementById('r1').checked==false
	var dob=document.pancardform.date.value; 
	
	var addn=document.pancardform.dn.value;

	var adct=document.pancardform.ct.value;
	var admd=document.pancardform.md.value;
	var addt=document.pancardform.dt.value;
	var pincode=document.pancardform.pc.value;
	var rno=document.pancardform.no.value;
	
	var name1=document.pancardform.nm1.value;
	var nationality1=document.pancardform.na1.value;
	var age1=document.pancardform.ag1.value;
	var fname1=document.pancardform.fn1.value;
	var relation1=document.pancardform.rl1.value;
	
	var name2=document.pancardform.nm2.value;
	var nationality2=document.pancardform.na2.value;
	var age2=document.pancardform.ag2.value;
	var fname2=document.pancardform.fn2.value;
	var relation2=document.pancardform.rl2.value;
	
	var name3=document.pancardform.nm3.value;
	var nationality3=document.pancardform.na3.value;
	var age3=document.pancardform.ag3.value;
	var fname3=document.pancardform.fn3.value;
	var relation3=document.pancardform.rl3.value;
	var email=document.pancardform.eid.value; 
	if(name=="")	
    {
		document.getElementById("rationcardarea").innerHTML="Enter your name";
		document.pancardform.nm.focus();
    }
	else if(fathername=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter  your father's name";
		document.pancardform.fn.focus();
	}
	else if((addn==""))
	{
		document.getElementById("rationcardarea").innerHTML="Enter doorno";
		document.pancardform.dn.focus();
	}
	else if(adct=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter City";
		document.pancardform.ct.focus();	
	}
	else if(admd=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Mandal";
		document.pancardform.md.focus();
	}
	else if(addt=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter District";
		document.pancardform.dt.focus();
	}
	else if(pincode=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Pincode";
		document.pancardform.pc.focus();
	}
	else if(pincode.length<6)
	{
		document.getElementById("rationcardarea").innerHTML="Pincode should be 6-digit";
		document.pancardform.pc.focus();
	}
	else if(isNaN(pincode)==true)
	{
		document.getElementById("rationcardarea").innerHTML="Pincode should be numeric";
		document.pancardform.pc.focus();
	}
	
	else if(name1=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter name";
		document.pancardform.nm1.focus();
	}
	else if(nationality1=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Nationality";
		document.pancardform.na1.focus();
	}
	else if(age1=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Age";
		document.pancardform.ag1.focus();
	}
	else if(isNaN(age1)==true)
	{
		document.getElementById("rationcardarea").innerHTML="Age should be numeric";
		document.pancardform.ag1.focus();
	}
	else if(fname1=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Father's Name";
		document.pancardform.fn1.focus();
	}
	else if(relation1=="")
	{
		document.getElementById("rationcardarea").innerHTML="Please Elaborate Relation";
		document.pancardform.rl1.focus();
	}
	
	else if(name2=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter name";
		document.pancardform.nm2.focus();
	}
	else if(nationality2=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Nationality";
		document.pancardform.na2.focus();
	}
	else if(age2=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Age";
		document.pancardform.ag2.focus();
	}
	else if(isNaN(age2)==true)
	{
		document.getElementById("rationcardarea").innerHTML="Age should be numeric";
		document.pancardform.ag2.focus();
	}
	else if(fname2=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Father's Name";
		document.pancardform.fn2.focus();
	}
	else if(relation2=="")
	{
		document.getElementById("rationcardarea").innerHTML="Please Elaborate Relation";
		document.pancardform.rl2.focus();
	}
	
	else if(name3=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter name";
		document.pancardform.nm3.focus();
	}
	else if(nationality3=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Nationality";
		document.pancardform.na3.focus();
	}
	else if(age3=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Age";
		document.pancardform.ag3.focus();
	}
	else if(isNaN(age3)==true)
	{
		document.getElementById("rationcardarea").innerHTML="Age should be numeric";
		document.pancardform.ag3.focus();
	}
	else if(fname3=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Father's Name";
		document.pancardform.fn3.focus();
	}
	else if(relation3=="")
	{
		document.getElementById("rationcardarea").innerHTML="Please Elaborate Relation";
		document.pancardform.rl3.focus();
	}		
	else if(email.search(emregex)==-1)
	{
		document.getElementById("rationcardarea").innerHTML="Invalid Email id";
		document.pancardform.eid.focus();
	}
	else
	{
		document.getElementById("rationcardarea").innerHTML="";
		rationRegisterAjax(name,fathername,addn,adct,admd,addt,pincode,rno,name1,nationality1,age1,fname1,relation1,
				name2,nationality2,age2,fname2,relation2,name3,nationality3,age3,fname3,relation3,email);
	}
}
  
var obj;
 function rationRegisterAjax(name,fathername,addn,adct,admd,addt,pincode,rno,name1,nationality1,age1,fname1,relation1,
			name2,nationality2,age2,fname2,relation2,name3,nationality3,age3,fname3,relation3,email)
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
	url="RationcardServlet";
  	url=url+"?name="+name+"&fathername="+fathername+"&addn="+addn+"&adct="+adct+"&admd="+admd+"&addt="+addt+"&pincode="+pincode
  	+"&rno="+rno+"&name1="+name1+"&nationality1="+nationality1+"&age1="+age1+"&fname1="+fname1+"&relation1="+relation1+
  	"&name2="+name2+"&nationality2="+nationality2+"&age2="+age2+"&fname2="+fname2+"&relation2="+relation2+
  	"&name3="+name3+"&nationality3="+nationality3+"&age3="+age3+"&fname3="+fname3+"&relation3="+relation3+"&email="+email;
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
  			document.getElementById("rationcardarea").innerHTML="Registration Fail";
  	}
}
  