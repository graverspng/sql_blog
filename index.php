<?php

require "function.php";
require "database.php";


$config = require("config.php");



$db = new Database();
$posts = db
    ->execute("SELECT * FROM posts")
    ->fetchAll(PDO::FETCH_ASSOC);

echo "<ul>";
foreach($posts as $post) {
    echo "<li>" . $post["title"] . "</li>";
}
echo "</ul>";