
function checkArmlicenceValidations()
{
	var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;
	
	var name=document.armlicenceform.nm.value; 
	var fathername=document.armlicenceform.fn.value;
	var place=document.armlicenceform.pb.value;
	var nationality=document.armlicenceform.na.value;
	var address=document.armlicenceform.ad.value;
	var police=document.armlicenceform.ps.value;
	var mobile=document.armlicenceform.mb.value;
	var email=document.armlicenceform.eid.value;
	var occupation=document.armlicenceform.oc.value;
	var licenceno=document.armlicenceform.ln.value;
	
	if(document.getElementById("yes1").checked)
		 radio1="Yes";
	else if(document.getElementById("no1").checked)
	 	 radio1="No";
	
	if(document.getElementById("yes2").checked)
		 radio2="Yes";
	else if(document.getElementById("no2").checked)
	 	 radio2="No";
	
	if(document.getElementById("yes3").checked)
		 radio3="Yes";
	else if(document.getElementById("no3").checked)
	 	 radio3="No";
	
	if(document.getElementById("yes4").checked)
		 radio4="Yes";
	else if(document.getElementById("no4").checked)
	 	 radio4="No";
	
	if(document.getElementById("yes5").checked)
		 radio5="Yes";
	else if(document.getElementById("no5").checked)
	 	 radio5="No";
	
	if(document.getElementById("yes6").checked)
		 radio6="Yes";
	else if(document.getElementById("no6").checked)
	 	 radio6="No";
	
	if(document.getElementById("yes7").checked)
		 radio7="Yes";
	else if(document.getElementById("no7").checked)
	 	 radio7="No";
	var detail=document.armlicenceform.dt.value;
	
	if(document.getElementById("revolver").checked)
		 type="Revolver";
	else if(document.getElementById("rifle").checked)
	 	 type="Rifle";
	else if(document.getElementById("pistol").checked)
	 	 type="Pistol";
	else if(document.getElementById("gun").checked)
	 	 type="Gun";
	var need=document.armlicenceform.nd.value;
	var claim=document.armlicenceform.cl.value;
	alert(name+" "+fathername+" "+place+" "+nationality+" "+address+" "+police+" "+mobile+" "+email+" "+occupation+" "+
			licenceno+" "+radio1+" "+radio2+" "+radio3+" "+radio4+" "+radio5+" "+radio6+" "+radio7+" "+detail+" "+
			type+" "+need+" "+claim);
	if(name=="")	
    {
		document.getElementById("armlicencearea").innerHTML="Enter your name";
		document.armlicenceform.nm.focus();
    }
	else if(fathername=="")
	{
		document.getElementById("armlicencearea").innerHTML="Enter  your father's name";
		document.armlicenceform.fn.focus();
	}
	else if((place==""))
	{
		document.getElementById("armlicencearea").innerHTML="Enter place of birth";
		document.armlicenceform.pb.focus();
	}
	else if(nationality=="")
	{
		document.getElementById("armlicencearea").innerHTML="Enter Nationality";
		document.armlicenceform.na.focus();	
	}
	else if(address=="")
	{
		document.getElementById("armlicencearea").innerHTML="Enter Address";
		document.armlicenceform.ad.focus();
	}
	else if(police=="")
	{
		document.getElementById("armlicencearea").innerHTML="Specify Police address";
		document.armlicenceform.ps.focus();
	}
	else if(isNaN(mobile)==true)
	{
		document.getElementById("armlicencearea").innerHTML="Contact should be numeric";
		document.armlicenceform.mb.focus();
	}
	else if(mobile.length<10)
	{
		document.getElementById("armlicencearea").innerHTML="Contact should be 10-digit";
		document.armlicenceform.mb.focus();
	}
	else if(mobile.charAt(0)!=9 && mobile.charAt(0)!=8 && mobile.charAt(0)!=7)
	{
		document.getElementById("armlicencearea").innerHTML="Contact must start with 9/8/7";
		document.armlicenceform.mb.focus();
	}	
	else if(email.search(emregex)==-1)
	{
		document.getElementById("armlicencearea").innerHTML="Invalid Email id";
		document.armlicenceform.eid.focus();
	}
	else if(occupation=="")
	{
		document.getElementById("armlicencearea").innerHTML="Enter occupation";
		document.armlicenceform.oc.focus();
	}
	else if(detail=="")
	{
		document.getElementById("armlicencearea").innerHTML="Enter the details";
		document.armlicenceform.dt.focus();
	}
	else if(need=="")
	{
		document.getElementById("armlicencearea").innerHTML="Enter the need";
		document.armlicenceform.nd.focus();
	}
	
	else if(claim=="")
	{
		document.getElementById("armlicencearea").innerHTML="Enter any claim";
		document.armlicenceform.cl.focus();
	}
	else
	{
		document.getElementById("armlicencearea").innerHTML="";
		armlicenceRegisterAjax(name,fathername,place,nationality,address,police,mobile,email,occupation,licenceno,
				radio1,radio2,radio3,radio4,radio5,radio6,radio7,detail,type,need,claim);
	}
}
  
var obj1;
 function armlicenceRegisterAjax(name,fathername,place,nationality,address,police,mobile,email,occupation,licenceno,
			radio1,radio2,radio3,radio4,radio5,radio6,radio7,detail,type,need,claim)
{
	 alert("2");
	 if(window.XMLHttpRequest)
		{
		 	alert("win");
			obj1=new XMLHttpRequest();
			
		}
	else if(window.ActiveXObject)
		{
			obj1=new ActiveXObject("Microsoft.XMLHTTP");
		}  
	obj1.onreadystatechange=handlerequest1;
	url="ArmServlet";
  	url=url+"?name="+name+"&fathername="+fathername+"&place="+place+"&nationality="+nationality+"&address="+address+
  	"&police="+police+"&mobile="+mobile+"&email="+email+"&occupation="+occupation+"&licenceno="+licenceno+"&radio1="+radio1+
  	"&radio2="+radio2+"&radio3="+radio3+"&radio4="+radio4+"&radio5="+radio5+"&radio6="+radio6+"&radio7="+radio7+
  	"&detail="+detail+"&type="+type+"&need="+need+"&claim="+claim;
  	obj1.open("post",url,true);
  	obj1.send();
} 
 function handlerequest1()
 {
 	if(obj1.readyState==4 || obj.status==200)
   	{
   		k=parseInt(obj1.responseText);
   		if(k==1)
   		{
   			alert("Register Successfully"); 
   			document.location="services.jsp";
   		}
   		else if(k==0)
   			document.getElementById("armlicencearea").innerHTML="Registration Fail";
   	}
 }