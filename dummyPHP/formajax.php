<?php
$off=$_REQUEST['q1'];
$r1=$_REQUEST['q2'];
$area=$_REQUEST['q3'];
$name=$_REQUEST['q4'];
$em=$_REQUEST['q5'];
$age=$_REQUEST['q6'];
$r2=$_REQUEST['q7'];
$desig=$_REQUEST['q8'];
$num=$_REQUEST['q9'];
$sel=$_REQUEST['q10'];
$sel2=$_REQUEST['q11'];
$sel3=$_REQUEST['q12'];
$r3=$_REQUEST['q13'];
$r4=$_REQUEST['q14'];

$conn=mysqli_connect("localhost","root","","project");
$sel="insert into gym values('$off','$r1','$area','$name','$em','$age','$r2','$desig','$num','$sel','$sel2','$sel3','$r3','$r4')";
$q1=mysqli_query($conn,$sel);
$num=mysqli_num_rows($q1);
if($num>0)
{
echo"Thank you For Registration..Enjoy Gym Services...!!!";
}
else
{
echo"Some Error Occured..Try Again..!!!";
}
}
$sel5="select * from gym";
$q2=mysqli_query($conn,$sel5);
echo "<table border='1'>";
echo "<tr>";
echo "<th>off</th>
      <th>r1</th>
	  <th>textarea</th>
	  <th>name</th>
	  <th>email</th>
	  <th>age</th>
	  <th>r2</th>
	  <th>desig</th>
	  <th>num</th>
	  <th>sel</th>
	  <th>sel2</th>
	  <th>sel3</th>
	  <th>r3</th>
	  <th>r4</th>
	  ";


echo "</tr>";
echo "<tr>";
while($row=mysqli_fetch_array())
{
echo "<td>".$row['off']."</td><td>".$row['r1']."</td><td>".$row['area']."</td><td>".$row['name']."</td><td>".$row['em']."</td><td>".$row['age']."</td><td>".$row['r2']."</td><td>".$row['desig']."</td><td>".$row['num']."</td><td>".$row['sel']."</td><td>".$row['sel2']."</td><td>".$row['sel3']."</td>";
echo "</tr>";
}	
	
echo "</table>";

?>