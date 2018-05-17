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
$lab_no=$_SESSION['lab_no'];
$lab_name=$_SESSION['lab_name'];
$table_names=$lab_name.'_'.$lab_no;
	$conn=mysqli_connect($server,$dbuser,$error);
	if(!$conn)
		echo "connection failed";
	if(mysqli_select_db($conn,"question_bank"))
		{
			$r="select * from $table_names";
			$q="desc $table_names";
			$r1=mysqli_query($conn,$r);
			$q1=mysqli_query($conn,$q);
			if(!$r1)
				die(mysqli_error($conn));
			else
			{
			echo"<table class=\"table table-striped\" border=\"1\" height=\"24%\" width=\"100%\">\n"; 
			echo "<tr>";
			while($det=mysqli_fetch_Array($q1,MYSQLI_NUM))
			{
				
				echo "<td>";
				echo "<h3>";
				echo $det[0]."</h3></td>";
				
			}
			echo "</tr>";
			$i=mysqli_num_rows($q1);
			while($det1=mysqli_fetch_Array($r1,MYSQLI_NUM))
			{
				echo "<tr>";
				for($j=0;$j<$i;$j++)
				{	
					
					echo "<td>";
					echo $det1[$j];
					echo "</td>";
					
				}
				echo "</tr>";
			}
			echo "</table>";
			}
		}

		?>
			