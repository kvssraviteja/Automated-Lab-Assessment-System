<?php
session_start();
echo "<h3><b><center>WELCOME TO LAB ". $_SESSION['table_name'];
echo "</b></h3><br>";
echo "<script src=\"jquery.min.js\" type=\"text/javascript\"></script>
<link href=\"bootstrap.min.css\" rel=\"stylesheet\" type=\"text/css\"/>
<script src=\"bootstrap.min.js\" type=\"text/javascript\"></script>";
echo"<head>
    <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css\">
    <script src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js\"></script>
    <script src=\"http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js\"></script>
 </head>";
 echo "<body><h4>";
 echo "<div class=\"container\">";
echo "<div class=\"row\">";
 echo "<nav class=\"nav navbar-nav\">";
echo "<ul class=\"nav nav-pills\">
  <li role=\"presentation\" ><a href=\"att.php\" target=\"bottom\">ATTENDANCE</a></li>
  <li role=\"presentation\"><a href=\"assmt.php\" target=\"bottom\">ASSESSMENT</a></li>
  <li role=\"presentation\"><a href=\"start_viva.php\" target=\"bottom\"> VIVA</a></li>
   <li role=\"presentation\"><a href=\"marks.php\" target=\"bottom\">MARKS</a></li>
    <li role=\"presentation\"><a href=\"forum.html\" target=\"bottom\">FORUM</a></li>
	 <li role=\"presentation\"><a href=\"logout.php\" target=\"_top\">LOGOUT</a></li>
</ul>
</nav>
</div>

</div> </h4></body>;

                    
    

    <script src=\"../assets/js/jquery.js\"></script>
    <script src=\"../assets/js/bootstrap-transition.js\"></script>
    <script src=\"../assets/js/bootstrap-alert.js\"></script>
    <script src=\"../assets/js/bootstrap-modal.js\"></script>
    <script src=\"../assets/js/bootstrap-dropdown.js\"></script>
    <script src=\"../assets/js/bootstrap-scrollspy.js\"></script>
    <script src=\"../assets/js/bootstrap-tab.js\"></script>
    <script src=\"../assets/js/bootstrap-tooltip.js\"></script>
    <script src=\"../assets/js/bootstrap-popover.js\"></script>
    <script src=\"../assets/js/bootstrap-button.js\"></script>
    <script src=\"../assets/js/bootstrap-collapse.js\"></script>
    <script src=\"../assets/js/bootstrap-carousel.js\"></script>
    <script src=\"../assets/js/bootstrap-typeahead.js\"></script>

  </body>
</html>
";

?>