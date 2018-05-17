<?php
session_start();
$server= "localhost";
$dbuser= "root";
$error= "";
$conn=mysqli_connect($server,$dbuser,$error);
	if(!$conn)
		echo " connection failed" ;
	if(mysqli_select_db($conn,"forum_db"))
	{
	 $a="DROP DATABASE forum_db";
	 mysqli_query($conn,$a);
	 $b="CREATE DATABASE forum_db";
	 mysqli_query($conn,$b);
	
	}
header("Location: faculty_main.html");
?>