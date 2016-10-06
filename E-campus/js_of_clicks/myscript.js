
/* *************User Login(admin,student,faculty)******************* */

function checkUserViaJs()
{
	var usertype=document.loginDiv.usertype.value;
	var username=document.loginDiv.username.value;
	var password=document.loginDiv.password.value;
	
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	obj.onreadystatechange=handleLoginRequest;
	obj.open("post","LoginServlet?usertype="+usertype+"&username="+username+"&password="+password,true);
	obj.send();
}
function handleLoginRequest()
{
	if(obj.readyState==4 || obj.readyStatus==200)
		{
					
			page=parseInt(obj.responseText);
			if(page==1)
			{
				document.location="AdminHome.jsp";
			}
			else if(page==2)
			{	
				document.location="StaffHome.jsp";
			}
			else if(page==3)
			{	
				document.location="StaffHome.jsp";
			}
			else if(page==4)
			{	
				document.location="LibWarAcc.jsp";
			}
			else if(page==5)
			{	
				document.location="LibWarAcc.jsp";
			}
			else if(page==6)
			{	
				document.location="LibWarAcc.jsp";
			}
			else if(page==7)
			{
				document.location="StudentHome.jsp";
			}
			else if(page==8)
			{	
				document.location="TransportOfficerHome.jsp";
			}
			
			else 
			{
				document.getElementById("responseLoginArea").innerHTML="In-correct username or password";
			}
		}
}

/* ************* Register or sign up form for Students ******************* */

function registerStudentViaJs()
{
	
	var username=document.StudentRegistrationForm.username.value;
	var name=document.StudentRegistrationForm.name.value;
	var branch=document.StudentRegistrationForm.branch.value;
	var batch=document.StudentRegistrationForm.batch.value;
	var dob=document.StudentRegistrationForm.dob.value;
	var gender=document.StudentRegistrationForm.gender.value;
	var password=document.StudentRegistrationForm.password.value;
	var confirmpassword=document.StudentRegistrationForm.confirmpassword.value;
	var email=document.StudentRegistrationForm.email.value;
	var mobilenumber=document.StudentRegistrationForm.mobilenumber.value;
	var address=document.StudentRegistrationForm.address.value;
	
	if(window.XMLHttpRequest)
	{
	obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
	obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	if(username=="")
	{
		//alert("Enter your username");
		document.getElementById("responsearea").innerHTML="Enter Your Username";		
		document.StudentRegistrationForm.username.focus();
		
	}
	else if(name=="")
	{
		//alert("Enter your name");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter Your Name";
		document.StudentRegistrationForm.name.focus();
		
	}
	else if(branch=="select")
	{
		//alert("Enter your branch");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter Your Branch";
		document.StudentRegistrationForm.branch.focus();
		
	}
	else if(batch=="select")
	{
		//alert("Enter your batch");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter Your Branch";
		document.StudentRegistrationForm.batch.focus();
	}
	else if(dob=="")
	{
		//alert("Enter your batch");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter Date Of Birth";
		document.StudentRegistrationForm.dob.focus();
	}
	
	else if(gender=="select")
	{
		//alert("Enter your Gender");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter Your Gender";
		document.StudentRegistrationForm.gender.focus();
		
	}	
	else if(password=="")
	{
		//alert("Enter your Password");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter Your Password";
		document.StudentRegistrationForm.password.focus();	
	}
	else if(password.length<3)
	{
		//alert(" Mobile Number should be of 10 digits atleast");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Password Should be Atleast 3 Character Long";
		document.StudentRegistrationForm.password.focus();
		
	}
	
	else if(confirmpassword="")
	{
		//alert("Enter your confirm password");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter Confirm Password";
		document.StudentRegistrationForm.confirmpassword.focus();
		
	}
/*	else if(confirmpassword!=password)
		{
		alert("Enter your confirm password");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Confirm Password Does Not Match";
		document.StudentRegistrationForm.confirmpassword.focus();
		
	}*/
	
	else if(email=="")
	{
		//alert("Enter the Email Address");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter Email Address";
		document.StudentRegistrationForm.email.focus();
		
	}
	else if(mobilenumber=="")
	{
		//alert("Enter the Mobile Number");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter Mobile Number";
		document.StudentRegistrationForm.mobilenumber.focus();
		
	}
	else if(isNaN(mobilenumber))
	{
		//alert("Enter the valid Mobile Number(Like : 9566137117)");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter the valid Mobile Number(Like : 9566137117)";
		document.StudentRegistrationForm.mobilenumber.focus();
		

	}
	else if(mobilenumber.length<10)
	{
		//alert(" Mobile Number should be of 10 digits atleast");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Mobile Number should be of 10 digits";
		document.StudentRegistrationForm.mobilenumber.focus();
		
	}
	else if(mobilenumber.length>10)
	{
		//alert(" Mobile Number should be of 10 digits atmost");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Mobile Number should be of 10 digits atmost";
		document.StudentRegistrationForm.mobilenumber.focus();
		
	}
	else if(address=="")
	{
		//alert(" Enter your address");
		document.getElementById("responsearea").innerHTML="";
		document.getElementById("responsearea").innerHTML="Enter Your Address";
		document.StudentRegistrationForm.address.focus();
		
	}
	
	else
	{
			//alert("DOB :"+dob);
			obj.onreadystatechange=handleStudentRegistrationRequest;
			obj.open("post","StudentRegistrtionServlet?username="+username+"&name="+name+"&branch="+branch +"&batch="+batch+"&dob="+dob+"&gender="+gender+"&password="+password+"&confirmpassword="+confirmpassword+"&email="+email+"&mobilenumber="+mobilenumber+"&address="+address,true);
			
			obj.send();
	}

}

function handleStudentRegistrationRequest()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			document.location="StaffHome.jsp";
		}
		else if(k==0)
		{	//alert("hello");
			document.getElementById("responsearea").innerHTML="";
			document.getElementById("responsearea").innerHTML="Student Not Registered";
		}
		else if(k==3)
			{	//alert("hello");
				document.getElementById("responsearea").innerHTML="";
				document.getElementById("responsearea").innerHTML="Your Age is Less Than 18 Years";
			}
	}
	
}

