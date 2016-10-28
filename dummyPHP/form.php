<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">
function result()
{
if(window.XMLHttpRequest)
{
abc=new XMLHttpRequest();
}
else
{
abc=new ActiveXObject("Microsoft.XMLHTTP");
}
var off=document.getElementById("off").value;
var r11=document.getElementById("r1").value;
var area=document.getElementById("txt").value;
var name=document.getElementById("a11").value;
var em=document.getElementById("email1").value;
var age=document.getElementById("age").value;
var r22=document.getElementById("r2").value;
var desig=document.getElementById("desig").value;
var num=document.getElementById("num").value;
var sel=document.getElementById("sel").value;
var sel2=document.getElementById("sel2").value;
var sel3=document.getElementById("sel3").value;
var r31=document.getElementById("r3").value;
var r41=document.getElementById("r4").value;


var url="http://localhost/project22/formajax.php?q1="+off+"&q2="+r11+"&q3="+area+"&q4="+name+"&q5="+em+"&q6="+age+"&q7="+r22+"&q8="+desig+"&q9="+num+"&q10="+sel+"&q11="+sel2+"&q12="+sel3+"&q13="+r31+"&q14="+r41;
abc.open("GET",url,true);
abc.send();
abc.onreadystatechange=function()
{
if(abc.readyState==4 && abc.status==200)
{
document.getElementById("result").innerHTML=abc.responseText;
}
}
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
..
</head>

<body style="background-size:100%; background-image:url(gym.jpg); background-attachment:fixed">
<div id="result"></div>
<br />
<form name="abcd" method="post" action="">
<fieldset style="width:600px; margin-left:400px; background-image:url(1885585.jpg); background-size:1100px; background-attachment:fixed; ">
<center>
<h1 style="font-size:44px; margin-bottom:0px">Gym Membership Form</h1>
<font style=""><b><marquee style="width:300px;">Apply for the gym membership online</marquee></b></font>
</center>
<table style="color:#000000"><br />

<tr>
<td>
<font style="margin-left:110px; font-size:18px;"><b>Member person Wise</b></font><br /><br />

<input type="checkbox" name="off" id="off" value="20%" style="margin-left:150px" />
<font>Single Membership (20% off)</font><br />

<input type="checkbox" name="off" id="off" value="40%" style="margin-left:150px" />
<font>Couple Membership (40% off)</font><br />

<input type="checkbox" name="off" id="off" value="60%" style="margin-left:150px" />
<font>Friend Group (upto 4:60% off)</font>
</td>
</tr>

<tr>
<td>
<br />
<font style="margin-left:110px; font-size:18px;"><b>Member Type/Month</b></font><br /><br />
<input type="radio" name="r1" id="r1" value="gym" style="margin-left:160px" />
<font>Gym + Person Training</font><br /> 
<input type="radio" name="r1" id="r1" value="bath" style="margin-left:160px" />
<font>Gym + Sona Bath</font><br />
<input type="radio" name="r1" id="r1" value="yoga" style="margin-left:160px" />
<font>Gym + Yoga</font>
</td>
</tr>


<tr>
<td><br />
<textarea name="txt" id="txt" value=""  placeholder="Any Queries/Suggestions" style="width:410px; height:80px; border:2px solid #FFFFFF; background-color:#000000; color:#FFFFFF; margin-left:105px">
</textarea></td>
</tr>

<tr>
<td><br />
<input type="text" name="a11" id="a11" value="" placeholder="Applicants Name" size="55" style="border-color:#999999; border:2px solid #FFFFFF; background-color:#000000; margin-left:105px; height:25px"  /></td>
</tr>

<tr>
<td><br />
<input type="email" name="email1" id="email1" value="" placeholder="Enter E-Mail" size="55" style="border-color:#999999; margin-left:105px; border:2px solid #FFFFFF; background-color:#000000;  height:25px"/></td>
</tr>

<tr>
<td><br />
<input type="number" name="age" id="age" value="" placeholder="Enter Your Age" style="border-color:#999999; margin-left:105px; width:410px; border:2px solid #FFFFFF; background-color:#000000; height:25px" /></td>
</tr>


<tr>
<td>
<br />
<font><b style="margin-left:100px">Choose Your Gender</b></font><br /><br />
<input type="radio" name="r2" id="r2" value="female" style="margin-left:100px" />
<font>Male &nbsp; 
<input type="radio" name="r2" id="r2" value="male" />Female</font>
</td>
</tr>

<tr>
<td><br />
<input type="text" name="desig" id="desig" value="" placeholder="Your Designation" size="55" style="border-color:#999999; margin-left:105px; height:25px; border:2px solid #FFFFFF; background-color:#000000;" /></td>
</tr>

<tr>
<td><br />
<input type="number" name="num" id="num" value="" placeholder="Contact No."  style="border-color:#999999; margin-left:105px; width:410px; height:25px; border:2px solid #FFFFFF; background-color:#000000;" /></td>
</tr>

<tr>
<td><br />
<font><b style="margin-left:100px;">Select Your City</b></font><br />
<select name="sel" id="sel" style="margin-left:105px; width:410px; border:2px solid #FFFFFF; background-color:#000000; color:#FFFFFF; height:32px">
<option>-select-</option>
<option value="Amritsar">Amritsar</option>
<option value="Jalandhar">Jalandhar</option>
<option value="Ludhiana">Ludhiana</option>
<option value="Hoshiarpur">Hoshiarpur</option>
<option value="Mohali">Mohali</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Mohali">Mohali</option>
<option value="Nawansheher">NawanSheher</option>
<option value="Patiala">Patiala</option>
</select>
</td>
</tr>

<tr>
<td><br />
<font style=" margin-left:100px"><b>Select Your State</b></font><br />
<select name="sel2" id="sel2" style="margin-left:105px; width:410px; border:2px solid #FFFFFF; background-color:#000000; color:#FFFFFF; height:32px">
<option>-select-</option>
<option value="Punjab">Punjab</option>
<option value="UP">UP</option>
<option value="Haryana">Haryana</option>
<option value="Himachal">Himachal</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Gujarat">Gujarat</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Kolkata">Kolkata</option>
<option value="Lucknow">Lucknow</option>
</select>
</td>
</tr>

<tr>
<td><br />
<font><b style="margin-left:100px;">Select Your Country</b></font><br />
<select name="sel3" id="sel3" style="margin-left:105px; width:410px; border:2px solid #FFFFFF; background-color:#000000; color:#FFFFFF; height:32px">
<option>-select-</option>
<option value="India">India</option>
<option value="Australia">Australia</option>
<option value="Iceland">Iceland</option>
<option value="America">America</option>
<option value="Newzealand">Newzealand</option>
<option value="Dubai">Dubai</option>
<option value="Auckland">Auckland</option>
<option value="Brazil">Brazil</option>
<option value="Korea">Korea</option>
</select>
</td>
</tr>

<tr>
<td>
<br />
<font><b style="margin-left:100px;">Membership Duration</b></font><br />
<input type="radio" name="r3" id="r3" value="first" style="margin-left:180px; " />
<font>1 Month<br /> 
<input type="radio" name="r3" id="r3" value="second" style="margin-left:180px" />3 Months<br />
<input type="radio" name="r3" id="r3" value="third" style="margin-left:180px" />6 Months<br />
<input type="radio" name="r3" id="r3" value="fourth" style="margin-left:180px" />1 Year<br /> 
<input type="radio" name="r3" id="r3" value="fifth" style="margin-left:180px" />2 Year<br />
<input type="radio" name="r3" id="r3" value="sixth" style="margin-left:180px" />Lifetime</font>
</td>
</tr>


<tr>
<td>
<br />
<font><b style="margin-left:100px;">Membership Duration</b></font><br />
<input type="radio" name="r4" id="r4" value="full" style="margin-left:180px" />
<font>Cash in Full<br /> 
<input type="radio" name="r4" id="r4" value="debit" style="margin-left:180px" />Direct Debit<br />
<input type="radio" name="r4" id="r4" value="credit" style="margin-left:180px" />Credit Card<br />
<input type="radio" name="r4" id="r4" value="cheque" style="margin-left:180px" />Cheque<br /> 
<input type="radio" name="r4" id="r4" value="free" style="margin-left:180px" />Initial Free
</font>
</td>
</tr>

<tr>
<td>
<br />
<input type="button" name="btn1" id="btn1" value="Submit" onclick="result()"  style="width:70px; height:30px; margin-left:150px" />
<input type="reset" name="btn2" id="btn2" value="Reset" style="width:70px; height:30px; margin-left:10px" />
</td>
</tr>
</center>
</table>
</fieldset>
</form>

</body>
</html>
