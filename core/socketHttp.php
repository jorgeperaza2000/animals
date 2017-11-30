<?php
namespace socketHttp;

class socketHttp {

	public function __construct() {
		$this->production = false;

		if ( $this->production == true ) {
			$this->urlBase = "http://192.168.253.11/etcc2.0/apis/";
		} else {
			$this->urlBase = "http://localhost/etcc2.0/apis/";	
		}

	}
	
	
	//public $urlBase = "http://localhost:8080/DataAccessAPI/dataapi/";
	public function socketGet( $url = null ){

		$url = $this->urlBase . $url;
		$client = new \GuzzleHttp\Client();
		$request = $client->request('GET', $url, [
		    'headers' => [
		        'Accept'     => 'application/json',

		    ]
		]);
		return $request->getBody();	

	}

	public function socketPost( $url = null, $body = null ){

		$url = $this->urlBase . $url;
		$client = new \GuzzleHttp\Client();
		$request = $client->request('POST', $url, [
												    'headers' => [
															        'Accept'     => 'application/json',
															        'Content-Type' => 'application/json',
															  	],
													'body' => $body
												  ]
								  );
		return $request->getBody();	

	}

	public function socketPut( $url = null, $body = null ){

		$url = $this->urlBase . $url;
		$client = new \GuzzleHttp\Client();
		$request = $client->request('PUT', $url, [
												    'headers' => [
															        'Accept'     => 'application/json',
															        'Content-Type' => 'application/json',
															  	],
													'body' => $body
												  ]
								  );
		return $request->getBody();	

	}

	public function socketDelete( $url = null, $body = null ){

		$url = $this->urlBase . $url;
		$client = new \GuzzleHttp\Client();
		$request = $client->request('DELETE', $url, [
												    'headers' => [
															        'Accept'     => 'application/json',
															        'Content-Type' => 'application/json',
															  	],
													'body' => $body
												  ]
								  );
		return $request->getBody();	

	}
	
	

}