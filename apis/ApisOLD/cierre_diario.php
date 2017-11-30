<?php


class Functions {

	public function getDataList($a, $id, $get = null) {
		/*
		PARAMETROS GET
		$get["p1"] = fecha;
		$get["p2"] = compañia;
		$get["p3"] = usuario; 
		$get["p4"] = estatus; 
		*/
		$condicP1 = "";
		$condicP2 = "";
		$condicP3 = "";
		$condicP4 = "";

		require '../core/db.php';

		$result = array();

		if ( $get["p2"] != "-" ) {
			$condicP2 = "AND CargarPago = '" . $get["p2"] . "'";
		}
		if ( $get["p3"] != "-" ) {
			$condicP3 = "AND a.CodUsuar = '" . $get["p3"] . "'";
		}
		if ( $get["p4"] != "-" ) {
			$condicP4 = "AND a.Estats = '" . $get["p4"] . "'";
		} else {
			$condicP4 = "AND a.Estats IN (3, 4)";
		}

		$datas = $db->query("SELECT *, DATE_FORMAT(a.fecCreacn, '%d-%m-%Y') FecFormat, NomUsuar, CASE WHEN a.Estats IN (4, 5) THEN 'No Aprobada' WHEN a.Estats = 3 THEN 'Aprobada' END Estatus, a.EstatsRespus
								FROM control a, usuar b 
								WHERE a.CodUsuar = b.CodUsuar
								AND  date_format(a.fecCreacn, '%d-%m-%Y') = '" . $get["p1"] . "' " . 
								$condicP2 . " " .
								$condicP3 . " " .
								$condicP4)->fetchAll();
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