function onlyAlphabets(e, t) {
    try {
        if (window.event) {
            var charCode = window.event.keyCode;
        }
        else if (e) {
            var charCode = e.which;
        }
        else { return true; }
        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
            return true;
        else
            return false;
    }
    catch (err) {
        alert(err.Description);
    }
}

/* *************Register or signup (Teacher and non teacher by admin)******************* */

function registerStaffViaJs()
{
	
	var staffid=document.StaffRegistrationForm.staffid.value;
	var facultyname=document.StaffRegistrationForm.facultyname.value;
	var designation=document.StaffRegistrationForm.designation.value;
	var branch=document.StaffRegistrationForm.branch.value;
	var gender=document.StaffRegistrationForm.gender.value;
	var dob=document.StaffRegistrationForm.dob.value;
	
	var doj=document.StaffRegistrationForm.doj.value;
	var qualification=document.StaffRegistrationForm.qualification.value;
    
	var password=document.StaffRegistrationForm.password.value;
	var confirmpassword=document.StaffRegistrationForm.confirmpassword.value;
	var email=document.StaffRegistrationForm.email.value;
	var phone=document.StaffRegistrationForm.phone.value;
	var address=document.StaffRegistrationForm.address.value;
	
	if(window.XMLHttpRequest)
	{
	obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
	obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	if(facultyname=="")
	{
		//alert("Enter your username");
		document.getElementById("responsearea1").innerHTML="Enter Name";		
		document.StaffRegistrationForm.facultyname.focus();
		
	}
	else if(designation=="select")
	{
		//alert("Enter your batch");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Designation";
		document.StaffRegistrationForm.designation.focus();
	}
	else if(branch=="select")
	{
		//alert("Enter your batch");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Branch";
		document.StaffRegistrationForm.branch.focus();
	}
	else if(qualification=="select")
	{
		//alert("Enter your batch");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Qualification";
		document.StaffRegistrationForm.qualification.focus();
	}
	else if(gender=="select")
	{
		//alert("Enter your batch");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Gender";
		document.StaffRegistrationForm.gender.focus();
	}
	else if(dob=="")
	{
		//alert("Enter your Password");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Date Of Birth";
		document.StaffRegistrationForm.dob.focus();
		
	}
	else if(doj=="")
	{
		//alert("Enter your Password");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Date Of Joining";
		document.StaffRegistrationForm.doj.focus();
		
	}
	
	else if(password=="")
	{
		//alert("Enter your Password");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Your Password";
		document.StaffRegistrationForm.password.focus();
		
	}
	else if(password.length<3)
	{
		//alert(" Mobile Number should be of 10 digits atleast");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Password Should be Atleast 3 Character Long";
		document.StaffRegistrationForm.password.focus();
		
	}
	else if(confirmpassword="")
	{
		//alert("Enter your confirm password");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Confirm Password";
		document.StaffRegistrationForm.confirmpassword.focus();
		
	}
	
	
	else if(email=="")
	{
		//alert("Enter the Email Address");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Email Address";
		document.StaffRegistrationForm.email.focus();
		
	}
	else if(phone=="")
	{
		//alert("Enter the Mobile Number");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Mobile Number";
		document.StaffRegistrationForm.phone.focus();
		
	}
	else if(isNaN(phone))
	{
		//alert("Enter the valid Mobile Number(Like : 9566137117)");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter the valid Mobile Number(Like : 9566137117)";
		document.StaffRegistrationForm.phone.focus();
		

	}
	else if(phone.length<10)
	{
		//alert(" Mobile Number should be of 10 digits atleast");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Mobile Number should be of 10 digits";
		document.StaffRegistrationForm.phone.focus();
		
	}
	else if(phone.length>10)
	{
		//alert(" Mobile Number should be of 10 digits atmost");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Mobile Number should be of 10 digits atmost";
		document.StaffRegistrationForm.phone.focus();
		
	}
	else if(address=="")
	{
		//alert(" Enter your address");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Your Address";
		document.StaffRegistrationForm.address.focus();
		
	}
	else
	{
			
			obj.onreadystatechange=handleStaffRegistrationRequest;
			
			obj.open("post","StaffRegistrationServlet?staffid="+staffid+"&facultyname="+facultyname+"&designation="+designation +"&branch="+branch+"&qualification="+qualification+"&gender="+gender+"&dob="+dob+"&doj="+doj+"&password="+password+"&email="+email+"&phone="+phone+"&address="+address,true);
			
			obj.send();
	}

}
function handleStaffRegistrationRequest()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			document.location="AdminHome.jsp";
		}
		else if(k==0)
		{	//alert("hello");
			document.getElementById("responsearea1").innerHTML="";
			document.getElementById("responsearea1").innerHTML="Teacher Not Registered";
		}
		else if(k==2)
			{	//alert("hello");
				document.getElementById("responsearea1").innerHTML="";
				document.getElementById("responsearea1").innerHTML="Your Age is Less Than 24 Years";
			}
		else if(k==3)
		{	//alert("hello");
			document.getElementById("responsearea1").innerHTML="";
			document.getElementById("responsearea1").innerHTML="Date of Joining Not Valid";
		}
	}
	
}

