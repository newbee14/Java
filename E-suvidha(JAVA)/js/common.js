function getNews()
{
	
		if(window.XMLHttpRequest)
			obj=new XMLHttpRequest();
		else if(window.ActiveXObject)
			obj=new ActiveXObject("Microsoft.XMLHTTP");
		obj.onreadystatechange=handleNewsAJAX;
		url="BasicServlet?id=getnews";
		obj.open("post",url, true);
		obj.send();
}
function handleNewsAJAX()
{
	if(obj.readyState==4||obj.status==200)
	{
	document.getElementById("newsarea").innerHTML=obj.responseText;
	}
}