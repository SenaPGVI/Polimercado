<?PHP

$conexion=pg_connect("host=localhost dbname=AAAPolimercado user=postgres password=Maye1302.");
if ($conexion) {
	// code..
	echo "se conecto correctamente!";
}
else{
	// code...
	echo "Ha ocurrido un problema!";
}
?>