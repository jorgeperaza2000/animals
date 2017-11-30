<?php
header('Content-Type: application/xml');
  crear(); //Creamos el archivo
//  leer();  //Luego lo leemos
 
  //Para crear el archivo
  function crear(){
    $xml = new DomDocument('1.0', 'UTF-8');
 
    $biblioteca = $xml->createElement('biblioteca');
    $biblioteca = $xml->appendChild($biblioteca);
 
    $libro = $xml->createElement('libro');
    $libro = $biblioteca->appendChild($libro);
     
    // Agregar un atributo al libro
    $libro->setAttribute('id', '1001');
 
    $autor = $xml->createElement('autor','Paulo Coelho');
    $autor = $libro->appendChild($autor);
 
    $titulo = $xml->createElement('titulo','El Alquimista');
    $titulo = $libro->appendChild($titulo);
 
    $anio = $xml->createElement('anio','1988');
    $anio = $libro->appendChild($anio);
 
    $editorial = $xml->createElement('editorial','Maxico D.F. - Editorial Grijalbo');
    $editorial = $libro->appendChild($editorial);

    $libro = $xml->createElement('libro');
    $libro = $biblioteca->appendChild($libro);
     
    // Agregar un atributo al libro
    $libro->setAttribute('id', '1002');
 
    $autor = $xml->createElement('autor','Jorge Peraza');
    $autor = $libro->appendChild($autor);
 
    $titulo = $xml->createElement('titulo','Codigo Fuente');
    $titulo = $libro->appendChild($titulo);
 
    $anio = $xml->createElement('anio','1985');
    $anio = $libro->appendChild($anio);
 
    $editorial = $xml->createElement('editorial','Caracas - VZLA - Editorial Santillana');
    $editorial = $libro->appendChild($editorial);
 
    $xml->formatOutput = true;
    $el_xml = $xml->saveXML();
    $xml->save('staff.xml');
    
    //Mostramos el XML puro
    echo $el_xml;
  }
 
  //Para leerlo
  function leer(){
    echo "<p><b>Ahora mostrandolo con estilo</b></p>";
    $xml = simplexml_load_file('libros.xml');
    $salida ="";
    foreach($xml->libro as $item){
      $salida .=
        "<b>Autor:</b> " . $item->autor . "<br/>".
        "<b>Título:</b> " . $item->titulo . "<br/>".
        "<b>Ano:</b> " . $item->anio . "<br/>".
        "<b>Editorial:</b> " . $item->editorial . "<br/><hr/>";
    }
    echo $salida;
  }
?>