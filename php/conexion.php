<?php
$host = 'localhost'; 
$db_name = 'envios';
$username = 'root';
$password = 'root';


$conn = new mysqli($host, $username, $password, $db_name);


if ($conn->connect_error) {
    die('Error de conexión: ' . $conn->connect_error);
}

echo 'Conexión exitosa';


$conn->close();
?>
