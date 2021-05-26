<?php
require "DataBase.php";
$db = new DataBase();
if (isset($_POST['fullname']) && isset($_POST['email']) && isset($_POST['username']) && isset($_POST['password']) && isset($_POST['typeuser'])) {
    if ($db->dbConnect()) {
        if ($db->signUp("users", $_POST['fullname'], $_POST['email'], $_POST['username'], $_POST['password'], $_POST['typeuser'])) {
            echo "Registro Exitoso!";
        } else echo "Sign up Failed";
    } else echo "Error: Database connection";
} else echo "All fields are required";
?>
