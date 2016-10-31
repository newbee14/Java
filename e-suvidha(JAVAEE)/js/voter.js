 
function checkVoterValidations()
{
	var name=document.voterform.nm.value;
	var surname=document.voterform.sn.value;
	var fname=document.voterform.fn.value;
	var mname=document.voterform.mn.value; 
	var dob=document.voterform.db.value;
	
	if(document.getElementById("male").checked)
		gender="Male";
	else if(document.getElementById("female").checked)
		gender="Female";
	
	var place=document.voterform.pb.value;
	var doorno=document.voterform.dn.value;
	var street=document.voterform.st.value;
	var postoffice=document.voterform.po.value;
	var tehsil=document.voterform.tl.value;
	var pincode=document.voterform.pc.value; 
	var city=document.voterform.ct.value;
	var district=document.voterform.dst.value;
	var voterno=document.voterform.vn.value;
	var name1=document.voterform.nm1.value;
	var relation1=document.voterform.rl1.value;
	var part1=document.voterform.pn1.value;
	var cardno1=document.voterform.id1.value;
	var mobile1=document.voterform.mb1.value;
	
	var name2=document.voterform.nm2.value;
	var relation2=document.voterform.rl2.value;
	var part2=document.voterform.pn2.value;
	var cardno2=document.voterform.id2.value;
	var mobile2=document.voterform.mb2.value;
	var date=document.voterform.dt.value;
	 
	if(name=="")	
    {
		document.getElementById("voterarea").innerHTML="Enter your name";
		document.voterform.nm.focus();
    }
	else if(surname=="")
	{
		document.getElementById("voterarea").innerHTML="Enter your surname";
		document.voterform.sn.focus();
	}
	else if(fname=="")
	{
		document.getElementById("voterarea").innerHTML="Enter Father's name";
		document.voterform.fn.focus();
	}
	else if(mname=="")
	{
		document.getElementById("voterarea").innerHTML="Enter Mother's name";
		document.voterform.mn.focus();
	}
	else if(dob=="")
	{
		document.getElementById("voterarea").innerHTML="Enter dob";
		document.voterform.db.focus();
	}
	else if(place=="")
	{
		document.getElementById("voterarea").innerHTML="Enter place of birth";
		document.voterform.pb.focus();
	}
	else if(doorno=="")
	{
		document.getElementById("voterarea").innerHTML="Enter doorno";
		document.voterform.dn.focus();
	}
	else if(street=="")
	{
		document.getElementById("voterarea").innerHTML="Enter street no";
		document.voterform.st.focus();
	}
	else if(postoffice=="")
	{
		document.getElementById("voterarea").innerHTML="Specify field post office";
		document.voterform.po.focus();
	}
	else if(tehsil=="")
	{
		document.getElementById("voterarea").innerHTML="Enter tehsil";
		document.voterform.tl.focus();
	}
	else if(pincode=="")
	{
		document.getElementById("voterarea").innerHTML="Enter pincode";
		document.voterform.pc.focus();
	}
	else if(isNaN(pincode)==true)
	{
		document.getElementById("voterarea").innerHTML="Pincode should b numeric";
		document.voterform.pc.focus();
	}
	else if(pincode.length<6)
	{
		document.getElementById("voterarea").innerHTML="Enter 6-digit pincode";
		document.voterform.pc.focus();
	}
	else if(city=="")
	{
		document.getElementById("voterarea").innerHTML="Enter city";
		document.voterform.ct.focus();
	}
	else if(district=="")
	{
		document.getElementById("voterarea").innerHTML="Enter district";
		document.voterform.dst.focus();
	}
	else if(name1=="")
	{
		document.getElementById("voterarea").innerHTML="Specify name";
		document.voterform.nm1.focus();
	}
	else if(relation1=="")
	{
		document.getElementById("voterarea").innerHTML="Enter relation";
		document.voterform.rl1.focus();
	}
	else if(part1=="")
	{
		document.getElementById("voterarea").innerHTML="Specify part no field";
		document.voterform.pn1.focus();
	}
	else if((cardno1==""))
	{
		document.getElementById("voterarea").innerHTML="Enter cardno field";
		document.voterform.id1.focus();
	}
	else if(mobile1=="")
	{
		document.getElementById("voterarea").innerHTML="Enter mobile no";
		document.voterform.mb1.focus();	
	}
	else if(isNaN(mobile1)==true)
	{
		document.getElementById("voterarea").innerHTML="Mobile no should b numeric";
		document.voterform.mb1.focus();
	}
	else if(mobile1.length<10)
	{
		document.getElementById("voterarea").innerHTML="enter 10-digit no";
		document.voterform.mb1.focus();
	}
	else if(mobile1.charAt(0)!=9 && mobile1.charAt(0)!=8 && mobile1.charAt(0)!=7)
	{
		document.getElementById("voterarea").innerHTML="Contact must start with 9/8/7";
		document.voterform.mb1.focus();
	}
	else if(name2=="")
	{
		document.getElementById("voterarea").innerHTML="Specify name";
		document.voterform.nm2.focus();
	}
	else if(relation2=="")
	{
		document.getElementById("voterarea").innerHTML="Enter relation";
		document.voterform.rl2.focus();
	}
	else if(part2=="")
	{
		document.getElementById("voterarea").innerHTML="Specify part no field";
		document.voterform.pn2.focus();
	}
	else if((cardno2==""))
	{
		document.getElementById("voterarea").innerHTML="Enter cardno field";
		document.voterform.id2.focus();
	}
	else if(mobile2=="")
	{
		document.getElementById("voterarea").innerHTML="Enter mobile no";
		document.voterform.mb2.focus();	
	}
	else if(isNaN(mobile2)==true)
	{
		document.getElementById("voterarea").innerHTML="Mobile no should b numeric";
		document.voterform.mb2.focus();
	}
	else if(mobile2.length<10)
	{
		document.getElementById("voterarea").innerHTML="enter 10-digit no";
		document.voterform.mb2.focus();
	}
	else if(mobile2.charAt(0)!=9 && mobile2.charAt(0)!=8 && mobile2.charAt(0)!=7)
	{
		document.getElementById("voterarea").innerHTML="Contact must start with 9/8/7";
		document.voterform.mb2.focus();
	}
	else if(date=="")
	{
		document.getElementById("voterarea").innerHTML="Enter date";
		document.voterform.dt.focus();
	}
	else
	{
		document.getElementById("voterarea").innerHTML="";
		voterRegisterAjax(name,surname,fname,mname,dob,gender,place,doorno,street,postoffice,tehsil,pincode,city,district,
				voterno,name1,relation1,part1,cardno1,mobile1,name2,relation2,part2,cardno2,mobile2,date);
	}
}
  
var obj;
function voterRegisterAjax(name,surname,fname,mname,dob,gender,place,doorno,street,postoffice,tehsil,pincode,city,district,
							voterno,name1,relation1,part1,cardno1,mobile1,name2,relation2,part2,cardno2,mobile2,date)
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
	url="VotercardServlet";
  	url=url+"?name="+name+"&surname="+surname+"&fname="+fname+"&mname="+mname+"&dob="+dob+"&gender="+gender+"&place="+
  	place+"&doorno="+doorno+"&street="+street+"&postoffice="+postoffice+"&tehsil="+tehsil+"&pincode="+pincode+
  	"&city="+city+"&district="+district+"&voterno="+voterno+"&name1="+name1+"&relation1="+relation1+
  	"&part1="+part1+"&cardno1="+cardno1+"&mobile1="+mobile1+"&name2="+name2+"&relation2="+relation2+"&part="+part2+
  	"&cardno2="+cardno2+"&mobile2="+mobile2+"&date="+date;
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
  			document.getElementById("voterarea").innerHTML="Registration Fail";
  	}
}
  