/* ****************************** Forget Password ************************************** */

function ForgetPasswordViaJs()
{
	//alert("hello");
	var usertype=document.ForgetPasswordForm.usertype.value;
	var username=document.ForgetPasswordForm.username.value;
	var emailID=document.ForgetPasswordForm.emailID.value;
	
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
		}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
		}
	
	obj.onreadystatechange=handleForgetPasswordRequest;	
	obj.open("post","ForgetPasswordServlet?usertype="+usertype+"&username="+username+"&emailID="+emailID,true);
	
	obj.send();
	
}
function handleForgetPasswordRequest()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			document.getElementById("responseForgetPassArea").innerHTML="your password has been sent to your email account";
		}
	
	}
	
}

function fetchNoticeOnLoad()
{
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleNoticeGeneration;
	obj.open("post","FetchNoticeOnLoadOnIndex",true);
	obj.send();
	
}

function handleNoticeGeneration()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{	
		var res=obj.responseText.split("/");
		var i=0;
		while(i<6)
			{
				document.getElementById("NoticeBoard"+(i+1)).innerHTML=res[i];
				i++;
			}
	}
	
}


function fetchNoticeDescription(k)
{
	//alert("hi in description part");
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleNoticeDescription;
	obj.open("post","AdminNoticeDescription?noticeid="+k,true);
	obj.send();
	//alert("after snd of description");
}



function handleNoticeDescription()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{	
		var k=parseInt(obj.responseText);
		if(k==1)
			{
			document.location="HomeNoticeDescription.jsp";	
			}
		
			
	}
	
}



function fetchNoticeDescriptionForAdmin(k)
{
//	alert("hi in description part");
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleNoticeDescriptionForAdmin;
	obj.open("post","AdminNoticeDescription?noticeid="+k,true);
	obj.send();
	//alert("after snd of description");
}



