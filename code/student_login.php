<?php
session_start();
$server="localhost";
$dbuser="root";
$error="";
$table=$_SESSION['lab_id'];
echo $table;
if(isset($_POST['s_login']))
{
	$conn=mysqli_connect($server,$dbuser,$error);
	if(!$conn)
		echo " connection failed" ;
	if(mysqli_select_db($conn,"student_db"))
	{
		$regd_no=$_POST['regd_no'];
		$f_pwd=$_POST['sys_no'];
		$q="select system_no from $table where regd_no=\"$regd_no\"";
		$r=mysqli_query($conn,$q);
		if(!$r)
			echo "query failed";
		$row= mysqli_fetch_array($r,MYSQL_ASSOC);
		if(mysqli_num_rows($r)==0)
		{
			echo "<script type=\"text/javascript\">   
					alert (\"Enter correct id\");
				  </script> ";
		    header("Location: file:///C:/wamp64/www/SLMS/parallax-template/parallax-template/index.html");
		}
		else 
		{
		if($row['system_no']==$f_pwd)
			{
				header("location:student_home.html");
			}
			else
			{
				echo "failed";
				echo "<script type=\"text/javascript\">
                      alert (\"login failed\");
					  </script> ";
			}
		}
		
	}	
		
}
?>