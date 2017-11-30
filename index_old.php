<?php 

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Animalitos</title>
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css" />
	<link rel="stylesheet" href="css/custom.css" />
	<link rel="stylesheet" href="css/font-awesome.css" />
</head>
<?php 
$animal = [ 
			"0" => "Delfin", "00" => "Ballena",
			"Carnero", "Toro", "Ciempies", "Alacran", "Leon", "Rana", "Perico", "Raton", "Aguila", "Tigre", "Gato", "Caballo",
			"Mono", "Paloma", "Zorro", "Oso", "Pavo", "Burro", "Chivo", "Cochino", "Gallo", "Camello", "Zebra", "Iguana", "Gallina",
			"Vaca", "Perro", "Zamuro", "Elefante", "Caiman", "Lapa", "Ardilla", "Pescado", "Venado", "Jirafa", "Culebra"
		  ];
?>
<body>
	<div class="center">
		
		<div class="col-md-12">
				
			<div class="col-md-10 col-md-push-1">
				<div class="navbar-fixed-bottom col-md-3 text-left" id="total">Total Jugada: <span>Bs 0</span></div>

				<div class="clear"></div>

				<div class="" id="total">Fijar Todos a: 
					<select name="fijarTodos" id="fijarTodos" class="form-control">
						<option value="100">Bs 100</option>
						<option value="200">Bs 200</option>
						<option value="300">Bs 300</option>
						<option value="400">Bs 400</option>
						<option value="500">Bs 500</option>
					</select>		
				</div>
				<?php
				//for ( $i = 1; $i <= 36; $i++ ){
				foreach ($animal as $key => $value) {
					if ( ( $key == "0" ) || ( $key == "00" ) ) {
				?>
						<div class="col-md-6 animal">
							<input type="checkbox" name="rdoAnimal<?=$key?>" data="<?=$key?>" class="checkbox-inline">
							<?=$key . " " . $value?>
							<select name="animal<?=$key?>" id="<?=$key?>" class="input-sm" hidden>
								<option value="100">Bs 100</option>
								<option value="200">Bs 200</option>
								<option value="300">Bs 300</option>
								<option value="400">Bs 400</option>
								<option value="500">Bs 500</option>
							</select>		
						</div>
				<?php
					} else {
				?>
					<div class="col-md-4 animal">
						<input type="checkbox" name="rdoAnimal<?=$key?>" data="<?=$key?>" class="checkbox-inline">
						<?=$key . " " . $value?>
						<select name="animal<?=$key?>" id="<?=$key?>" class="input-sm" hidden>
							<option value="100">Bs 100</option>
							<option value="200">Bs 200</option>
							<option value="300">Bs 300</option>
							<option value="400">Bs 400</option>
							<option value="500">Bs 500</option>
						</select>		
					</div>
				<?php
					}
				}
				?>

			</div>
		</div>
		
	</div>
	
</body>
</html>

<script type="text/javascript">
	$(document).ready(function(){
		var $_nameCheck;
		$("input:checkbox").on("change", function(){
			$_dataCheck = $(this).attr("data");
			$("#" + $_dataCheck).toggle();

			calculaTotal();
		});

		$(".input-sm").on("change", function(){
			calculaTotal();
		});

		$("#fijarTodos").on("change", function(){
			$(".input-sm:visible").val($(this).val());
			$(".input-sm:visible").change();
		});
		
	});

	function calculaTotal(){
		var $_total = 0;
		$(".input-sm:visible").each(function(){
			$_total = parseInt($_total) + parseInt($(this).val());
		});
		//alert($_total);
		$("#total span").html("Bs " + $_total);
	}
</script>