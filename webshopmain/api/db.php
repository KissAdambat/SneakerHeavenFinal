<?php
function dbConnect(): mysqli
{
    $host = 'localhost';
    $user = 'root';
    $password = '';
    $database = 'sneakerheaven';

    $mysqli = new mysqli($host, $user, $password, $database);
    if ($mysqli->connect_errno) {
        die('Adatbázis kapcsolódási hiba: ' . $mysqli->connect_error);
    }

    $mysqli->set_charset('utf8mb4');
    return $mysqli;
}
