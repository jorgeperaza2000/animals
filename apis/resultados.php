<?php

require '../core/autoloader.php';
use socketHttp\socketHttp;

class Functions {

	public function getDataList( $id = null ) {

		require '../core/db.php';

		/*$url="http://www.lottoactivo.com/resumen";

		$html = file_get_contents($url);

		$doc = new DOMDocument();
		@$doc->loadHTML($html);

		$tags = $doc->getElementsByTagName('img');

		foreach ($tags as $tag) {
			$src = $tag->getAttribute('src');
			$alt = $tag->getAttribute('alt');

			$partSorteo = explode(":", $alt);
			$sorteo = convertirSorteo($partSorteo[0]);

			$part = explode("/", $src);
			$numero = str_replace("_d200.png", "", $part[7]);

			if ( $numero != "logolottoactivo" ) {
				$resultados = $db->insert("resultados", [
														"#fecha" => "NOW()",
														"id_sorteo" => $sorteo,
														"numero_apuesta" => $numero,
														]);
				//print_r($db->error());
			}

		}*/

		$resultados = $db->select("vw_resultados", "*", ["fecha" => date("Y-m-d", strtotime($id))]);
		echo json_encode($resultados);


	}

}

function convertirSorteo( $sorteo = null ) {
	switch ($sorteo) {
		case '10':
			return 1;
			break;
		case '11':
			return 2;
			break;
		case '12':
			return 3;
			break;
		case '1':
			return 4;
			break;
		case '4':
			return 5;
			break;
		case '5':
			return 6;
			break;
		case '6':
			return 7;
			break;
		case '7':
			return 8;
			break;
		
		default:
			# code...
			break;
	}

}