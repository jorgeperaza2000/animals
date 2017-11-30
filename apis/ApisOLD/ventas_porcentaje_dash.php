<?php

class Functions {

	public function getDataList( $a, $id = null ) {

		require '../core/db.php';

		$result = array();

		extract($_GET);

		$datas = $db->query("SELECT CargarPago, SUM(Monto) Monto, COUNT(Monto) Operaciones FROM control WHERE (DATE_FORMAT(FecCreacn, '%Y-%m-%d') BETWEEN CONCAT(YEAR(CURDATE()), '-', DATE_FORMAT(CURDATE(),'%m') , '-', '01') AND CURDATE()) AND Estats = 3 GROUP BY CargarPago")->fetchAll();			

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