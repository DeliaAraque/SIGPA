<?php
	require "../../script/verifSesion.php";
	require "../../lib/conexion.php";

	$last = htmlspecialchars($_POST["last"], ENT_QUOTES);

	$sql = "select * from historial where id>'$last' order by id desc";
	$exe = pg_query($sigpa, $sql);

	$nN = 0;

	while($historial = pg_fetch_object($exe)) {
		if(! $nN++)
			echo "$historial->id&&";
?>

<li class="divider"></li>

<li><a>
	<div>
		<strong><?= "$historial->usuario"; ?></strong>
		<span class="pull-right text-muted"><em><?= date("H:i d/m/Y", $historial->id); ?></em></span>
	</div>

	<div>&nbsp;&nbsp;&nbsp;&nbsp;<?= "$historial->descripcion"; ?></div><br/>

	<?php if($_SESSION["nivel"] === "1") echo "<pre>$historial->sql</pre>"; ?>
</a></li>

<?php
	}
?>