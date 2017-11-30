<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {

	}

	public function saveData() {

		$client = new socketHttp();

		require '../core/db.php';
		
		$datos = $db->select("users", "*", ["AND" => ["name" => $_POST["usuario"], "clave" => $_POST["clave"]]]);

		if ( $datos ) {
			$respuesta[] = [
							"codigoRespuesta" => "ok",
							"id" => $datos[0]["id"],
							"usuario" => $datos[0]["name"],
							"agencia" => $datos[0]["agencia"],
							"tipo" => $datos[0]["tipo"]
						   ];
		} else {
			$respuesta[] = [
							"codigoRespuesta" => "error"
						   ];
		}

		echo json_encode($respuesta);

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}