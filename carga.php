<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Cargar</title>
</head>
<body>
	<form name="frmCargarResultados" method="POST" action="carga.php">
		<input type="hidden" name="fecha" value="<?=date("Y-m-d")?>">
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
		<input type="text" name="numero_apuesta">
		<input type="submit" name="Cargar">
	</form>

	<?php 
	if ($_POST){
		require 'core/db.php';

        $cargar = $db->insert("resultados", [
		                            "#fecha" => $_POST["fecha"], 
		                            "id_sorteo" => $_POST["cboSorteoId"],
		                            "numero_apuesta" => $_POST["numero_apuesta"],
		                        ]);
    
        echo "Ok";
	}
	?>
</body>
</html>