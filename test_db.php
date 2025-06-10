<?php
$host = 'polimercado_db'; // Nombre del contenedor de MySQL
$user = 'root';
$pass = 'root';
$db = 'polimercado';

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("❌ Conexión fallida: " . $conn->connect_error);
}
echo "✅ Conexión exitosa con la base de datos desde el contenedor web.";
$conn->close();
?>
