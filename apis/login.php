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
							"nombre" => $datos[0]["name"],
							"agencia" => $datos[0]["agencia"],
							"tipo" => $datos[0]["tipo"]
						   ];

			$loginHoy = $db->query("SELECT COUNT(*) login FROM users WHERE DATE_FORMAT(updated_at, '%Y-%m-%d') = DATE_FORMAT(CURDATE(), '%Y-%m-%d') AND agencia = '" . $datos[0]["agencia"] . "'")->fetchAll();
			if ( $loginHoy[0]["login"] > 0 ) {
				$actualizaUltimoLogin = $db->update("users", ["#updated_at" => "NOW()"], ["id" => $datos[0]["id"]]);
			} else {
				$actualizaAcumulados = $db->update("limites", ["monto_acumulado" => 0]);
				$actualizaUltimoLogin = $db->update("users", ["#updated_at" => "NOW()"], ["id" => $datos[0]["id"]]);
			}
			//$abrirSorteos = $db->query("UPDATE sorteos SET estatus = 0 WHERE hora_limite > CURRENT_TIME()");
			//$cerrarSorteos = $db->query("UPDATE sorteos SET estatus = 1 WHERE hora_limite <= CURRENT_TIME()");

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