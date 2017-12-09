<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Cargar</title>
</head>
<body>
	<?php 
	require 'core/db.php';
	$sorteos = $db->get("sorteos", "*", ["estatus" => 1, "ORDER" => ["orden" => "DESC"]]);
	$sorteo[] = $sorteos;
	?>
	<form name="frmCargarResultados" method="POST" action="carga.php">
		<input type="hidden" name="fecha" value="<?=date("Y-m-d")?>">
		<select name="cboSorteoId">
			<?php 
			foreach ($sorteo as $key => $value) {
				echo '<option value="'.$value["id"].'">'.$value["codigo"].'</option>';
			}
			?>
		</select>
		<input type="text" name="numero_apuesta">
		<input type="submit" name="Cargar">
	</form>

	<?php 
	if ($_POST){
        $cargar = $db->insert("resultados", [
		                            "#fecha" => $_POST["fecha"], 
		                            "id_sorteo" => $_POST["cboSorteoId"],
		                            "numero_apuesta" => $_POST["numero_apuesta"],
		                        ]);
	}
	?>
	<table border="1" width="500">
		<tr>
			<td>Sorteo</td>
			<td>Resultado</td>
		</tr>
		<?php
		$resultados = $db->select("resultados", "*", ["#fecha" => "CURDATE()"]);
		foreach ($resultados as $key => $value) {
		?>
			<tr>
				<td><?=$value["id_sorteo"]?></td>
				<td><?=$value["numero_apuesta"]?></td>
			</tr>
		<?php
		}
		?>
	</table>
</body>
</html>