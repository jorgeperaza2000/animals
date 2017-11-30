<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {

		require '../core/db.php';

		$sorteos = $db->select("sorteos", "*", ["estatus" => 0]);
		if ( $sorteos ) {
			$respuesta[] = ["respuesta" => "ok"];
			echo json_encode($respuesta);	
		} else {
			$respuesta[] = ["respuesta" => "error"];
			echo json_encode($respuesta);	
		}
		

	}

	public function saveData() {
		
		

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}