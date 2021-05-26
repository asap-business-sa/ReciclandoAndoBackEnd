
<?php
require "DataBase.php";
$db = new DataBase();
if (isset($_POST['username']) && isset($_POST['password'])) {
 if ($db->dbConnect()) {
    if($db-> tipoUsuario($_POST['username'])){
     echo "exito";
    } else   echo "fallo tipo usuario";
    
    }else echo "Error: Database connection";
} else echo "All fields are required";

?>
