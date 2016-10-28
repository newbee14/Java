function fetchEMagazineOnLoad()
{
	alert("in magazine");
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleEMagazineOnLoad;
	obj.open("post","FetchEMagazineOnLoad",true);
	obj.send();
	alert("after send");
}

function handleEMagazineOnLoad()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{	
		var res=obj.responseText.split("/");
		//for(var j=0;j<6;j++)
			//{
			//alert("hi "+res[j]);
			//}
		
		var i=0,k=0;
		while(i<12)
			{
				document.getElementById("titlepage"+(i+1)).innerHTML=res[k];
				k++;
				document.getElementById("themepage"+(i+1)).innerHTML=res[k];
				k++;
				i++;
			}
		
	}
	
}
var p;
function fetchCompleteArticle(k)
{
	
	p=k;
	alert("hi in complete article part "+k+" p : "+p);
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleCompleteArticle;
	obj.open("post","CompleteArticleServlet?articleid="+k,true);
	obj.send();
	//alert("after snd of complete article");
}



function handleCompleteArticle()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{	
		var k=parseInt(obj.responseText);
		if(k==1)
			{
			alert("finally p ready for response wid value : "+p);
			document.location="EMagazineDescriptionStudent.jsp?id="+p;	
			}
		else if(k==2)
			{
			alert("finally p ready for response wid value : "+p);
			document.location="EMagazineDescriptionTeacher.jsp?id="+p;	
			}
		
		else if(k==3)
		{
			alert("finally p ready for response wid value : "+p);
			alert("IN USERTYPE transport");
			document.location="EMagazineDescriptionTransportOfficier.jsp?id="+p;	
		}
		
		else if(k==4)
		{
			alert("finally p ready for response wid value : "+p);
			document.location="EMagazineDescriptionAccWarLib.jsp?id="+p;	
		}
			
	}
	
}


/*function fetchArticleID()
{
	//alert("in js");
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleArticleIDGeneration;
	obj.open("post","ArticleIdServlet",true);
	obj.send();
	//alert("after snd");
	
}

function handleArticleIDGeneration()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
	//alert("in if");
		var k=parseInt(obj.responseText);
		document.AddEMagazine.articleid.value=k;
	}
}
*/
function readURL(input) {
    if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e) {
            $('#mypic')
                .attr('src', e.target.result)
                .width(300)
                .height(163);
        };

        reader.readAsDataURL(input.files[0]);
    }
}