<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null, $agencia = null ) {

		require '../core/db.php';

		$resultados = $db->max("tickets", "numero_ticket", ["fecha" => date("Y-m-d", strtotime($id)), "agencia" => $agencia]);
		//$sorteos = $db->select("sorteos", "*", ["estatus" => 0]);
		$datos[]["numero_ticket"] = $resultados + 1;
		echo json_encode($datos);


	}

	public function saveData() {
		
		

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}