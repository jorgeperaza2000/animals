<?php

class Functions {

	public function getDataList( $a, $id = null ) {

		require '../core/db.php';

		$result = array();

		extract($_GET);

		if ( !empty( $_GET["id"] ) ) {
			
			$datas = $db->query("SELECT SUM(Monto) Monto FROM control WHERE DATE_FORMAT(FecCreacn, '%Y-%m-%d') = CURDATE() AND Estats = 3 AND CodUsuar = " . $_GET["id"])->fetchAll();

		} else {

			$datas = $db->query("SELECT SUM(Monto) Monto FROM control WHERE Estats = 3 AND DATE_FORMAT(FecCreacn, '%Y-%m-%d') = CURDATE()")->fetchAll();			

		}

		$result["data"] = $datas[0];
		
		if ( !empty( $result["data"] ) ) {
			
			$result["response"] = "ok";

		} else {
			
			$result["response"] = "no-data";

		}

		$resultJson = json_encode($result, JSON_PRETTY_PRINT);

		echo $resultJson;

	}

}