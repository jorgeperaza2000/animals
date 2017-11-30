<?php
//echo $_POST["nombre"] . " - " . $_POST["cedula"];
//$array = ["hola", "como"];
//$num = $_POST;
//print_r($_POST);
foreach ($_POST as $key => $jugada) {
    $array = explode("|", $jugada);
    $jugadaCompleta[$key] = $array;
}
//print_r($jugadaCompleta);
foreach ($jugadaCompleta as $jugada) {
    print_r($jugada);
}


//var_dump($array);
/*header('Content-Type: application/xml');
crear(); //Creamos el archivo
    
    function crear(){
        $xml = new DomDocument('1.0', 'UTF-8');
        //$datos[] = $_POST[$num];

       
        $biblioteca = $xml->createElement('biblioteca');
        $biblioteca = $xml->appendChild($biblioteca);
     
        $libro = $xml->createElement('libro');
        $libro = $biblioteca->appendChild($libro);
         
        // Agregar un atributo al libro
        $libro->setAttribute('id', '1001');
     
        $autor = $xml->createElement('autor', $_POST["sn"]);
        $autor = $libro->appendChild($autor);
        
        foreach ($_POST[$num] as $dato) {
            $titulo = $xml->createElement('titulo', $dato);
            $titulo = $libro->appendChild($titulo);
        }

        //$titulo = $xml->createElement('titulo', $_POST["num"]);
        //$titulo = $libro->appendChild($titulo);
     
        $anio = $xml->createElement('anio','1988');
        $anio = $libro->appendChild($anio);
     
        $editorial = $xml->createElement('editorial','Maxico D.F. - Editorial Grijalbo');
        $editorial = $libro->appendChild($editorial);

        
     
        $xml->formatOutput = true;
        $el_xml = $xml->saveXML();
        //$xml->save('staff.xml');
        
        //Mostramos el XML puro
        echo $el_xml;
    }*/
 
?>