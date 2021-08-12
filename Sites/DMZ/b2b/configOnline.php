<?php
    define('USER', 'b2b');
    define('PASSWORD', 'b2bWoodyToys2021');
    define('HOST', 'localhost');
    define('DATABASE', 'woodytoys');
    try {
        $connection = new PDO("mysql:host=".HOST.";dbname=".DATABASE, USER, PASSWORD);
    } catch (PDOException $e) {
        exit("Error: " . $e->getMessage());
    }
?>
