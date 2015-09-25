<?php
	require "../../script/verifSesion.php";
	require "../../lib/conexion.php";
?>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Registro de actividades</h1>
	</div>
</div>

<?php
	$sql = "select * from historial order by id desc";
	$exe = pg_query($sigpa, $sql);

	$nN = 0;

	while($historial = pg_fetch_object($exe)) {
		if(! $nN++)
			$last = $historial->id;
?>

<div class="row"><div class="col-lg-12">
	<div class="logElement">
		<div>
			<strong><?= "$historial->usuario"; ?></strong>
			<span class="pull-right text-muted"><em><?= date("H:i d/m/Y", $historial->id); ?></em></span>
		</div>

		<div>&nbsp;&nbsp;&nbsp;&nbsp;<?= "$historial->descripcion"; ?></div><br/>

		<?php if($_SESSION["nivel"] === "1") echo "<pre>$historial->sql</pre>"; ?>
	</div>
</div></div>

<?php
	}
?>