function handleNoticeDescriptionForAdmin()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{	
		var k=parseInt(obj.responseText);
		if(k==1)
			{
			document.location="HomeNoticeDescriptionForAdmin.jsp";	
			}
		
			
	}
	
}




function fetchNoticeDescriptionForDept(k)
{
	//alert("hi in description part");
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleNoticeDescriptionForDept;
	obj.open("post","NoticeDescriptionForDept?noticeid="+k,true);
	obj.send();
	//alert("after snd of description");

}


function handleNoticeDescriptionForDept()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{	
		var k=parseInt(obj.responseText);
		if(k==1)
			{
			document.location="StudentNoticeDescription.jsp";	
			}
		else if(k==2)
			{
			document.location="StaffNoticeDescription.jsp";
			}
		
			
	}
	
}






/* *************view Own Details (student)******************* */

function viewStudentDetailsJS()
{
	//alert("viewjs");
	var username=document.ViewOrModifyForm.username.value;
	//alert("1username: "+username);
	if(window.XMLHttpRequest)
		{
			obj=new XMLHttpRequest();
		}
	else if(window.ActiveXObject)
		{
			obj=new ActiveXObject("Microsoft.XMLHTTP");
		}
	
	obj.onreadystatechange=handleStudentViewDetailsRequest;
	obj.open("post","StudentViewDetailsServlet?username="+username,true);
	obj.send();
	
}

function handleStudentViewDetailsRequest()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			document.getElementById("username").readOnly=true;
			document.location="ModifyDetailsofStudent.jsp";
		}
	}
}

/* *************modify Own Details (student)******************* */

function modifyStudentDetailsJS()
{
	//alert("modifyjs");
	var username=document.ViewOrModifyForm.username.value;
	var name=document.ViewOrModifyForm.name.value;
	var branch=document.ViewOrModifyForm.branch.value;
	var batch=document.ViewOrModifyForm.batch.value;
	var gender=document.ViewOrModifyForm.gender.value;
	var dob=document.ViewOrModifyForm.dob.value;
	var mobilenumber=document.ViewOrModifyForm.mobilenumber.value;
	var address=document.ViewOrModifyForm.address.value;
	//alert("js,details 1"+username);
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	if(name=="")
	{
		//alert("Enter the Mobile Number");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Your Name";
		document.ViewOrModifyForm.name.focus();
		
	}
	
	else if(mobilenumber=="")
	{
		//alert("Enter the Mobile Number");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Mobile Number";
		document.ViewOrModifyForm.mobilenumber.focus();
		
	}
	else if(isNaN(mobilenumber))
	{
		//alert("Enter the valid Mobile Number(Like : 9566137117)");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter the valid Mobile Number(Like : 9566137117)";
		document.ViewOrModifyForm.mobilenumber.focus();
		

	}
	else if(mobilenumber.length<10)
	{
		//alert(" Mobile Number should be of 10 digits atleast");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Mobile Number should be of 10 digits";
		document.ViewOrModifyForm.mobilenumber.focus();
		
	}
	else if(mobilenumber.length>10)
	{
		//alert(" Mobile Number should be of 10 digits atmost");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Mobile Number should be of 10 digits atmost";
		document.ViewOrModifyForm.mobilenumber.focus();
		
	}
	else if(address=="")
	{
		//alert(" Enter your address");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Your Address";
		document.ViewOrModifyForm.address.focus();
		
	}
	
	else
		{
		obj.onreadystatechange=handleStudentModificationRequest;
		//alert("js,details 3");
		obj.open("post","StudentModifyDetailsServlet?username="+username+"&name="+name+"&branch="+branch +"&batch="+batch+"&dob="+dob+"&gender="+gender+"&mobilenumber="+mobilenumber+"&address="+address,true);
		//alert("js,details 4");
		obj.send();
		}
}

function handleStudentModificationRequest()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			
			document.location="StudentHome.jsp";
		}
	
	}
	
}

/* *************view Own Details (STAFF)******************* */

function viewStaffDetailsJS()
{
	//alert("viewstaffjs");
	var staffid=document.ViewOrModifyStaffForm.staffid.value;
	//alert("1username: "+staffid);
	if(window.XMLHttpRequest)
		{
			obj=new XMLHttpRequest();
		}
	else if(window.ActiveXObject)
		{
			obj=new ActiveXObject("Microsoft.XMLHTTP");
		}
	
	obj.onreadystatechange=handleStaffViewDetailsRequest;
	//alert("m1");
	obj.open("post","StaffViewDetailsServlet?staffid="+staffid,true);
	//alert("m2");
	obj.send();
	//alert("m3");
}

