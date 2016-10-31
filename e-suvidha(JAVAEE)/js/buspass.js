
function checkBuspassValidations()
{
	
	var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;
	
	if(document.getElementById("nw").checked)
		 type="New";
	else if(document.getElementById("rn").checked)
	 	 type="Renewal";
	else if(document.getElementById("dl").checked)
		type="Duplicate";
	
	if(document.getElementById("ds").checked)
		 type1="Disable";
	else if(document.getElementById("bl").checked)
	 	 type1="Blind";
	
	var firstname=document.buspassform.fn.value; 
	var lastname=document.buspassform.ln.value;
	var addn=document.buspassform.dn.value;
	var adct=document.buspassform.ct.value;
	var admd=document.buspassform.md.value;
	var addt=document.buspassform.dt.value;
	var pincode=document.buspassform.pc.value;
	var dob=document.buspassform.db.value;
	var disability=document.buspassform.da.value;
	
	if(document.getElementById("yes").checked)
		 radio1="Yes";
	else if(document.getElementById("no").checked)
	 	 radio1="No";
	else if(document.getElementById("dont").checked)
		radio1="Dont Know";
	
	if(document.getElementById("yes1").checked)
		 radio2="Yes";
	else if(document.getElementById("no1").checked)
	 	 radio2="No";
	
	if(document.getElementById("yes2").checked)
		 radio3="Yes";
	else if(document.getElementById("no2").checked)
	 	 radio3="No";
	
	if(document.getElementById("yes3").checked)
		 radio4="Yes";
	else if(document.getElementById("no3").checked)
	 	 radio4="No";
	
	if(document.getElementById("yes4").checked)
		 radio5="Yes";
	else if(document.getElementById("no4").checked)
	 	 radio5="No";
	
	if(document.getElementById("yes5").checked)
		 radio6="Yes";
	else if(document.getElementById("no5").checked)
	 	 radio6="No";
	
	if(document.getElementById("yes6").checked)
		 radio7="Yes";
	else if(document.getElementById("no6").checked)
	 	 radio7="No";
	
	if(document.getElementById("yes7").checked)
		 radio8="Yes";
	else if(document.getElementById("no7").checked)
	 	 radio8="No";
	
	if(document.getElementById("yes8").checked)
		 radio9="Yes";
	else if(document.getElementById("no8").checked)
	 	 radio9="No";
	
	if(document.getElementById("yes9").checked)
		 radio10="Yes";
	else if(document.getElementById("no9").checked)
	 	 radio10="No";
	
	if(document.getElementById("yes10").checked)
		 radio11="Yes";
	else if(document.getElementById("no10").checked)
	 	 radio11="No";
	
	if(document.getElementById("yes11").checked)
		 radio12="Yes";
	else if(document.getElementById("no11").checked)
	 	 radio12="No";
	
	var doctorname=document.buspassform.dnm.value;
	var mobile=document.buspassform.dmb.value;
	var email=document.buspassform.eid.value;
	var tokenno=document.buspassform.tn.value; 
	if(firstname=="")	
    {
		document.getElementById("buspassarea").innerHTML="Enter your first name";
		document.buspassform.fn.focus();
    }
	else if(lastname=="")
	{
		document.getElementById("buspassarea").innerHTML="Enter  your last name";
		document.buspassform.ln.focus();
	}
	else if((addn==""))
	{
		document.getElementById("buspassarea").innerHTML="Enter doorno";
		document.buspassform.dn.focus();
	}
	else if(adct=="")
	{
		document.getElementById("buspassarea").innerHTML="Enter City";
		document.buspassform.ct.focus();	
	}
	else if(admd=="")
	{
		document.getElementById("buspassarea").innerHTML="Enter Mandal";
		document.buspassform.md.focus();
	}
	else if(addt=="")
	{
		document.getElementById("buspassarea").innerHTML="Enter District";
		document.buspassform.dt.focus();
	}
	else if(pincode=="")
	{
		document.getElementById("buspassarea").innerHTML="Enter Pincode";
		document.buspassform.pc.focus();
	}
	else if(pincode.length<6)
	{
		document.getElementById("buspassarea").innerHTML="Pincode should be 6-digit";
		document.buspassform.pc.focus();
	}
	else if(isNaN(pincode)==true)
	{
		document.getElementById("buspassarea").innerHTML="Pincode should be numeric";
		document.buspassform.pc.focus();
	}
	else if(disability=="")
	{
		document.getElementById("buspassarea").innerHTML="Enter your disability";
		document.buspassform.da.focus();
	}
	else if(doctorname=="")
	{
		document.getElementById("buspassarea").innerHTML="Enter your doctor name";
		document.buspassform.dnm.focus();
	}
	else if(isNaN(mobile)==true)
	{
		document.getElementById("buspassarea").innerHTML="Contact should be numeric";
		document.buspassform.dmb.focus();
	}
	else if(mobile.length<10)
	{
		document.getElementById("buspassarea").innerHTML="Contact should be 10-digit";
		document.buspassform.dmb.focus();
	}
	else if(mobile.charAt(0)!=9 && mobile.charAt(0)!=8 && mobile.charAt(0)!=7)
	{
		document.getElementById("buspassarea").innerHTML="Contact must start with 9/8/7";
		document.buspassform.dmb.focus();
	}		
	else if(email.search(emregex)==-1)
	{
		document.getElementById("buspassarea").innerHTML="Invalid Email id";
		document.buspassform.eid.focus();
	}
	else
	{
		document.getElementById("buspassarea").innerHTML="";
		aadhaarRegisterAjax(type,type1,firstname,lastname,addn,adct,admd,addt,pincode,dob,disability,radio1,radio2,
				radio3,radio4,radio5,radio6,radio7,radio8,radio9,radio10,radio11,radio12,doctorname,mobile,email,tokenno);
	}
}
  
var obj;
 function aadhaarRegisterAjax(type,type1,firstname,lastname,addn,adct,admd,addt,pincode,dob,disability,radio1,radio2,
		radio3,radio4,radio5,radio6,radio7,radio8,radio9,radio10,radio11,radio12,doctorname,mobile,email,tokenno)
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
	url="BuspassServlet";
  	url=url+"?type="+type+"&type1="+type1+"&firstname="+firstname+"&lastname="+lastname+"&addn="+addn+"&adct="+adct+
  	"&admd="+admd+"&addt="+addt+"&pincode="+pincode+"&dob="+dob+"&disability="+disability+"&radio1="+radio1+"&radio2="+radio2
  	+"&radio3="+radio3+"&radio4="+radio4+"&radio5="+radio5+"&radio6="+radio6+"&radio7="+radio7+"&radio8="+radio8+
  	"&radio9="+radio9+"&radio10="+radio10+"&radio11="+radio11+"&radio12="+radio12+"&doctorname="+doctorname+"&mobile="+mobile+
  	"&email="+email+"&tokenno="+tokenno;
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
  			document.getElementById("buspassarea").innerHTML="Registration Fail";
  	}
}
  