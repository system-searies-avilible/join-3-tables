<?php
//joining query joining two tables

$connect=mysqli_connect("localhost","root","","student_data");
if(isset($_POST['btn_insert'])){
	$name=$_POST['txtname'];
	$fname=$_POST['txtfname'];
	
$insert=mysqli_query($connect,"insert into tbl_data1  values('','$name','$fname')");
if($insert){
	echo"<script>alert('data inserted')</script>";
	
}
else{
echo"<script>alert('data not inserted')</script>";	
	
}
}

if(isset($_POST['btn_course'])){
$sname=$_POST['sname'];	
$cname=$_POST['course'];	
	
$insert=mysqli_query($connect,"insert into tbl_data2 values('','$sname','$cname')");
if($insert){
echo"<script>alert('data2  inserted')</script>";		
}
else{
	echo"<script>alert('data2 not inserted')</script>";	
}
}


if(isset($_POST['btn_fees'])){
$s_name=$_POST['s_name'];	
$sfees=$_POST['s_c_fees'];	
	
$insert=mysqli_query($connect,"insert into tbl_fees values('','$s_name','$sfees')");
if($insert){
echo"<script>alert('data3  inserted')</script>";		
}
else{
	echo"<script>alert('data3  inserted')</script>";	
}
}

?>
<form method="post">
<h1>Student personal information:</h1>
<table border="2">
<tr>
<th>Name :</th>
<td><input type="text" name="txtname"/></td>
</tr>

<tr>
<th>Father Name :</th>
<td><input type="text" name="txtfname"/></td>
</tr>

<tr>
<th>:</th>
<td><input type="submit" name="btn_insert" value="Add Data"/></td>
</tr>
</table>
<br><br><br>

<h1>Student course Record</h1>
<table border="2">
<tr>
<th>Student Name :</th>
<td><select name="sname">
<?php
$select=mysqli_query($connect,"select * from tbl_data1");
$num=mysqli_num_rows($select);
for($i=0; $i<$num; $i++){
$row=mysqli_fetch_array($select);

echo"<option value='".$row[0]."'>".$row[1]."</option>";	
	
}
?></select></td>
</tr>

<tr>
<th>Course :</th>
<td><select name="course">
<option value="Ms-office">Ms-office</option>
<option value="Graphic-desiging">Graphic-desiging</option>
<option value="Web-development">Web-development</option>

</select></td>
</tr>

<tr>
<th>:</th>
<td><input type="submit" name="btn_course" value="Add Data"></td>
</tr>
</table>
<br><br>

<h1>Student fees record</h1>
<table border="2">
<tr>
<th>Student Name</th>
<td><select name="s_name">
<?php
$select=mysqli_query($connect,"select * from tbl_data1");
$num=mysqli_num_rows($select);

for($i=0; $i<$num; $i++){
	$row=mysqli_fetch_array($select);
	echo"<option value='".$row[0]."'>".$row[1]."</option>";
	
}
?>

</select></td>
</tr>
<tr>
<th>Student course fees</th>
<td>
<select name="s_c_fees">
<option value="1000">1000</option>
<option value="2000">2000</option>
<option value="3000">3000</option>

</select></td>
</tr>


<tr>
<th>:</th>
<td><input type="submit" name="btn_fees" value="Add data3"></td>
</tr>
</table>

</form>


<br><br><br>
<table border="2">
<tr>
<th>Student ID</th>
<th>Student Name</th>
<th>Student Father Name</th>
<th>Student course</th>
<th>Student course fees</th>
</tr>
<?php
$select=mysqli_query($connect,"select tbl_data1.id,tbl_data1.name,tbl_data1.fname,
tbl_data2.s_course,tbl_fees.s_fees from tbl_data1 join tbl_data2 on tbl_data1.id=tbl_data2.student_name join 
tbl_fees on tbl_data1.id=tbl_fees.s_name where tbl_data1.id");
$num=mysqli_num_rows($select);

for($i=0; $i<$num; $i++){
	$row=mysqli_fetch_array($select);
	
	echo"<tr>";
	echo"<td>".$row[0]."</td>";
	echo"<td>".$row[1]."</td>";
	echo"<td>".$row[2]."</td>";
	echo"<td>".$row[3]."</td>";
	echo"<td>".$row[4]."</td>";
    echo"</tr>";
	
}


?>

</table>