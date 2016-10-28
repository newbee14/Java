function checkpandcp()
{
	var newpassword =document.ChangePasswordform.newpassword.value;	
	var confirmpassword =document.ChangePasswordform.confirmpassword.value;	
 
	if(newpassword==confirmpassword)
	{
		document.getElementById("pass").innerHTML="";
		document.image.src="images/tick.gif";
	}
	else
	{
		document.getElementById("pass").innerHTML="";
	document.image.src="images/cross.png";
	
	}

}
