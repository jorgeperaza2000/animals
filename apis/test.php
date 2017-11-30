<?php 
require '../core/db.php';

//$a = array_unique($db->select("ticket_det", "id_sorteo", ["id_ticket" => 16]));
$ticketDetRes = $db->select("ticket_det", "*", ["id_ticket" => 47, "ORDER" => "id_sorteo"]);

foreach ($ticketDetRes as $key => $value) {
	$datos[] = ["nombreApuesta" => $value["id_sorteo"] . "|" . $value["numero_apuesta"] . " " . substr($value["nombre_apuesta"],0, 3), "monto" => $value["monto"]];
}

$bla = [
											[
											"nombreApuesta" => "02 Tor", 
											"monto" => "2.000"
										   	],
										   	[
											"nombreApuesta" => "03 Cie", 
											"monto" => "2.500"
										   	],
										   	[
											"nombreApuesta" => "04 Ala", 
											"monto" => "1.500"
										   	]
									   ];
//print_r($bla);

print_r($datos);

//$premiado = $db->sum("ticket_det", ["monto_premiado", "id"], ["AND" => ["id_ticket" => 1, "estatus" => 1]]);

/*$sorteosTicket = $db->query("SELECT DISTINCT id_sorteo FROM ticket_det a WHERE id_ticket = 2")->fetchAll();

foreach ($sorteosTicket as $key => $value) {
	$sorteosEnTicket[] = $value["id_sorteo"];
}
$sorteoValido = $db->select("sorteos", "estatus", ["id" => $sorteosEnTicket]);

if ( in_array("1", $sorteoValido ) ) {
	echo "algun sorteo cerro";
} else {
	echo "No hay sorteos cerrados";
}*/
/*
if ( $premiado[0]["diferencia"] < 15 ) {
	echo "Puede anularse";
} else {
	echo "No puede anularse";
}*/

//print_r($premiado);

?>