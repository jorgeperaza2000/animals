<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $fecha_desde = null, $fecha_hasta = null, $agencia_usuario = null ) {

		require '../core/db.php';

		$resultados = $db->query("SELECT SUM(venta) venta, SUM(comision) comision, SUM(premios) premios, SUM(total) total FROM vw_reporte_ventas_generales WHERE fecha >= '" . date("Y-m-d", strtotime($fecha_desde)) . "' AND fecha <= '" . date('Y-m-d', strtotime($fecha_hasta)) . "' AND agencia = '" . $agencia_usuario . "'")->fetchAll();
		echo json_encode($resultados);


	}

	public function saveData() {
		
		

	}

	public function updateData( $id = null  ) {

		

	}

	public function deleteData( $id = null  ) {

		

	}
}