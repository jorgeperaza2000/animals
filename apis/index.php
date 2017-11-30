<?php
session_start();
require_once $_GET["a"] . ".php";
//echo "Hola";
$api = new API();
$api->apiFunctions();

class API {

	public function apiFunctions(){

	    header('Content-Type: application/json');

	    $method = $_SERVER['REQUEST_METHOD'];
	    $a = $_GET["a"];
		$id = isset($_GET["id"])?$_GET["id"]:null;
		$param1 = isset($_GET["param1"])?$_GET["param1"]:null;
		$param2 = isset($_GET["param2"])?$_GET["param2"]:null;
		$func = new Functions();

	    switch ( $method ) {
		    case 'GET'://consulta

		    	$func->getDataList( $id, $param1, $param2 );
		        break;   

		    case 'POST'://inserta
		    	
		        $func->saveData( $_POST );
		        break;     

		    case 'PUT'://actualiza
		        
		        $func->updateData( $id );
		        break;      
		    case 'DELETE'://elimina
		        $func->deleteData( $id );
		        break;
		    default://metodo NO soportado
		        echo 'METODO NO SOPORTADO';
		        break;
	    }
	    
	}
	
}
?>