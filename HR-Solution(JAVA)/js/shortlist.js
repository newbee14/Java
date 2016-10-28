var xmlhttp;

function viewFinalShortlistedApplicant()
{
	if(window.XMLHttpRequest)
		xmlhttp=new XMLHttpRequest();
	else if(window.ActiveXxmlhttpect)
		xmlhttp=new ActiveXxmlhttpect("Microsoft.XMLHTTP");
	else
		alert("Browser not support AJAX");

	xmlhttp.onreadystatechange=getFinalShortlistedTable;
	xmlhttp.open("post", "ViewFinalShortlistedApplicant",true);
	
	
	xmlhttp.send();

	
}

function getFinalShortlistedTable()
{
	  if(xmlhttp.readyState==4)
	  {
		  		document.getElementById("result_table").innerHTML=xmlhttp.responseText;
	  }
}


function shortlistajax()
{
	//alert("Shortlist ajax function Welcomes u");
	var q=document.filter.qualification.value;
	var y=document.filter.yop.value;
	var d=document.filter.domain.value;
	var j=document.filter.jobcode.value;
	var s=document.filter.skill.value;
	if(s==null)
		s="All";
		
	//alert(q+" "+y+" "+j+" "+d+" "+s);
	if(window.XMLHttpRequest)
		xmlhttp=new XMLHttpRequest();
	else if(window.ActiveXxmlhttpect)
		xmlhttp=new ActiveXxmlhttpect("Microsoft.XMLHTTP");
	else
		alert("Browser not support AJAX");

	xmlhttp.onreadystatechange=getQualificationTable;
	xmlhttp.open("post", "ShortListAjaxServlet?q="+q+"&y="+y+"&j="+j+"&d="+d+"&s="+s,true);
	
	
	xmlhttp.send();
	}
	function getQualificationTable()
	{
		  if(xmlhttp.readyState==4)
		  {
			  		document.getElementById("table_area").innerHTML=xmlhttp.responseText;
		  }
	}
	
