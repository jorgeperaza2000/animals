<?php

class Functions {

	public function getDataList( $a, $id = null ) {

		require '../core/db.php';

		$result = array();

		extract($_GET);

		$table = "control";

		if ( !empty( $_GET["id"] ) ) {
			
			$datas = $db->count($table, ["AND" => ["CodUsuar" => $_GET["id"], "Estats[<]" => 3]]);

		}

		$result["data"] = $datas;
		
		if ( !empty( $result["data"] ) ) {
			
			$result["response"] = "ok";

		} else {
			
			$result["response"] = "no-data";

		}

		$resultJson = json_encode($result, JSON_PRETTY_PRINT);

		echo $resultJson;

	}

	public function updateData( $a, $id = null  ) {

		require '../core/db.php';

		$result = array();

		extract($_GET);

		$table = "control";

		$obj = json_decode( file_get_contents('php://input') );  
        $objArr = (array)$obj;
		$datas = $db->update($table, ["Estats" => 6], ["AND" => ["CodUsuar" => $id, "Estats[<]" => 3]]);	

		$datas = $db->error();
		$result["data"] = $datas;
		
		if ( $result["data"][0] == 0 ) {
			
			$result["response"] = "ok";

		} else {
			
			$result["response"] = "no-data";

		}

		$resultJson = json_encode($result, JSON_PRETTY_PRINT);

		echo $resultJson;

	}

}