<?php


class Functions {

	public function getDataList($a, $id, $get = null) {
		/*
		PARAMETROS GET
		$get["p1"] = fechaDesde;
		$get["p2"] = fechaHasta;
		$get["p3"] = compañia;
		$get["p4"] = usuario; 
		*/

		$condicP1 = "";
		$condicP2 = "";
		$condicP3 = "";
		$condicP4 = "";
		
		require '../core/db.php';

		$result = array();

		if ( $get["p3"] != "-" ) {
			$condicP3 = "AND CargarPago = '" . $get["p3"] . "'";
		}
		if ( $get["p4"] != "-" ) {
			$condicP4 = "AND a.CodUsuar = '" . $get["p4"] . "'";
		}

		$datas = $db->query("SELECT SUM(Monto) Monto, COUNT(*) NumOperaciones, CargarPago
								FROM control a
								WHERE DATE_FORMAT(a.fecCreacn, '%Y-%m-%d') BETWEEN '" . date("Y-m-d", strtotime($get["p1"])) . "' AND  '" . date("Y-m-d", strtotime($get["p2"])) . "' " . 
								$condicP3 . " " .
								$condicP4 . " " .
								"AND a.Estats = 3 
								GROUP BY CargarPago")->fetchAll();
		$result["data"] = $datas;
		
		if ( !empty( $result["data"] ) ) {
			
			$result["response"] = "ok";

		} else {
			
			$result["response"] = "no-data";

		}

		$resultJson = json_encode($result, JSON_PRETTY_PRINT);

		echo $resultJson;

	}

}