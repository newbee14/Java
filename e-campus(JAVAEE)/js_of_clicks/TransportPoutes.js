function whatselected(value) 
{
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	if(value=="Route No")
		{
			obj.onreadystatechange=handleGettingRoutes;
			document.getElementById("hiddenInputs1").style.display='none';
			 document.getElementById("hiddenInputs").style.display='inline';
  			 obj.open("post","BasicServlet?id=routes",true);
 
		}
	else if(value=="Destination")
		{
			obj.onreadystatechange=handleGettingDestinations;

			document.getElementById("hiddenInputs").style.display='none';
			document.getElementById("hiddenInputs1").style.display='inline';
			obj.open("post","BasicServlet?id=destinations",true);
			 	 
		}
	obj.send();
		
}
function handleGettingRoutes()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
			document.getElementById("hiddenInputs").innerHTML=obj.responseText;
	}
}
function handleGettingDestinations()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
	document.getElementById("hiddenInputs1").innerHTML=obj.responseText;
	}
}


function viewBusViaJS()
{
	alert("VIEWBUSBYROUTEVIAJS");
	
    if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	if(document.ViewBusForm.BUS.value=="Route No")
	{
		 alert("ROUTENO.");
		 routeno=document.ViewBusForm.busRoute.value;
		 obj.onreadystatechange=handleRouteList;
		 obj.open("post","SearchBusServlet?routeno="+routeno,true);
		 alert("sending route no request");
		 obj.send();
	}
	else if(document.ViewBusForm.BUS.value=="Destination")
	{	
		alert("Destination.");
		destination=document.ViewBusForm.busDestination.value;
		obj.onreadystatechange=handleDestinationList;
		obj.open("post","SearchBusDestination?destination="+destination,true);
		alert("sending destination request");
		obj.send();
		
	}
}
function handleDestinationList()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		alert("dest1");
		if(obj.readyState==4 || obj.readyStatus==200)
		{
			alert("dest2");
			document.location="SearchBus.jsp";
		}
	}
}
function handleRouteList()
{
	alert("route1");
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		alert("route2");
		document.location="SearchBus.jsp";
	}
}