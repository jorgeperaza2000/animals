<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {

		

	}

	public function saveData( $post ) {

		$client = new socketHttp();

		require '../core/db.php';
		if ( $_POST["opcion"] == "comprobar" ) {
			
			$ticket = $db->get("tickets", "*", ["AND" => ["serial" => $_POST["serial"], "fecha" => date("Y-m-d", strtotime($_POST["fecha"]))]]);

			if ( !empty( $ticket ) ) {

				$pagado = $db->count("ticket_det", "pagado", ["AND" => ["id_ticket" => $ticket["id"], "estatus" => 1, "pagado" => 0]]);

				if ( $pagado > 0 ) {
					
					$premiado = $db->sum("ticket_det", "monto_premiado", ["AND" => ["id_ticket" => $ticket["id"], "estatus" => 1, "pagado" => 0]]);
					if ( $premiado > 0 ) {
						$respuesta[] = [
										"codigoRespuesta" => "ok", 
										"montoPremiado" => $premiado
									   ];
					} else {
						$respuesta[] = ["codigoRespuesta" => "no-premio"];
					}

				} else {
					
					$respuesta[] = ["codigoRespuesta" => "pagado"];

				}
			
			} else {

				$respuesta[] = ["codigoRespuesta" => "ticket-no-existe"];

			}

			echo json_encode($respuesta);

	    } else if ( $_POST["opcion"] == "pagar" ) {

			$ticket = $db->get("tickets", "*", ["AND" => ["serial" => $_POST["serial"], "fecha" => date("Y-m-d", strtotime($_POST["fecha"]))]]);

			$premiado = $db->update("ticket_det", ["pagado" => 1, "#fecha_pagado" => "NOW()"], ["AND" => ["id_ticket" => $ticket["id"], "estatus" => 1, "pagado" => 0]]);

			if ( $premiado ) {
				$respuesta[] = [
								"codigoRespuesta" => "ok"
							   ];
			} else {
				$respuesta[] = [
								"codigoRespuesta" => "error"
							   ];
			}

			echo json_encode($respuesta);

	    }

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}