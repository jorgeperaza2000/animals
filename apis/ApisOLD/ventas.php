<?php


class Functions {

	public function getDataList( $a, $id = null ) {

		require '../core/db.php';

		$result = array();

		$table = "control";

		extract($_GET);

		if ( !empty( $id ) ) {

			$datas = $db->query("SELECT *, a.Estats EstatsOperacion, DATE_FORMAT(a.FecCreacn, '%d-%m-%Y %h:%i:%s') FecFormat, NomUsuar FROM control a, usuar b WHERE a.CodUsuar = b.CodUsuar AND CodControl = " . $id)->fetchAll();
			$result["data"] = $datas[0];
		} else {
			
			$datas = $db->query("SELECT * FROM " . $table . " WHERE DATE_FORMAT(FecCreacn, '%Y-%m-%d') = CURDATE() ORDER BY CodControl DESC")->fetchAll();
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

		$table = "control";

		$result = array();

		extract($_GET);

		$obj = json_decode( file_get_contents('php://input') );  
        $objArr = (array)$obj;

        $numControl = $db->count($table, "*");
        $numControl = $numControl + 1;



		$datas = $db->insert($table, [
									"NumControl" => $numControl, 
									"CargarPago" => $obj->txtCargarPago,
									"NomClient" => $obj->txtNomClient,
									"NumLocalz" => $obj->txtNumLocalz,
									"Monto" => number_format($obj->txtTotalPago, 2, '.',''),
									"CodUsuar" => $obj->CodUsuar,
									"Extens" => $obj->Extens,
									"Estats" => 0,
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

		extract($_GET);

		$obj = json_decode( file_get_contents('php://input') );  
        $objArr = (array)$obj;
		$datas = $db->update($a, ["fecha" => $obj->fecha, "abono" => $obj->abono], ["id" => $id]);	

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

	public function deleteData( $a, $id = null  ) {

		require '../core/db.php';
		
		$result = array();

		extract($_GET);

		$datas = $db->delete($a, ["id" => $id]);	

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