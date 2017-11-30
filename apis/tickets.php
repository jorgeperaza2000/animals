<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {

		

	}

	public function saveData() {

		$client = new socketHttp();

		require '../core/db.php';
		
		$commit = true;
		
		foreach ($_POST as $key => $jugada) {
		    $array = explode("|", $jugada);
		    $jugadaCompleta[$key] = $array;
		}
		$total_monto = 0;
		$id_usuario = null;
		$agencia_usuario = null;

		foreach ($jugadaCompleta as $jugada) {
			$estatusSorteo = $db->get("sorteos", "*", ["id" => $jugada[2]]);
			if ( $estatusSorteo["estatus"] == "0" ) {
				$total_monto = $total_monto + $jugada[4];
				$id_usuario = $jugada[5];
				$agencia_usuario = $jugada[6];

				$validarLimite = $db->get("limites", ["monto_acumulado", "monto_limite"], [
														"numero_apuesta" => $jugada[0],
														"id_sorteo" => $jugada[2]
													 ]);
				if ( $validarLimite["monto_acumulado"] + $jugada[4] > $validarLimite["monto_limite"] ) {
					$commit = false;
					$respuesta[] = [
									"codigoRespuesta" => "montoLimite",
									"numeroApuesta" => $jugada[0],
									"nombreApuesta" => $jugada[1],
									"idSorteo" => $jugada[2],
									"sorteo" => $jugada[3],
									"montoDisponible" => $validarLimite["monto_limite"] - $validarLimite["monto_acumulado"]
								   ];
				}
			} else if ( $estatusSorteo["estatus"] == "1" ) {
				$commit = false;
				$respuesta[] = [
									"codigoRespuesta" => "sorteoCerrado",
									"numeroApuesta" => $jugada[0],
									"nombreApuesta" => $jugada[1],
									"idSorteo" => $jugada[2],
									"sorteo" => $jugada[3],
									"montoDisponible" => 0
								   ];
			}
		}

		if ( $commit ) {
			//ENCABEZADO DEL TICKET
			$semilla = rand(1, 5);
			$total_apuestas = count($jugadaCompleta);

			$db->pdo->beginTransaction();

			$dato = $db->insert("tickets", 
								  [
								  "#fecha" => "NOW()",
								  "#hora" => "NOW()",
								  "#numero_ticket" => "getNumeroTicket('" . $agencia_usuario . "')",
								  "#serial" => "getSerialTicket($semilla)",
								  "total_apuestas" => $total_apuestas,
								  "total_monto" => $total_monto,
								  "id_usuario" => $id_usuario,
								  "agencia" => $agencia_usuario
								  ]
								 );
			$ticket = $db->id();
			$respuesta = [];
			foreach ($jugadaCompleta as $jugada) {
				$ticket_det = $db->insert("ticket_det", 
								 [
								 "id_ticket" => $ticket,
								 "#fecha" => "NOW()",
								 "numero_apuesta" => $jugada[0],
								 "nombre_apuesta" => $jugada[1],
								 "id_sorteo" => $jugada[2],
								 "monto" => $jugada[4],
								 ]);
			}
			
			$db->pdo->commit();
			
			$ticketRes = $db->get("tickets", "*", ["id" => $ticket]);

			$numero_ticket = $ticketRes["numero_ticket"];
			$serial = $ticketRes["serial"];
			$total_apuestas = $ticketRes["total_apuestas"];
			$total_monto = $ticketRes["total_monto"];
			$hora = $ticketRes["hora"];
			$fecha = $ticketRes["fecha"];

			$ticketDetRes = $db->select("ticket_det", "*", ["id_ticket" => $ticket, "ORDER" => "id_sorteo"]);

			foreach ($ticketDetRes as $key => $value) {
				$datos[] = ["nombreApuesta" => $value["id_sorteo"] . "|" . $value["numero_apuesta"] . " " . substr($value["nombre_apuesta"],0, 3), "monto" => $value["monto"]];
			}

			$total_sorteos = array_unique($db->select("ticket_det", "id_sorteo", ["id_ticket" => $ticket]));


			$respuesta[] = [
							"codigoRespuesta" => "ok",
							"numero_ticket"   => $ticketRes["numero_ticket"],
							"serial"          => date("ymd", strtotime($ticketRes["fecha"])) . "77779" . $ticketRes["serial"],
							"total_apuestas"  => $ticketRes["total_apuestas"],
							"total_monto"     => $ticketRes["total_monto"],
							"hora"            => date("h:i:s", strtotime($ticketRes["hora"])),
							"fecha"           => date("d-m-Y", strtotime($ticketRes["fecha"])),
							"total_sorteos"   => count($total_sorteos),
							"datos" => $datos
						   ];
			
			echo json_encode($respuesta);

		} else {
			
			echo json_encode($respuesta);

		}

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}