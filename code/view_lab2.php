<?php
session_start();
echo "<frameset rows=\"25%,*\">
      <frame src=\"frame1.php\" name=\"top\" target=\"bottom\"></frame>
      <frame src=\"\" name=\"bottom\" target=\"_self\">	</frame>
      </frameset>";
?>