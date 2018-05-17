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
echo "<link rel=\"stylesheet\" type=\"text/css\" href=\"a.css\"/>";
$error="";
$dbuser="root";
$server="localhost";
$table=$_GET['ques'];
$conn=mysqli_connect($server,$dbuser,$error);
	if(!$conn)
		echo "connection failed";
	if(mysqli_select_db($conn,"forum_db"))
	{
		echo $table;
		$a="SELECT question FROM qusn_list WHERE question_id='$table'";
		$a1=mysqli_query($conn,$a);
		echo "<table class=\"table table-striped\" border=\"1\"  width=\"100%\" height=\"10%\">";
		echo "<thead><tr>";
		while($det=mysqli_fetch_array($a1))
		{
			echo "<th><em>".$det[0]."</em></th>";
			 echo "</thead></tr>";
		}
		
		$p="SELECT * FROM $table";
		$q1=mysqli_query($conn,$p);
		  echo "<tr>";
		  $z="desc $table";
		  $l=mysqli_query($conn,$z);
		  $j=mysqli_num_rows($l);
		while($det=mysqli_fetch_array($q1))
		{
			for($i=0;$i<$j;$i++)
		    {
			 echo "<td>";
			 echo $det[$i];
			 echo "</td>";
		     }
			 echo "</tr>";
		}
		echo "</table><br>";
		echo "</div>";
		echo "<form action=\"forum3.php\" method=\"post\" target=\"_self\">";
		echo"<center><textarea name=\"ans\" rows=\"2\" cols=\"
		150\" placeholder=\"ANSWER HERE\"></textarea>";
		echo "<input type=\"submit\" name=\"answer\" value=\"ANSWER\">";
		echo "</center></form>";
		
		
		
		
			
		    
			
		
	}
?>