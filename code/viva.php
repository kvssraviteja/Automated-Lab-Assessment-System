<script>
    // WRITE THE VALIDATION SCRIPT IN THE HEAD TAG.
    function isNumber(evt) {
        var iKeyCode = (evt.which) ? evt.which : evt.keyCode
        if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
            return false;

        return true;
    }    
</script>

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
$t_name=$_SESSION['lab_id'];
$l=0;
$l1=0;
$conn=mysqli_connect($server, $dbuser, $error);
if (!$conn)
	echo "connection failed";
if(mysqli_select_db($conn,"noq"))
{
	$a="select noq from noqtable where lab_id='$t_name'";
	$a1=mysqli_query($conn,$a);
	while($a2=mysqli_fetch_array($a1))
	{
		$_SESSION['q']=$a2[0];
	}
}
        $j=$_SESSION['q'];
    
if(mysqli_select_db($conn,"student_viva"))
{
	
$q="SELECT question,a1,a2,a3,a4,correct_answer FROM $t_name ORDER BY rand() LIMIT $j";
	$q1=mysqli_query($conn,$q);
	$r="desc $t_name";
	   $r1=mysqli_query($conn,$r);
	    if(!$r1)
	 {
		 echo "query failed";
	     die(mysqli_error($conn));
   }
	    echo " <table class=\"table table-striped\" border= \"1 \" height=\"10%\" width=\"100%\"> " ;
		echo "<thead>";
		echo "<tr>";
		echo "<th>";
			echo "<center>";
			echo "QUESTION";
			echo "</center>";
			echo "</th>";
			echo "<th>";
			echo "<center>";
			echo "OPTION 1";
			echo "</center>";
			echo "</th>";
			echo "<th>";
			echo "<center>";
			echo "OPTION 2";
			echo "</center>";
			echo "</th>";
			echo "<th>";
			echo "<center>";
			echo "OPTION 3";
			echo "</center>";
			echo "</th>"; 
			echo "<th>";
			echo "<center>";
			echo "OPTION 4";
			echo "</center>";
			echo "</th>";
			echo "<th>";
			echo "<center>";
			echo "ENTER YOUR OPTION";
			echo "</center>";
			echo "</th>";
			echo "</tr>";
			echo "</thead>";
		//echo "<tr>";
		$i=mysqli_num_rows($r1);
		$k=$i-2;
	 	 while($det=mysqli_fetch_array($q1))
	     {
			 echo "<tr>";
			 for($j=0;$j<$k;$j++)
			 {
	 		
		  	echo "<td>";
			echo "<center>";
			echo $det[$j];
			echo "</center>";
			echo "</td>";
			 }
			
		    echo "<td>";
		 	echo "<center>";
			echo "<form action=\"viva1.php\" method=\"post\">";
			
			echo "<input type=\"text\" name=\"ans[$l]\" placeholder=\"1 or 2 or 3 or 4\" onkeypress=\"javascript:return isNumber(event)\" >";
			echo "<input type=\"hidden\" name=\"c_ans[$l]\" value=\"$det[5]\">";
			echo "</center>";
			echo "</td>";
			$l++;
			 echo "</tr>";
		 }
					  
		
		echo "</table><br><br>";
		
		
		//echo "<center><input type=\"submit\" name=\"submit\" value=\"submit\">";
		//echo "</form>";
	
		
		echo "<center><input type=\"submit\" name=\"submit\" value=\"submit\">";
		echo "</form>";
		echo"</div>";
}?>

