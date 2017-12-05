<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>MasVen</title>
</head>
<body>
	<form name="frmCargarResultados" method="POST" action="masven.php">
		<input type="text" name="fecha" value="<?=date("Y-m-d")?>">
		<select name="cboSorteoId">
			<option value="1">@10</option>
			<option value="2">@11</option>
			<option value="3">@12</option>
			<option value="4">@1</option>
			<option value="5">@4</option>
			<option value="6">@5</option>
			<option value="7">@6</option>
			<option value="8">@7</option>
		</select>
		<input type="submit" name="Buscar">
	</form>

	<?php 
	if ($_POST){
		require 'core/db.php';

        $masven = $db->select("vw_mas_jugados", "*", [
		                            "fecha" => $_POST["fecha"], 
		                            "id_sorteo" => $_POST["cboSorteoId"]
		                        ]);
    	?>
    	<table width="800" border="1">
			<tr>
				<td>Fecha</td>
				<td>Sorteo</td>
				<td>Numero</td>
				<td>Monto</td>
			</tr>
        <?php
        foreach ($masven as $key => $value) {
        ?>
        	<tr>
				<td><?=$value["fecha"]?></td>
				<td><?=getNombreSorteo($value["id_sorteo"])?></td>
				<td><?=$value["numero_apuesta"]?></td>
				<td><?=$value["monto_apostado"]?></td>
			</tr>
			
        <?php
        }
        ?>
        </table>
    <?php
	}

	function getNombreSorteo($id) {
		$sorteos = [1=>"@10", 2=>"@11",3=>"@12",4=>"@1",5=>"@4",6=>"@5",7=>"@6",8=>"@7"];
		return $sorteos[$id];
	}
	?>
</body>
</html>