<?php
    define('USER', 'erp');
    define('PASSWORD', 'erpWoodyToys2021');
    define('HOST', '51.210.42.27');
    define('DATABASE', 'woodytoys');
    try {
        $connection = new PDO("mysql:host=".HOST.";dbname=".DATABASE, USER, PASSWORD);
    } catch (PDOException $e) {
        exit("Error: " . $e->getMessage());
    }
?>