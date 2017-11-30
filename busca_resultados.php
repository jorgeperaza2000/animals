<?php
//u702758025_anima
//8zVod8FQfCqu
//CUANDO NO HA SALIDO
//logolottoactivo_d200.png
require 'core/db.php';

//$url="http://animalitos.local/resultados_todos.html";
$url="http://www.lottoactivo.com/resumen";

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
	//echo ($numero=="logolottoactivo")?"No ha Salido". " " . $sorteo . "<br>":$numero . " " . $sorteo . "<br>";

	if ( $numero != "logolottoactivo" ) {
		$resultados = $db->insert("resultados", [
												"#fecha" => "NOW()",
												"id_sorteo" => $sorteo,
												"numero_apuesta" => $numero,
												]);
		print_r($db->error());
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



/*$curl = curl_init("http://animalitos.local/resultados.html");
  curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($curl, CURLOPT_FOLLOWLOCATION, true);
  curl_setopt($curl, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.224 Safari/534.10');
$html = curl_exec($curl);
curl_close($curl);

$oldSetting = libxml_use_internal_errors( true );
libxml_clear_errors();

//Creamos un nuevo DOMDocument
$dom = new DOMDocument();

//Cargamos en él los datos obtenidos con cUrl ($html)
@$dom->loadHTML($html);

preg_match_all('/<img[^>]+>/i',$html, $result); 

$img = [];
foreach( $result as $img_tag)
{
    preg_match_all('/(alt|title|src)=("[^"]*")/i',$img_tag, $img);
}

print_r($img);*/