function handleStaffViewDetailsRequest()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			
			document.location="ModifyDetailsofStaff.jsp";
		}
	}
}


/* *************modify Own Details (staff)******************* */

function modifyStaffDetailsJS()
{
	//alert("modifyStaffjs");
	var staffid=document.ViewOrModifyStaffForm.staffid.value;
	var facultyname=document.ViewOrModifyStaffForm.facultyname.value;
	var designation=document.ViewOrModifyStaffForm.designation.value;
	var branch=document.ViewOrModifyStaffForm.branch.value;
	var qualification=document.ViewOrModifyStaffForm.qualification.value;
	var gender=document.ViewOrModifyStaffForm.gender.value;
	var dob=document.ViewOrModifyStaffForm.dob.value;
	var doj=document.ViewOrModifyStaffForm.doj.value;
	var phone=document.ViewOrModifyStaffForm.phone.value;
	var address=document.ViewOrModifyStaffForm.address.value;
	//alert("values");
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	if(facultyname=="")
	{
		//alert("Enter the Mobile Number");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Your Name";
		document.ViewOrModifyStaffForm.facultyname.focus();
		
	}
	
	else if(phone=="")
	{
		//alert("Enter the Mobile Number");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Mobile Number";
		document.ViewOrModifyStaffForm.phone.focus();
		
	}
	else if(isNaN(phone))
	{
		//alert("Enter the valid Mobile Number(Like : 9566137117)");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter the valid Mobile Number(Like : 9566137117)";
		document.ViewOrModifyStaffForm.phone.focus();
		

	}
	else if(phone.length<10)
	{
		//alert(" Mobile Number should be of 10 digits atleast");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Mobile Number should be of 10 digits";
		document.ViewOrModifyStaffForm.phone.focus();
		
	}
	else if(phone.length>10)
	{
		//alert(" Mobile Number should be of 10 digits atmost");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Mobile Number should be of 10 digits atmost";
		document.ViewOrModifyStaffForm.phone.focus();
		
	}
	else if(address=="")
	{
		//alert(" Enter your address");
		document.getElementById("responsearea1").innerHTML="";
		document.getElementById("responsearea1").innerHTML="Enter Your Address";
		document.ViewOrModifyStaffForm.address.focus();
		
	}

	
	else
	{
		obj.onreadystatechange=handleStaffModificationRequest;
		
		obj.open("post","StaffModifyDetailsServlet?staffid="+staffid+"&facultyname="+facultyname+"&designation="+designation+"&branch="+branch+"&qualification="+qualification +"&gender="+gender+"&dob="+dob+"&doj="+doj+"&phone="+phone+"&address="+address,true);
		
		obj.send();
	}
}

function handleStaffModificationRequest()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			
			document.location="StaffHome.jsp";
		}
		else if(k==2)
		{
			
			document.location="TransportOfficerHome.jsp";
		}
		else if(k==3)
		{
			
			document.location="LibWarAcc.jsp";
		}
	}
	
}

/* *************CHANGE STUDENT PASSWORD (student)******************* */

function changeStudentPassword() 
{

	var username=document.ChangeStudentPasswordForm.username.value;
	var oldpassword=document.ChangeStudentPasswordForm.oldpassword.value;
	var newpassword=document.ChangeStudentPasswordForm.newpassword.value;
	var confirmnewpassword=document.ChangeStudentPasswordForm.confirmnewpassword.value;
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	if(newpassword!=confirmnewpassword)
		{
			alert("CONFIRM PASSWORD DOESNOT MATCH");
			document.ChangeStudentPasswordForm.confirmnewpassword.focus();
		}
	else 
	{
	
		obj.onreadystatechange=handleChangeStudentPasswordRequest;
		obj.open("post","StudentChangePasswordServlet?username="+username+"&oldpassword="+oldpassword+"&newpassword="+newpassword,true);
		obj.send();
	}
}
function handleChangeStudentPasswordRequest()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			document.location="StudentHome.jsp";
		}
		else if(k==2)
		{
			document.getElementById("wrongpasswordarea").innerHTML="In-correct old password";
		}
	}
}

/* *************CHANGE STAFF PASSWORD (staff)******************* */

