<?php

require 'CONEXION.php';
session_start();
$usuario=$_POST['user'];
$contraseña=$_POST['pass'];

$query="SELECT*FROM usuario WHERE nombre='$usuario' AND contraseña='$contraseña' ";
$consulta=pg_query($conexion,$query);
$cantidad=pg_num_rows($consulta);
if($cantidad>0){
    $_SESSION['Nombre de usuario']=$usuario;
    header("location: Crud_Administrador.html");
}else{
    header("location: Login.php?alerta=1");
}

?>