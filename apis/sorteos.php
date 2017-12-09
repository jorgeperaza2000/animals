<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {

		require '../core/db.php';

		//$abrirSorteos = $db->query("UPDATE sorteos SET estatus = 0 WHERE hora_limite > CURRENT_TIME()");
		//$cerrarSorteos = $db->query("UPDATE sorteos SET estatus = 1 WHERE hora_limite <= CURRENT_TIME()");

		$sorteos = $db->select("sorteos", "*", ["estatus" => 0, "ORDER" => "orden"]);
		echo json_encode($sorteos);

	}

	public function saveData() {
		
		

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}