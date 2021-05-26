<?php
$hostname ="142.93.190.70";  
$database ="luisbust_Recicla2";
$username ="luisbust_root";
$password ="luisandres123";
$conexion = mysqli_connect($hostname,$username,$password);

mysqli_select_db($conexion, $database);

    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
    header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
    header('content-type: application/json; charset=utf-8');

$usernameID= $_POST['usernameID'];

$query_search = "Delete From localizacion Where usernameID='{$_POST['usernameID']}'";
	$query_exec = mysqli_query($conexion,$query_search) or die(mysqli_error($conexion));//Ejecuta la sentencia sql.

    $response="deleted";
    

echo json_encode($response);
?>