function changeStaffPassword() 
{

	var username=document.ChangeStaffPasswordForm.username.value;
	var oldpassword=document.ChangeStaffPasswordForm.oldpassword.value;
	var newpassword=document.ChangeStaffPasswordForm.newpassword.value;
	var confirmnewpassword=document.ChangeStaffPasswordForm.confirmnewpassword.value;
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	if(newpassword!=confirmnewpassword)
		{
			alert("CONFIRM PASSWORD DOESNOT MATCH");
			document.ChangeStaffPasswordForm.confirmnewpassword.focus();
		}
	else 
	{
	
		obj.onreadystatechange=handleChangeStaffPasswordRequest;
		obj.open("post","StaffChangePasswordServlet?username="+username+"&oldpassword="+oldpassword+"&newpassword="+newpassword,true);
		obj.send();
	}
}
function handleChangeStaffPasswordRequest()
{
	
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			document.location="StaffHome.jsp";
		}
		if(k==3)
		{
			document.location="TransportOfficerHome.jsp";
		}
		if(k==4)
		{
			document.location="LibWarAcc.jsp";
		}
		else if(k==2)
		{
			document.getElementById("wrongstaffpasswordarea").innerHTML="In-correct old password";
		}
	}
}

/* ***************************************************************************/
function FetchDataOfStudentViaJS()
{
	var rollnumber=document.duesByNonTeachingStaff.rollnumber.value;
	
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	obj.onreadystatechange=handleDuesClearanceRequest;	
	obj.open("post","DuesClearanceByStaff?rollnumber="+rollnumber,true);
	
	
	obj.send();
	
}
function handleDuesClearanceRequest()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			document.getElementById("responseFetchRollArea").innerHTML="Roll number not found";		
		}
		else
		{
			document.getElementById("displayMyContent").innerHTML=obj.responseText;
			document.getElementById("hiddenDueStatus").style.display='block';
			document.getElementById("btnUpdate").style.display='block';
			
		}
	}
	
}
/* *************submitting dues by staff******************* */

function duesSubmissionByStaff()
{
	
	var rollnumber=document.duesByNonTeachingStaff.rollnumber.value;
	var duesval=document.duesByNonTeachingStaff.duesval.value;
	
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	obj.onreadystatechange=handleDuesRequest;	
	obj.open("post","DuesSubmissionByStaff?duesval="+duesval +"&rollnumber="+rollnumber,true);
	
	obj.send();
	
}
function handleDuesRequest()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		var k=parseInt(obj.responseText);
		if(k==1)
		{
			document.getElementById("responseSubmission").innerHTML="Record Updated Successfully";	
			document.getElementById("hiddenDueStatus").style.display='none';	
		}
		else
		{
			document.getElementById("responseSubmission").innerHTML="Record Not Updated";
			document.getElementById("hiddenDueStatus").style.display='none';
		}
	}
	
}

function fetchNoticeOnLoadInStudentHome()
{
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleNoticeGenerationInStudentHome;
	obj.open("post","FetchNoticeOnLoadInStudentHome",true);
	obj.send();
}

function handleNoticeGenerationInStudentHome()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{	
		var res=obj.responseText.split("/");
		var i=0;
		while(i<6)
			{
				document.getElementById("NoticeBoard"+(i+1)).innerHTML=res[i];
				i++;
			}
		document.getElementById("noticeBoardHeading").innerHTML=res[6];
	}
	
}


function fetchNoticeBoardHeading()
{
	//alert("in fetch notice board heading");
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	obj.onreadystatechange=handleNoticeBoardHeading;
	obj.open("post","FetchNoticeBoardHeading",true);
	obj.send();
	//alert("after send.");
}


function handleNoticeBoardHeading()
{
	if(obj.readyState==4 || obj.readyStatus==200)
	{
		//var k=parseInt(obj.responseText);
	//	if(k==1)
		//{
		alert(obj.responseText);
			document.getElementById("noticeBoardHeading").innerHTML=obj.responseText;		
		//}
	}
}


function checkCourseForUpload(value)
{
	
	var course=document.seatingarrangementupload.course.value;
	
	if(window.XMLHttpRequest)
	{
		obj=new XMLHttpRequest();
	}
	else if(window.ActiveXObject)
	{
		obj=new ActiveXObject("Microsoft.XMLHTTP");
	}
	
	if(course=="cse" || course=="ece")
		{
		document.getElementById("sem").innerHTML= "<option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option><option value='6'>6</option><option value='7'>7</option><option value='8'>8</option>";
		}
	
	else if(course=="mca")
		{
		document.getElementById("sem").innerHTML= "<option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option>";
		}
	}



/* ***************************************************************************/
