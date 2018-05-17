<?php
 if(isset($_POST['upload'])){
    $name       = $_FILES['filetoupload']['name'];  
    $temp_name  = $_FILES['filetoupload']['tmp_name'];  
    if(isset($name)){
        if(!empty($name)){      
            $location = '/uploads/';      
            if(move_uploaded_file($temp_name, $location.$name)){
                echo 'File uploaded successfully';
            }
        }       
    }  else {
        echo 'You should select a file to upload !!';
    }
}
?>
