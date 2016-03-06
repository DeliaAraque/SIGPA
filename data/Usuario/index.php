<?php
	require "../../script/verifSesion.php";
?>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Usuarios</h1>
	</div>
</div>

<div class="row">
	<div class="col-lg-12">
		<div class="dataTable_wrapper">
			<table class="table table-striped table-bordered table-hover dataTable">
				<thead>
					<tr>
						<th>Nivel</th>
						<th>Nombre</th>
						<th>Cédula</th>
						<th>Último ingreso</th>
					</tr>
				</thead>

				<tbody>

<?php
	require "../../lib/conexion.php";

	$nivel[1] = "Administrador";
	$nivel[2] = "Vicerrectorado";
	$nivel[3] = "Coordinador";
	$nivel[4] = "Profesor";

	$sql = "
		select usu.cedula as cedula, usu.ingreso as ingreso, usu.nivel as nivel, per.nombre as nombre, per.apellido as apellido
		from usuario as usu 
			join persona as per on per.cedula = usu.cedula
		order by usu.nivel, per.apellido, per.nombre
	";
	$exe = pg_query($sigpa, $sql);

	while($usuario = pg_fetch_object($exe)) {
?>

					<tr>
						<td><?= $nivel[$usuario->nivel]; ?></td>
						<td><?= "$usuario->apellido $usuario->nombre"; ?></td>
						<td><?= $usuario->cedula; ?></td>
						<td><div class="row">
							<div class="col-xs-8 col-sm-9 col-md-9 col-lg-9">

<?php
		$usuario->ingreso = explode("-", $usuario->ingreso);
		$usuario->ingreso = $usuario->ingreso[2] . "/" . $usuario->ingreso[1] . "/" . $usuario->ingreso[0];
?>

								<?= $usuario->ingreso; ?>
							</div>

							<div class="col-xs-4 col-sm-3 col-md-3 col-lg-3 text-center">

								<i class="fa fa-refresh fa-fw editar" title="Reestablecer datos" onClick="sendReq('data/Usuario/restablecer.php', 'cedula=<?= $usuario->cedula; ?>')"></i>

<?php
		$sql = "select cedula from profesor where cedula = '$usuario->cedula'";
		$exe2 = pg_query($sigpa, $sql);
		$profesor = pg_fetch_object($exe2);

		if(($usuario->nivel == 3) || ($usuario->nivel == 4) || ($profesor->cedula))
			echo "<i class=\"fa fa-search fa-fw consultar\" title=\"Datos de profesor\" onClick=\"moreInfo('moduloPlanificacion/Profesor/consultar.php', 'cedula=$usuario->cedula')\"></i>";

		if(($usuario->nivel == 2) && ($profesor->cedula))
			echo "<i class=\"fa fa-arrow-down fa-fw editar\" onClick=\"if(confirm('¿Realmente desea degradar a $usuario->apellido $usuario->nombre ($usuario->cedula)?')) sendReq('data/Usuario/degradar.php', 'cedula=$usuario->cedula', 'data/Usuario/index.php')\" title=\"Degradar a profesor\"></i>";

		if($usuario->nivel == 4)
			echo "<i class=\"fa fa-arrow-up fa-fw editar\" onClick=\"if(confirm('¿Realmente desea promover a $usuario->apellido $usuario->nombre ($usuario->cedula)?')) sendReq('data/Usuario/promover.php', 'cedula=$usuario->cedula', 'data/Usuario/index.php')\" title=\"Promover a vicerrectorado\"></i>";

		if(! $profesor->cedula)
			echo "<i class=\"fa fa-trash-o fa-fw eliminar\" onClick=\"if(confirm('¿Realmente desea eliminar a $usuario->apellido $usuario->nombre ($usuario->cedula)?')) sendReq('../../script/eliminar.php', 'tabla=persona&campo=cedula&valor=$usuario->cedula', 'data/Usuario/index.php')\" title=\"Eliminar\"></i>";
?>

							</div>
						</div></td>
					</tr>

<?php
	}
?>

				</tbody>

				<tfoot>
					<tr>
						<td class="text-center" colspan="4" title="Nuevo usuario" onClick="embem('data/Usuario/form.php', '#page-wrapper')" style="cursor: pointer"><i class="fa fa-plus fa-fw editar"></i></td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</div>