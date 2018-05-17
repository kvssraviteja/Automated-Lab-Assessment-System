<?php
echo "<html lang=\"en\">
<head>
  
  <meta charset=\"utf-8\">
  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">
  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">
  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>
  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>
</head>
<body>
<div class=\"container\">";
session_start();
$server= "localhost";
$dbuser= "root";
$error= "";
$conn=mysqli_connect($server,$dbuser,$error);
  if(!$conn)
  {
    echo "connection failed";
  }
if(mysqli_select_db($conn,"student_db"))
   {
	   $table_name=$_SESSION['table_name'];
	   $q="select regd_no,s_name,system_no,lab_id from $table_name ORDER BY regd_no";
	   $q1=mysqli_query($conn,$q);
	    if(!$q1)
	 {
	     die(mysqli_error($conn));
   }
	   $r="desc $table_name";
	   $r1=mysqli_query($conn,$r);
	    if(!$r1)
	 {
		 echo "query failed";
	     die(mysqli_error($conn));
   }
	   echo " <table class=\"table table-striped\" border= \"1 \" height=\"10%\" width=\"100%\"> " ;
	 echo "<thead>";
	 echo "<tr>";
	 while($det=mysqli_fetch_array($r1))
	 {	
			echo "<th>".$det[0]."</th>";
	 }
	 echo "</tr></thead>";
	
	 $i=mysqli_num_rows($r1);
	 	 while($det=mysqli_fetch_array($q1,MYSQLI_NUM))
	     {
	 		   echo "<tr>";
		 for($j=0;$j<$i;$j++)
		   {
			echo "<td>";
			echo "<center>";
			echo $det[$j];
			echo "</center>";
			echo "</td>";
		   }
					  
		}
		echo "</table>";
		echo "<br><br><br>";
		
   }   

?>