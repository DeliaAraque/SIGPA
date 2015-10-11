<?php
	require "../../script/verifSesion.php";
?>

<table class="table">

<?php
	$archivos = scandir("Respaldos/", true); // true para invertir el orden de la consulta
	$n = 0;

	if($archivos) {
		for($i = 0; $i < count($archivos); ++$i) {
			if(($archivos[$i] != ".") && ($archivos[$i] != "..")) {
?>

	<tr>
		<td><div class="row">
			<div class="col-xs-8 col-sm-9 col-md-9 col-lg-9">
				<?= $archivos[$i]; ?>
			</div>

			<div class="col-xs-4 col-sm-3 col-md-3 col-lg-3 text-center">
				<i class="fa fa-upload fa-fw bien" title="Restaurar" onClick="if(confirm('¿Realmente desea restaurar <?= $archivos[$i]; ?>?')) { sendReq('data/Configuracion/restaurar.php', 'archivo=<?= $archivos[$i]; ?>'); embem('data/Configuracion/respaldos.php', '#respaldos'); }"></i>
				<i class="fa fa-trash-o fa-fw eliminar" onClick="if(confirm('¿Realmente desea eliminar <?= $archivos[$i]; ?>?')) { sendReq('data/Configuracion/eliminar.php', 'archivo=<?= $archivos[$i]; ?>'); embem('data/Configuracion/respaldos.php', '#respaldos'); }" title="Eliminar"></i>
			</div>
		</div></td>
	</tr>

<?php
				++$n;
			}
		}

		if(! $n) {
?>

			<tr>
				<td>No hay archivos de respaldo</td>
			</tr>

<?php
		}
	}

	else {
?>

	<tr>
		<td>No hay archivos de respaldo</td>
	</tr>

<?php
	}
?>

<tfoot>
	<tr>
		<td class="text-center" title="Respaldar" onClick="if(confirm('¿Realmente desea crear un respaldo?')) { sendReq('data/Configuracion/respaldar.php'); embem('data/Configuracion/respaldos.php', '#respaldos'); }" style="cursor: pointer"><i class="fa fa-floppy-o fa-fw agregar"></i></td>
	</tr>
</tfoot>

</table>