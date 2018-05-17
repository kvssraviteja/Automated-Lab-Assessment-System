<?php
echo "
<html lang=\"en\">
  <head>
    <meta charset=\"utf-8\">
    <title>Automated Lab Assessment System</title>
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <meta name=\"description\" content=\"\">
    <meta name=\"author\" content=\"\">

    <!-- Le styles -->
	 <link rel=\"stylesheet\" href=\"//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css\">

  <link rel=\"stylesheet\" href=\"//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css\">
  <link rel=\"stylesheet\" type=\"text/css\" media=\"screen\" href=\"//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/css/bootstrap-select.min.css\">

    <link href=\"../assets/css/bootstrap.css\" rel=\"stylesheet\">
    <style type=\"text/css\">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type=\"text\"],
      .form-signin input[type=\"password\"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>
    <link href=\"../assets/css/bootstrap-responsive.css\" rel=\"stylesheet\">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src=\"../assets/js/html5shiv.js\"></script>
    <![endif]-->

   
  </head>
  <body>
  <script src=\"//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js\"></script>
                 <script src=\"//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js\"></script>
                 <script src=\"//cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.7.5/js/bootstrap-select.min.js\"></script>
          <script type=\"text/javascript\">
               $(document).ready(function() {
               $('.selectpicker').selectpicker();
              });
          </script>
  </body>

 
</html>";

session_start();
$error="";
$dbuser="root";
$server="localhost";
	$conn=mysqli_connect($server,$dbuser,$error);
	if(!$conn)
		echo "connection failed";
	if(mysqli_select_db($conn,"course_db"))
	{
		echo "<div class=\"container\">";
		echo "<form class=\"form-signin\" action=\"add_lab1.php\" method=\"POST\">";
		echo "<center><h2> ADD A NEW LAB </h2></center>";
		 echo "Select year:
			<select class=\"selectpicker\" name=\"year\">
			<option value=\"13\">2013-17</option>
			<option value=\"14\">2014-18</option>
			<option value=\"15\">2015-19</option>
			<option value=\"16\">2016-20</option>
			</select><br>";
		echo "select semester:
			<select class=\"selectpicker\" name=\"sem\">
			<option value=\"11\">1-1</option>
			<option value=\"12\">1-2</option>
			<option value=\"21\">2-1</option>
			<option value=\"22\">2-2</option>
			<option value=\"31\">3-1</option>
			<option value=\"32\">3-2</option>
			<option value=\"41\">4-1</option>
			<option value=\"42\">4-2</option>
			</select><br>";
		echo "select sec:
			<select class=\"selectpicker\" name=\"sec\">
			<option value=\"A\">A</option>
			<option value=\"B\">B</option>
			</select><br>";
		echo "select lab name:";
		
		$a="select lab_name from course_list";
		$b=mysqli_query($conn,$a);
		echo " <select name=\"lab_name\" class=\"selectpicker\">";
		while($a2=mysqli_fetch_array($b))
		{
		     echo"<option value=\"".$a2[0]."\">".$a2[0]."</option>";
		}
		echo "</select><br>";
		echo "Enter lab number";
		echo" <input type=\"text\" class=\"input-block-level\" name=\"lab_no\"><br><br>";
		echo "<br>";
		echo "<center>  <button class=\"btn btn-large btn-primary\" type=\"submit\" name=\"add\">ADD</button> </center>";
		echo "</form>";
		   echo " </div> <!-- /container -->";
		echo "<br><br><footer><center>";
		echo "<a href=\"add_students.html\" target=\"_blank\">ADD CLASS </a>";
		echo "</footer>"; 
	}


?> 





