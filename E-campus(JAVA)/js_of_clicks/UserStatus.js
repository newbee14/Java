function FetchDataOfStaffViaJS()
	{
		var username=document.updateStudentStatus.username.value;
		alert("I am here");
		
		if(window.XMLHttpRequest)
		{
			obj=new XMLHttpRequest();
		}
		else if(window.ActiveXObject)
		{
			obj=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		obj.onreadystatechange=handleDetailForStatusOfStaff;	
		obj.open("post","FetchDetailsforStaffStatus?username="+username,true);
		obj.send();
		
	}
	function handleDetailForStatusOfStaff()
	{
		k=parseInt(obj.responseText);
		if(k==1)
		{
		document.getElementById("responseFetchStaffArea").innerHTML="Staff Id not found";		
		}
		else
		{
			document.getElementById("displayMyContent").innerHTML=obj.responseText;
			document.getElementById("hiddenDiv").style.display='block';
			
		}
	}
	
	//***************************************************************************************************************************//
	
	function FetchDataOfStudentViaJS()
	{	alert("hello");
		var username=document.updateStudentStatus.username.value;
		
		if(window.XMLHttpRequest)
		{
			obj=new XMLHttpRequest();
		}
		else if(window.ActiveXObject)
		{
			obj=new ActiveXObject("Microsoft.XMLHTTP");
		}
		
		obj.onreadystatechange=handleStudentDetailForStatus;	
		obj.open("post","FetchDetailsForStudentStatusServlet?username="+username,true);
		
		
		obj.send();
		
	}
	function handleStudentDetailForStatus()
	{
	    k=parseInt(obj.responseText);
		if(k==1)
		{
			document.getElementById("responseFetchRollArea").innerHTML="Roll number not found";		
		}
		else
		{
			document.getElementById("displayMyContent").innerHTML=obj.responseText;
			document.getElementById("hiddenDiv").style.display='block';
			
		}
	}