<?php
session_start();
$server= "localhost";
$dbuser= "root";
$error= "";
$lab_no=$_SESSION['lab_no'];
$lab_name=$_SESSION['lab_name'];
$t=$_SESSION['table_name'];
$table_names=$lab_name.'_'.$lab_no;
$flag=0;
if(isset($_POST['send']))
{

	$conn=mysqli_connect($server,$dbuser,$error);
	if(!$conn)
		echo "connection failed";
	
	if(mysqli_select_db($conn,"student_viva"))
	{
		/*$z="SHOW TABLES FROM student_viva";
		$z1=mysqli_query($conn,$z);
		 while ($row = mysqli_fetch_row($z1))
		{
			echo $t." ".$row[0]."\n";
			if($t == $row[0]){
			     $flag=1;
				echo "table found";
			break;}
		}
		echo $flag;
		if($flag == 1)
		{*/
			$m="DROP TABLE $t";
			$m1=mysqli_query($conn,$m);
			//if(!$m1)
				//die(mysqli_error($conn));
		//}
		
	    $x="CREATE TABLE $t(
		q_no INT UNIQUE,
question VARCHAR(30) NOT NULL,
a1 VARCHAR(20),
a2 VARCHAR(20),
a3 VARCHAR(20),
a4 VARCHAR(20),
correct_answer INT)";
$x1=mysqli_query($conn,$x);
if(!$x1)
{
	echo "";
}
else
{
	echo "Questions ready !!";
			
	}
if(mysqli_select_db($conn,"question_bank"))
{
$y="INSERT INTO student_viva.$t(q_no, question, a1 ,a2, a3, a4, correct_answer)
SELECT q_no, question, a1 ,a2, a3, a4, correct_answer FROM question_bank.$table_names";
$y1=mysqli_query($conn,$y);
if(!$y1)
{
	die(mysqli_error($conn));
}
$yy="SELECT COUNT(*) FROM student_viva.$t";
$yy1=mysqli_query($conn,$yy);
$yy11=mysqli_fetch_array($yy1);
//echo $yy11[0];
}
	
}
}
if(mysqli_select_db($conn,"noq"))
{
	$k=$_POST['numb'];
	
	if($k>$yy11[0])
	{
		 echo ("<SCRIPT LANGUAGE='JavaScript'>
    window.alert('Check the number of questions you added')
    
    </SCRIPT>");
	
	}
	else{
	$r = "Delete from noqtable where lab_id = '$t'";
	mysqli_query($conn,$r);
	$l="INSERT INTO noqtable(lab_id,noq) VALUES('$t',$k)";
	mysqli_query($conn,$l);
        }
}

?>