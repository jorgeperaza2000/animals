<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {

		require '../core/db.php';

		$resultados = $db->select("vw_resultados", "*", ["fecha" => date("Y-m-d", strtotime($id))]);
		echo json_encode($resultados);


	}

	public function saveData() {
		
		

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}