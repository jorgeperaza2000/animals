<?php
$datetime1 = new DateTime("21/11/2017 9:59:27");
$datetime2 = new DateTime("21/11/2017 13:33:32");
$interval = $datetime1->diff($datetime2);
echo $interval->format('%H horas %i minutos %s segundos');
?>