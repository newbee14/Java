var obj;
function yes11()
{
	alert("hello hi");
	if(window.XMLHttpRequest)
		obj=new XMLHttpRequest();
	else if(window.ActiveXObject)
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	else
		alert("Browser not support AJAX");

	obj.onreadystatechange=handleRequest;
	obj.open("post", "ApplicantProfileServlet",true);
	obj.send();

}
function yes(form)
{
	alert("hello yes");
	var n =form.n.value;    							  //   alert(n);
	
	var dob =form.dob.value;							 //alert(dob);
	
	var address =form.address.value;			//	alert(address);
	var mailaddress =form.mailaddress.value;	   // alert(mailaddress);
	var state =form.state.value;						//alert(state);
	var city =form.city.value;  							//alert(city);
	var contactno =form.contactno.value; 			//alert(contactno);
	var email =form.email.value;  						//alert(email);
	var graduation =form.graduation.value;		//alert(graduation);
	var g_marks =form.g_marks.value;				//alert(g_marks);
	var g_university =form.g_university.value;	//alert(g_university);
	var g_yof =form.g_yof.value;                     //alert(g_yof);
	var postgraduation =form.postgraduation.value; //    alert(postgraduation);	
	var pg_marks =form.pg_marks.value;			//alert(pg_marks);
	var pg_university =form.pg_university.value;		//alert(pg_university);
	var pg_yof =form.pg_yof.value;				//	alert(pg_yof);
	var domain =form.domain.value;					//alert(domain);
	var skill =form.skill.value;						//	alert(skill);
	
if(window.XMLHttpRequest)
	obj=new XMLHttpRequest();
else if(window.ActiveXObject)
	obj=new ActiveXObject("Microsoft.XMLHTTP");
else
	alert("Browser not support AJAX");

obj.onreadystatechange=handleRequest;
//obj.open("post", "ApplicantProfileServlet",true);
obj.open("post", "ApplicantProfileServlet?n="+n+"&dob="+dob+"&address="+address+"&mailaddress="+mailaddress+"&state="+state+"&city="+city+"&contactno="+contactno+"&email="+email+"&graduation="+graduation+"&g_marks="+g_marks+"&g_university="+g_university+"&g_yof="+g_yof+"&postgraduation="+postgraduation+"&pg_marks="+pg_marks+"&pg_university="+pg_university+"&pg_yof="+pg_yof+"&domain="+domain+"&skill="+skill,true);
obj.send();
}

function handleRequest()
{
  if(obj.readyState==4)
	 document.getElementById("output").innerHTML=obj.responseText;
}
