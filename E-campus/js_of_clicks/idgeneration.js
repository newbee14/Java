function noticeIDJS()
{
	
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleNoticeIDGeneration;
	obj.open("post","NoticeIDServlet",true);
	obj.send();
	
}

function handleNoticeIDGeneration()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
	
		//var k=parseInt(obj.responseText);
		
		//if(k==1)
		//{
			document.AddNoticeByAdminForm.noticeid.value=obj.responseText;
		//}
	}
}