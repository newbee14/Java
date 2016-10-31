var obj1;
function yes()
{
	//var emregex=/^[A-Z0-9_%+-]+@[A-Z0-9.-]+[A-Z]{2,4}$/i;
	alert("yes");
	tempAjax();
}
 
function tempAjax()
{
	alert("temp ajax"); 
	if(window.XMLHttpRequest)
		{
			obj1=new XMLHttpRequest();
		}
	 else if(window.ActiveXObject)
		{
			obj1=new ActiveXObject("Microsoft.XMLHTTP");
		}  
	obj1.onreadystatechange=handlerequest1;
	url="ArmServlet";
  	obj1.open("post",url,true);
  	obj1.send();
} 
function handlerequest1()
{
}