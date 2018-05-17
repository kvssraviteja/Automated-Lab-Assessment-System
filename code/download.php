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
$error="";
$dbuser="root";
$server="localhost";
$table_name=$_SESSION['table_name'];
	$conn=mysqli_connect($server,$dbuser,$error);
	if(!$conn)
		echo "connection failed";
	if(mysqli_select_db($conn,"files_db"))
	{
		$result= mysqli_query( $conn,"SELECT regd_no,description, file_name FROM $table_name" ) 
or die(mysqli_error($conn)); 

print "<table class=\"table table-striped\" border=1 height=\"10%\" width=\"100%\">\n"; 
while ($row = mysqli_fetch_array($result)){ 
$files_field= $row['file_name'];
$reg_no= $row['regd_no'];
$files_show= "Uploads/$files_field";
$descriptionvalue= $row['description'];
$r="desc $table_name";
	   $r1=mysqli_query($conn,$r);
	   echo "<thead>";
	 echo "<tr>";
	 while($det=mysqli_fetch_array($r1))
	 {	
			echo "<th>".$det[0]."</th>";
	 }
	 echo "</tr>";
	 echo "</thead>";
print "<tr>\n"; 
print "\t<td>\n"; 
echo "<font face=arial size=4/>$reg_no</font>";
print "</td>\n";
print "\t<td>\n"; 
echo "<font face=arial size=4/>$descriptionvalue</font>";
print "</td>\n";
print "\t<td>\n"; 
echo "<div align=center><a href='$files_show'>$files_field</a></div>";
print "</td>\n";
print "</tr>\n"; 
} 
print "</table>\n"; 
	}

?>