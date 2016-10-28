var obj;
function skillMethod2()
{

var domain=document.filter.domain.value;
alert(domain);
if(window.XMLHttpRequest)
	obj=new XMLHttpRequest();
else if(window.ActiveXObject)
	obj=new ActiveXObject("Microsoft.XMLHTTP");
else
	alert("Browser not support AJAX");

obj.onreadystatechange=handelRequest22;
obj.open("post", "SkillServlet?domain="+domain,true);
obj.send();
}
function handelRequest22()
{
	  if(obj.readyState==4)
	  {
		// document.getElementById("skill").innerHTML="Skills";
	 document.getElementById("skillarea").innerHTML=obj.responseText;
	  }
}


var obj;
function skillMethod()
{
var domain=document.personalform.domain.value;

if(window.XMLHttpRequest)
	obj=new XMLHttpRequest();
else if(window.ActiveXObject)
	obj=new ActiveXObject("Microsoft.XMLHTTP");
else
	alert("Browser not support AJAX");

obj.onreadystatechange=handelRequest2;
obj.open("post", "SkillServlet?domain="+domain,true);
obj.send();
}
function handelRequest2()
{
	  if(obj.readyState==4)
	  {
		 document.getElementById("skill").innerHTML="Skills";
	 document.getElementById("skillarea").innerHTML=obj.responseText;
	  }
}

function showCities()
{
var state=document.personalform.state.value;

if(window.XMLHttpRequest)
	obj=new XMLHttpRequest();
else if(window.ActiveXObject)
	obj=new ActiveXObject("Microsoft.XMLHTTP");
else
	alert("Browser not support AJAX");

obj.onreadystatechange=handelRequest;
obj.open("post", "CityServlet?state="+state,true);
obj.send();
}

function handelRequest()
{
	
  if(obj.readyState==4)
	  {
		 document.getElementById("city").innerHTML="City";
	 document.getElementById("cityarea").innerHTML=obj.responseText;
	  }
}
