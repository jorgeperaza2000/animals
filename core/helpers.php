<?php
namespace Helpers;

class Helpers {


	public function getEstatusOperation( $estats ) {
		
		switch ( $estats ) {

			case 0;
				return "En Espera";
			break;
			case 1;
				return "En Proceso";
			break;
			case 2;
				return "Carga de dato completa";
			break;
			case 3;
				return "Aprobada";
			break;
			case 4;
				return "No Aprobada";
			break;
			case 5;
				return "El cliente colgo";
			break;
			case 6;
				return "Cancelado por el agente";
			break;

		}

	}

}