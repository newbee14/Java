var obj;
function manageResult()
{
	var name=document.interview_result.name.value;
	var username=document.interview_result.username.value;
	var jobcode=document.interview_result.jobcode.value;
	var writentest=document.interview_result.writen_test.value;
	var interview_marks=document.interview_result.interview_marks.value;
	var status=document.interview_result.status.value;
	alert(name+" "+username+" "+jobcode+" "+writentest+" "+interview_marks+" "+status);
	if(window.XMLHttpRequest)
		obj=new XMLHttpRequest();
	else if(window.ActiveXObject)
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	else
		alert("Browser not support AJAX");

	obj.onreadystatechange=addResult;
	obj.open("post", "ManageResultServlet?name="+name+"&username="+username+"&jobcode="+jobcode+"&writentest="+writentest+"&interview_marks="+interview_marks+"&status="+status,true);
	obj.send();
	
}
function addResult()
{
 	document.getElementById("resultAdded").innerHTML=obj.responseText;
}
function viewInterviewSchedule()
{

	if(window.XMLHttpRequest)
		obj=new XMLHttpRequest();
	else if(window.ActiveXObject)
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	else
		alert("Browser not support AJAX");

	obj.onreadystatechange=viewInterviewTable;
	obj.open("get", "ViewInterviewSchedule",true);
	obj.send();

}
function viewInterviewTable()
{
 	document.getElementById("result_table").innerHTML=obj.responseText;
 
}
function manageInterview()
{
	var jobcode=document.manageinterview.jobcode.value;
	var date=document.manageinterview.date.value;
	var interviewer=document.manageinterview.interviewer.value;
	var venue=document.manageinterview.venue.value;
	var time=document.manageinterview.time.value;	
	var writen=document.manageinterview.writen.value;
	var technical=document.manageinterview.technical.value;
	var hr=document.manageinterview.hr.value;	

	if(window.XMLHttpRequest)
		obj=new XMLHttpRequest();
	else if(window.ActiveXObject)
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	else
		alert("Browser not support AJAX");

	obj.onreadystatechange=manageInterviewTable;
	obj.open("post", "ManageInterviewServlet?jobcode="+jobcode+"&date="+date+"&interviewer="+interviewer+"&venue="+venue+"&time="+time+"&writen="+writen+"&technical="+technical+"&hr="+hr,true);
	obj.send();
	}
	function manageInterviewTable()
	{
	    var k=parseInt(obj.responseText);   
	  	if(k==0)
		document.getElementById("manageInterviewResult").innerHTML="Interview Not Shedule";
	  	else
	  	document.getElementById("manageInterviewResult").innerHTML="Interview Shedule";
	
	}
	


