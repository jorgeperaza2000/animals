<?php


class Functions {

	public function getDataList( $a, $id = null ) {

		require '../core/db.php';

		$result = array();

		$table = "host";

		extract($_GET);

		if ( !empty( $id ) ) {

			$datas = $db->select($table, "*", ["CodHost" => $id]);
			$result["data"] = $datas[0];
		} else {
			
			$datas = $db->select($table, "*", ["ORDER" => ["Extens" => "DESC"]]);
			$result["data"] = $datas;
		}
		
		if ( !empty( $result["data"] ) ) {
			
			$result["response"] = "ok";

		} else {
			
			$result["response"] = "no-data";

		}

		$resultJson = json_encode($result, JSON_PRETTY_PRINT);

		echo $resultJson;

	}

	public function saveData( $a ) {
		
		require '../core/db.php';

		$table = "host";

		$result = array();

		extract($_GET);

		$obj = json_decode( file_get_contents('php://input') );  
        $objArr = (array)$obj;

        $datas = $db->insert($table, [
									"Extens" => $obj->txtExtens, 
									"CodUsuar" => $obj->CodUsuar,
									"#FecCreacn" => "NOW()"
								 ]);
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

		$table = "host";

		extract($_GET);

		$obj = json_decode( file_get_contents('php://input') );  
        $objArr = (array)$obj;

		$datas = $db->update($table, ["Extens" => $obj->txtExtens], ["CodHost" => $id]);	

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