<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null, $tipo = null, $agencia_usuario = null ) {

		require '../core/db.php';

		$resultados = null;

		switch ( $tipo ) {
			case 'Vendidos':
				$resultados = $db->select("vw_reporte_ticket_gral", "*", ["AND" => ["fecha" => date("d-m-Y", strtotime($id)), "estatusTicket" => "Activo", "agencia" => $agencia_usuario], "ORDER" => "id"]);
				break;
			case 'Ganadores':
				$resultados = $db->select("vw_reporte_ticket_gral", "*", ["AND" => ["fecha" => date("d-m-Y", strtotime($id)), "estatus" => ["Pago Parcial", "Ganador Por Pagar", "Pagado"], "agencia" => $agencia_usuario], "ORDER" => "id"]);
				break;
			case 'GanadoresPorPagar':
				$resultados = $db->select("vw_reporte_ticket_gral", "*", ["AND" => ["fecha" => date("d-m-Y", strtotime($id)), "estatus" => ["Ganador Por Pagar"], "agencia" => $agencia_usuario], "ORDER" => "id"]);
				break;
			case 'GanadoresPagados':
				$resultados = $db->select("vw_reporte_ticket_gral", "*", ["AND" => ["fecha" => date("d-m-Y", strtotime($id)), "estatus" => ["Pago Parcial", "Pagado"], "agencia" => $agencia_usuario], "ORDER" => "id"]);
				break;
			case 'Anulados':
				$resultados = $db->select("vw_reporte_ticket_gral", "*", ["AND" => ["fecha" => date("d-m-Y", strtotime($id)), "estatusTicket" => "Anulado", "agencia" => $agencia_usuario], "ORDER" => "id"]);
				break;
			default:
				# code...
				break;
		}

		echo json_encode($resultados);


	}

	public function saveData() {
		
		

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}