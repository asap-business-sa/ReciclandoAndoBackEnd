<?php
$hostname ="204.199.146.228";  
$database ="luisbust_Recicla2";
$username ="luisbust_root";

$password ="luisandres123";
$conexion = mysqli_connect($hostname,$username,$password)
or
trigger_error(mysqli_error(),E_USER_ERROR); 
mysqli_select_db($conexion, $database);
    header('Access-Control-Allow-Origin: *');
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
    header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE');
    header('content-type: application/json; charset=utf-8');

  $usernameID = $_POST['usernameID'];
  $latitud = $_POST['latitud'];
  $longitud = $_POST['longitud'];
  
 class response {
	public $enviado;
	public $mensaje;
}
 
  $objeto = new response();
 
 
try{
 	
 	$query_search = "insert into localizacion(usernameID,latitud, longitud) values ('".$usernameID."','".$latitud."','".$longitud."')";
	$query_exec = mysqli_query($conexion,$query_search) or die(mysqli_error($conexion));//Ejecuta la sentencia sql.
	$objeto->enviado = true;
	$objeto->mensaje = 'Datos ingresados';
	echo json_encode($objeto);
 }
 catch (Exception $e){
 	$objeto->enviado = false;
	$objeto->mensaje = $e->getMessage();
	echo json_encode($objeto);
 }
?>