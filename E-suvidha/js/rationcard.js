/*function fetch()
{
	idFetchAjax();
}
function idFetchAjax()
{
	if(window.XMLHttpRequest)
	{
	
		obj=new XMLHttpRequest();
		
	}
	else if(window.ActiveXObject)
	{
		
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}  
	obj.onreadystatechange=handleidrequest;
	url="AadharServlet";
	obj.open("get",url,true);
  	obj.send();
}
function handleidrequest()
{
	if(obj.readyState==4 || obj.status==200)
  	{
  		k=parseInt(obj.responseText);
  		if(k==1)
  		{
  			 window.location.reload();
  			document.location="aadharcard.jsp";
  		}
  		else if(k==0)
  			alert("id not fetched");
  	}
} */
function checkRationcardValidations()
{
	
	var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;
	
	
	var name=document.rationcardform.nm.value; 
	var fathername=document.rationcardform.fn.value;
	var addn=document.rationcardform.dn.value;
	var adct=document.rationcardform.ct.value;
	var admd=document.rationcardform.md.value;
	var addt=document.rationcardform.dt.value;
	var pincode=document.rationcardform.pc.value;
	var rno=document.rationcardform.no.value;
	
	var name1=document.rationcardform.nm1.value;
	var nationality1=document.rationcardform.na1.value;
	var age1=document.rationcardform.ag1.value;
	var fname1=document.rationcardform.fn1.value;
	var relation1=document.rationcardform.rl1.value;
	
	var name2=document.rationcardform.nm2.value;
	var nationality2=document.rationcardform.na2.value;
	var age2=document.rationcardform.ag2.value;
	var fname2=document.rationcardform.fn2.value;
	var relation2=document.rationcardform.rl2.value;
	
	var name3=document.rationcardform.nm3.value;
	var nationality3=document.rationcardform.na3.value;
	var age3=document.rationcardform.ag3.value;
	var fname3=document.rationcardform.fn3.value;
	var relation3=document.rationcardform.rl3.value;
	var email=document.rationcardform.eid.value; 
	if(name=="")	
    {
		document.getElementById("rationcardarea").innerHTML="Enter your name";
		document.rationcardform.nm.focus();
    }
	else if(fathername=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter  your father's name";
		document.rationcardform.fn.focus();
	}
	else if((addn==""))
	{
		document.getElementById("rationcardarea").innerHTML="Enter doorno";
		document.rationcardform.dn.focus();
	}
	else if(adct=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter City";
		document.rationcardform.ct.focus();	
	}
	else if(admd=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Mandal";
		document.rationcardform.md.focus();
	}
	else if(addt=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter District";
		document.rationcardform.dt.focus();
	}
	else if(pincode=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Pincode";
		document.rationcardform.pc.focus();
	}
	else if(pincode.length<6)
	{
		document.getElementById("rationcardarea").innerHTML="Pincode should be 6-digit";
		document.rationcardform.pc.focus();
	}
	else if(isNaN(pincode)==true)
	{
		document.getElementById("rationcardarea").innerHTML="Pincode should be numeric";
		document.rationcardform.pc.focus();
	}
	
	else if(name1=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter name";
		document.rationcardform.nm1.focus();
	}
	else if(nationality1=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Nationality";
		document.rationcardform.na1.focus();
	}
	else if(age1=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Age";
		document.rationcardform.ag1.focus();
	}
	else if(isNaN(age1)==true)
	{
		document.getElementById("rationcardarea").innerHTML="Age should be numeric";
		document.rationcardform.ag1.focus();
	}
	else if(fname1=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Father's Name";
		document.rationcardform.fn1.focus();
	}
	else if(relation1=="")
	{
		document.getElementById("rationcardarea").innerHTML="Please Elaborate Relation";
		document.rationcardform.rl1.focus();
	}
	
	else if(name2=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter name";
		document.rationcardform.nm2.focus();
	}
	else if(nationality2=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Nationality";
		document.rationcardform.na2.focus();
	}
	else if(age2=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Age";
		document.rationcardform.ag2.focus();
	}
	else if(isNaN(age2)==true)
	{
		document.getElementById("rationcardarea").innerHTML="Age should be numeric";
		document.rationcardform.ag2.focus();
	}
	else if(fname2=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Father's Name";
		document.rationcardform.fn2.focus();
	}
	else if(relation2=="")
	{
		document.getElementById("rationcardarea").innerHTML="Please Elaborate Relation";
		document.rationcardform.rl2.focus();
	}
	
	else if(name3=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter name";
		document.rationcardform.nm3.focus();
	}
	else if(nationality3=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Nationality";
		document.rationcardform.na3.focus();
	}
	else if(age3=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Age";
		document.rationcardform.ag3.focus();
	}
	else if(isNaN(age3)==true)
	{
		document.getElementById("rationcardarea").innerHTML="Age should be numeric";
		document.rationcardform.ag3.focus();
	}
	else if(fname3=="")
	{
		document.getElementById("rationcardarea").innerHTML="Enter Father's Name";
		document.rationcardform.fn3.focus();
	}
	else if(relation3=="")
	{
		document.getElementById("rationcardarea").innerHTML="Please Elaborate Relation";
		document.rationcardform.rl3.focus();
	}		
	else if(email.search(emregex)==-1)
	{
		document.getElementById("rationcardarea").innerHTML="Invalid Email id";
		document.rationcardform.eid.focus();
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
  