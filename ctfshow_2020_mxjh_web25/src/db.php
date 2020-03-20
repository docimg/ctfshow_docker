<?php
$servername = "localhost";
$username = "root";
$password = "ctfshow";
$dbname = "ctfshow_web";

// 创建连接
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die($conn->connect_error);
}
?>
