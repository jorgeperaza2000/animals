<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {

		$dbhost = 'localhost';
	    $dbname = 'animalitos';
	    $dbuser = 'root';
	    $dbpass = '1211';
	    $backup_file = $dbname . date("d-m-YH:i:s") . '.sql';
	    $command = "mysqldump -h $dbhost -u $dbuser -p$dbpass --routines --triggers --events $dbname > $backup_file";
	    system($command,$output);
	    echo $output;


	}

	public function saveData() {
		
		

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}