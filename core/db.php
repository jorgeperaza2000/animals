<?php
include 'Medoo.php';
use Medoo\Medoo;
$production = true;
if ( $production ) {

	$db = new Medoo([
	// required
		'database_type' => 'mysql',
		'database_name' => 'u702758025_anima',
		'server' => 'localhost',
		'username' => 'u702758025_anima',
		'password' => '8zVod8FQfCqu',
		'charset' => 'utf8',
		'port' => 3306,
		'option' => [ PDO::ATTR_CASE => PDO::CASE_NATURAL]
	]);
	
} else {
	$db = new Medoo([
	// required
		'database_type' => 'mysql',
		'database_name' => 'animalitos',
		'server' => 'localhost',
		'username' => 'root',
		'password' => '1211',
		//'database_name' => 'webfz',
		//'server' => 'localhost',
		//'username' => 'webmzurita',
		//'password' => 'FSXrh&C?0PGh',
		'charset' => 'utf8',
		'port' => 3306,
		'option' => [ PDO::ATTR_CASE => PDO::CASE_NATURAL]
	]);
}
?>