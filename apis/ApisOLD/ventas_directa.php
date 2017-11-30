<?php


class Functions {

	public function saveData( $a ) {
		
		require '../core/db.php';

		$table = "control";

		$result = array();

		extract($_GET);

		$obj = json_decode( file_get_contents('php://input') );  
        $objArr = (array)$obj;

        $numControl = $db->count($table, "*");
        $numControl = $numControl + 1;



		$datas = $db->insert($table, [
									"NumControl" => $numControl, 
									"CargarPago" => $obj->txtCargarPago,
									"NomClient" => $obj->txtNomClient,
									"NumLocalz" => $obj->txtNumLocalz,
									"Monto" => number_format($obj->txtTotalPago, 2, '.',''),
									"CodUsuar" => $obj->CodUsuar,
									"Extens" => $obj->Extens,
									"NumTarjet" => $obj->txtNumTarjet,
									"Nacion" => $obj->txtNacion,
									"CedIdentd" => $obj->txtCedIdentd,
									"CodSegurd" => $obj->txtCodSegurd,
									"FecVencim" => $obj->txtFecVencim,
									"Estats" => 0,
									"#FecCreacn" => "NOW()"
								 ]);
		$result["data"] = $datas;


		$data = $db->get("control", "*", ["NumControl" => $numControl]);
		//print_r($data);
		$numTarjet = "&pan=" . $data["NumTarjet"];
		$codSeguridad = "&cvv2=" . $data["CodSegurd"];
		$nacion = ($data["Nacion"] == 1)?"V":"E";
		$cedulaIdentidad = "&cid=" . $nacion.$data["CedIdentd"];
		$fecVencim = "&expdate=" . $data["FecVencim"];	
		if ( strlen ( $data["FecVencim"] ) == 3 ) {
			$fecVencim = "&expdate=0" . $data["FecVencim"];
		}
		$monto = "&amount=" . $data["Monto"];
		$cliente = "&client=" . str_replace(' ', '%20', $data["NomClient"]);
		$factura = "&factura=" . $data["NumControl"];


		if ( $data["CargarPago"] == "Aserca") {
			$string = "https://e-payment.megasoft.com.ve/payment/action/procesar-compra?cod_afiliacion=75035593&transcode=0141".$numTarjet.$codSeguridad.$cedulaIdentidad.$fecVencim.$monto.$cliente.$factura."&mode=4";	
		} else if ( $data["CargarPago"] == "SBAirlines") {
			$string = "https://e-payment.megasoft.com.ve/payment/action/procesar-compra?cod_afiliacion=71401421&transcode=0141".$numTarjet.$codSeguridad.$cedulaIdentidad.$fecVencim.$monto.$cliente.$factura."&mode=4";	
		}
		//$string = file_get_contents($strUrl);
		//echo $string;
		$curl = curl_init($string);
		curl_setopt($curl, CURLOPT_FAILONERROR, true);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
		$respuesta = curl_exec($curl);
		$http_status = curl_getinfo($curl, CURLINFO_HTTP_CODE);
		$curl_errno = curl_errno($curl);

		$xml = $data["NumControl"].'.xml';

		if ( file_exists($xml) ){
			unlink($xml);	
		}

		//$fp = fopen("/var/www/html/ring/xml/" . $xml, "a");
		$fp = fopen("../xml/" . $xml, "a");
		fputs ($fp, $respuesta);
		fclose ($fp);

		$resultadoXML = new SimpleXMLElement($respuesta);

		$estatus = ( $resultadoXML->authid->__toString() == "" ) ? 4 : 3; //3 Aprobado 4 No Aprobado

		$descripcion = $resultadoXML->descripcion->__toString();

		$authid = $resultadoXML->authid->__toString();

		$data = $db->update("control", [
											"EstatsRespus" => $descripcion, 
											"NumAutorz" => $authid, 
											"Estats" => $estatus
										], 
										[
											"NumControl" => $numControl
										]
							);


		if ( !empty( $result["data"] ) ) {
			
			$result["response"] = "ok";

		} else {
			
			$result["response"] = "no-data";

		}

		$resultJson = json_encode($result, JSON_PRETTY_PRINT);

		echo $resultJson;

	}

}