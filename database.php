<?php

class Database {

    private $pdo;

    public function __construct{
        $connection_string = "mysql:host=localhost;dbname=blog_adrians_gravers;user=root;password=;charset=utf8mb4";
        $pdo = new PDO($connection_string);
        $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    }
        $query = $pdo-> prepare($query_string);

        $query-> execute();

        return $query;
    
};