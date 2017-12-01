<?php
//require 'core/autoloader.php';


require 'core/db.php';

$dato = $db->query("SELECT NOW()")->fetchAll();
print_r($dato);
?>