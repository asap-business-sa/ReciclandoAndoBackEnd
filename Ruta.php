<?php
//Consulta tabla y campo.
$sql="Select R.latitud,R.longitud,
               D.latitud, D.longitud
        from MapReciclador R INNER JOIN MapDonador D ON  R.id_MapReciclador = D.MapDonador
        where R.longitud = D.longitud"
    
    $putData = new PutData("https://luisbustamante.tk/Consulta/Consulta.php", "POST", field, data);
    
    $rs=mysqli_query($putData,$sql);
    while($row=mysqli_fetch_array($rs)){
        $longitud=$row["longitud"]
        $latitud=$row["latitud"]
    } 
?>









