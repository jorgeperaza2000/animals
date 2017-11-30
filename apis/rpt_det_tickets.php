<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {

		require '../core/db.php';

		$resultados = $db->select("vw_reporte_ticket_det", "*", ["id_ticket" => $id, "ORDER" => "id"]);
		//$sorteos = $db->select("sorteos", "*", ["estatus" => 0]);
		echo json_encode($resultados);


	}

	public function saveData() {
		
		

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}