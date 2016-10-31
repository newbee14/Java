function bloodDonorJS()
{
	
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleDonorIDGeneration;
	obj.open("post","DonorIDServlet",true);
	obj.send();
	
}

function handleDonorIDGeneration()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
	
		var k=parseInt(obj.responseText);
			
			document.BloodDonationRegistrationForm.donorid.value=k;
		
	}
}

/*************************************************************************************************/

function viewDonorsList()
{

	var bloodgroup=document.BloodDonationRegistrationForm.bloodgroup.value;
	
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	obj.onreadystatechange=handleDonorsList;
	
	obj.open("post","BloodDonorsListServlet?bloodgroup="+bloodgroup,true);
	
	obj.send();

}

function handleDonorsList()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		
		document.location="BlooddonorlistHome.jsp";
	}
	
}

/**************************************************************************************************/
function addBloodGroup()
{
	var donorid=document.BloodDonationRegistrationForm.donorid.value;
	var name=document.BloodDonationRegistrationForm.name.value;
	var designation=document.BloodDonationRegistrationForm.designation.value;
	var age=document.BloodDonationRegistrationForm.age.value;
	var gender=document.BloodDonationRegistrationForm.gender.value;
	
/*	if(document.getElementById("male").checked)
 	{
  		 gender= document.getElementById("male").value;
	}
 	else if(document.getElementById("female").checked)
	{
  			gender = document.getElementById("female").value;
 	}*/
 	
	var bloodgroup=document.BloodDonationRegistrationForm.bloodgroup.value;
	var mobilenumber=document.BloodDonationRegistrationForm.mobilenumber.value;
	var diseases=document.BloodDonationRegistrationForm.diseases.value;
	
	
	
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}

	if(age=="")
	{
		alert("Enter Your Age");
		document.BloodDonationRegistrationForm.age.focus();	
	}
	else if(age<18)
	{
		alert("Your Age is Less Than 18");
		document.BloodDonationRegistrationForm.age.focus();	
	}
	else if(age>50)
	{
		alert("Your Age is Greater Than 50");
		document.BloodDonationRegistrationForm.age.focus();	
	}
	else if(diseases=="")
	{
		alert("NA if you don't have any disease.");
		document.BloodDonationRegistrationForm.diseases.focus();
		
	}
	else
	{
	
	obj.onreadystatechange=handleAddBloodGroup;
	
	obj.open("post","BloodDonorServlet?donorid="+donorid+"&name="+name+"&designation="+designation+"&age="+age+"&gender="+gender+"&bloodgroup="+bloodgroup+"&mobilenumber="+mobilenumber+"&diseases="+diseases,true);
	obj.send();
	}
}

function handleAddBloodGroup()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
	
		var k=parseInt(obj.responseText);
		
		if(k==1)
		{
			document.location="StaffHome.jsp";
		}
		if(k==2)
		{
			document.location="TransportOfficerHome.jsp";
		}
		if(k==3)
		{
			document.location="LibWarAcc.jsp";
		}
		if(k==4)
		{
			document.location="StudentHome.jsp";
		}
	}
}	

/******************************************************************************************/

function verifyAge()
{

	var age=document.getElementById("age").value;
	if(age<18)
	{
		alert("You are not eligible for blood donation. Minimum age should be 18 years")
	}
	
}