<?php

class Functions {

	public function getDataList( $a, $id = null ) {

		require '../core/db.php';

		$result = array();

		extract($_GET);

		if ( !empty( $id ) ) {

			$datas = $db->get($a, "*", ["CodUsuar" => $id]);	

		} else {

			$datas = $db->select($a, "*", ["ORDER" => ["LogUsuar" => "DESC"]]);

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

	public function saveData( $a, $id = null  ) {

		require '../core/db.php';

		$result = array();

		extract($_GET);

		$obj = json_decode( file_get_contents('php://input'));  
        $objArr = (array)$obj;

        $datas = $db->insert($a, 
									[
									"NomUsuar" => $obj->NomUsuar,
									"LogUsuar" => $obj->LogUsuar,
									"PasUsuar" => base64_encode($obj->PasUsuar),
									"IpAdress" => $obj->IpAdress,
									"Extens" => $obj->Extens,
									"Tipo" => $obj->Tipo,
									"Estats" => 0,
									"PrimerCambio" => 1,
									"CodUsuarCreacn" => $_GET["id"],
									"#FecCreacn" => "NOW()",
									"#FecModifc" => "NOW()",
									]);

		$datas2 = $db->error();
		$result["dataError"] = $datas2;
		$result["data"] = $datas;
		
		if ( $result["dataError"][0] == 0 ) {
			
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

		$obj = json_decode( file_get_contents('php://input'));  
        $objArr = (array)$obj;

        if ( $obj->PasUsuar == "" ) {
        	$datas = $db->update($a, 
									[
									"NomUsuar" => $obj->NomUsuar,
									"LogUsuar" => $obj->LogUsuar,
									"IpAdress" => $obj->IpAdress,
									"Extens" => $obj->Extens,
									"Tipo" => $obj->Tipo,
									"#FecModifc" => "NOW()",
									],
									[
									"CodUsuar" => $_GET["id"]
									]);
        } else {
        	$datas = $db->update($a, 
									[
									"NomUsuar" => $obj->NomUsuar,
									"LogUsuar" => $obj->LogUsuar,
									"PasUsuar" => base64_encode($obj->PasUsuar),
									"IpAdress" => $obj->IpAdress,
									"Extens" => $obj->Extens,
									"Tipo" => $obj->Tipo,
									"#FecModifc" => "NOW()",
									],
									[
									"CodUsuar" => $_GET["id"]
									]);
        }


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