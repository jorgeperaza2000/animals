<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {



	}

	public function saveData( $post ) {

		$client = new socketHttp();

		require '../core/db.php';

		$anulado = $db->get("tickets", "*", ["AND" => ["numero_ticket" => $_POST["numero_ticket"], "agencia" => $_POST["agencia"], "#fecha" => "CURDATE()"]]);

		if ( !empty($anulado) ) {

			if ( $anulado["estatus"] == 0 ) {

				$id_ticket = $anulado["id"];
					
				$sorteosTicket = $db->query("SELECT DISTINCT id_sorteo FROM ticket_det a WHERE id_ticket = " . $id_ticket)->fetchAll();

				foreach ( $sorteosTicket as $key => $value ) {
				
					$sorteosEnTicket[] = $value["id_sorteo"];
				
				}
				
				$sorteoValido = $db->select("sorteos", "estatus", ["id" => $sorteosEnTicket]);

				if ( in_array("1", $sorteoValido ) ) {
				
					$respuesta[] = ["codigoRespuesta" => "sorteos-cerrados"];
				
				} else {

					$anular = $db->update("tickets", ["estatus" => 1], ["id" => $id_ticket]);
					$anularDet = $db->update("ticket_det", ["estatus" => 3], ["id_ticket" => $id_ticket]);
				
					$respuesta[] = ["codigoRespuesta" => "ok"];
				
				}

			} else {

				$respuesta[] = ["codigoRespuesta" => "ticket-anulado"];

			}

		} else {

			$respuesta[] = ["codigoRespuesta" => "ticket-no-existe"];

		}
		
		echo json_encode($respuesta);

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {



	}
}