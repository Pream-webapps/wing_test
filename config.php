<?php

/**
 * Database config details
 */
$servername = "localhost";
$username = "root";
$password = "p0p";
$dbname = "wing_test";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
