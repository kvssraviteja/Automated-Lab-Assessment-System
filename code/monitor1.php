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
$conn=mysqli_connect($server,$dbuser,$error);
	if(!$conn)
		echo "connection failed";
	if(mysqli_select_db($conn,"forum_db"))
	{
		$q="SELECT * FROM qusn_list";
		$q1=mysqli_query($conn,$q);
		echo "<table class=\"table table-striped\" border=\"1\"  width=\"100%\" height=\"10%\">";
		echo "<thead><tr> <th><center>QUESTION_ID</th>
		           <th><center>QUESTION </th> </center></tr></thead>";
	    echo "<tr>";
		while($det=mysqli_fetch_array($q1))
		{
			for($i=0;$i<2;$i++)
		    {
			 echo "<td>";
			  echo "<a href=\"monitor2.php?ques=".$det[0]." \" target=\"_self\">".$det[$i]."</a>";
			 echo "</td>";
		     }
			 echo "</tr>";
		}
	}
?>