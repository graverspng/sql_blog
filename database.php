<?php

class Database {

    private $pdo;

    public function __construct(){

        
        $connection_string = ("mysql:" . http_build_query($config, "", ";"));
        $pdo = new PDO($connection_string);
        $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    }
        $query = $pdo-> prepare($query_string);

        $query-> execute();

        return $query;
    
};