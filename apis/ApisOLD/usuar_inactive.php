<?php

class Functions {

	public function updateData( $a, $id = null  ) {

		require '../core/db.php';

		$result = array();

		extract($_GET);

		$obj = json_decode( file_get_contents('php://input'));  
        $objArr = (array)$obj;

        $datas = $db->update("usuar", 
									[
									"Estats" => 1,
									"#FecModifc" => "NOW()",
									],
									[
									"CodUsuar" => $_GET["id"]
									]);

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