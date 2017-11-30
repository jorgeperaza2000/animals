<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null, $fecha = null ) {

		require '../core/db.php';

		$datos = null;

        $sorteos = $db->query("SELECT DISTINCT a.id_sorteo, c.sorteo, a.id_ticket FROM ticket_det a, tickets b, sorteos c WHERE a.id_ticket = b.id AND a.id_sorteo = c.id AND b.fecha = '" . date("Y-m-d", strtotime($fecha)) . "' AND b.numero_ticket = " . $id . " ORDER BY a.id_sorteo" )->fetchAll();

        if ( !empty($sorteos) ) {
        
	        foreach ($sorteos as $key => $value) {
	        	$id_ticket = $value["id_ticket"];
	            $data["sorteos"][] = [
	                                    "id_sorteo" => $value["id_sorteo"],
	                                    "sorteo" => $value["sorteo"],
	                                  ];
	        }
	        
	        $ticket_det = $db->select("ticket_det", ["numero_apuesta", "id_sorteo", "monto"], ["id_ticket" => $id_ticket, "ORDER" => ["id_sorteo", "numero_apuesta"]]);
	        $data["ticket_det"] = $ticket_det;
	        $datos[] = $data;
	    }
        echo json_encode($datos);

	}

	public function saveData() {
		
		

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}