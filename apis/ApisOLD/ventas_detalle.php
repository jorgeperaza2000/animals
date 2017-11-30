<?php


class Functions {

	public function getDataList($a, $id, $get = null) {
		/*
		PARAMETROS GET
		$get["p1"] = fechaDesde;
		$get["p2"] = fechaHasta;
		$get["p3"] = compañia;
		$get["p4"] = usuario; 
		$get["p5"] = estatus; 
		$get["p6"] = localizador; 
		$get["p7"] = nombre cliente; 
		$get["p8"] = cedula o pasaporte cliente; 
		*/
		$condicP1 = "";
		$condicP2 = "";
		$condicP3 = "";
		$condicP4 = "";
		$condicP5 = "";
		$condicP6 = "";
		$condicP7 = "";
		$condicP8 = "";
		
		require '../core/db.php';

		$result = array();
		//$get = $_GET;
		//echo json_encode(print_r($get), JSON_PRETTY_PRINT);

		if ( $get["p3"] != "-" ) {
			$condicP3 = "AND CargarPago = '" . $get["p3"] . "'";
		}
		if ( $get["p4"] != "-" ) {
			$condicP4 = "AND a.CodUsuar = '" . $get["p4"] . "'";
		}
		if ( $get["p5"] != "-" ) {
			$condicP5 = "AND a.Estats = '" . $get["p5"] . "'";
		} else {
			$condicP5 = "AND a.Estats IN (3, 4)";
		}
		if ( $get["p6"] != "-" ) {
			$condicP6 = "AND a.NumLocalz LIKE '%" . $get["p6"] . "%'";
		}
		if ( $get["p7"] != "-" ) {
			$condicP7 = "AND a.NomClient LIKE '%" . $get["p7"] . "%'";
		}
		if ( $get["p8"] != "-" ) {
			$condicP8 = "AND a.CedIdentd LIKE '%" . $get["p8"] . "%'";
		}
		

		$datas = $db->query("SELECT a.*, DATE_FORMAT(a.fecCreacn, '%d-%m-%Y') FecFormat, CASE WHEN a.Estats IN (4, 5) THEN 'No Aprobada' WHEN a.Estats = 3 THEN 'Aprobada' END Estatus
								FROM control a
								WHERE DATE_FORMAT(a.fecCreacn, '%Y-%m-%d') BETWEEN '" . date("Y-m-d", strtotime($get["p1"])) . "' AND  '" . date("Y-m-d", strtotime($get["p2"])) . "' " . 
								$condicP3 . " " .
								$condicP4 . " " .
								$condicP5 . " " .
								$condicP6 . " " .
								$condicP7 . " " .
								$condicP8 . " " . 
								"ORDER BY NumLocalz, FecCreacn Desc"
								)->fetchAll();
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