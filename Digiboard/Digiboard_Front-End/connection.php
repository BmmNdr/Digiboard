<?php
$servername = "db.springmc.net";
$username = "root";
$password = "digiboard";
$dbname = "digiboard";
$dbport = "3307";
$conn = new mysqli($servername, $username, $password, $dbname, $dbport);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>