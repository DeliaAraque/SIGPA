<?php
	require "conexion.php";
?>

<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">

	<!-- Menú superior -->

	<div class="navbar-header">

		<!-- Botón menú responsive -->

		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>

		<!-- Fin botón menú responsive -->

		<!-- Logo principal -->

		<a class="navbar-brand" style="font-size: 1.5em;" href="."><img src="css/img/iconoBlanco.png" style="height: 1.5em; width: 1.5em; display: inline;" /> SIGPA</a>

		<!-- Fin logo principal -->

	</div>

		<!-- Botones del menú superior -->

	<ul class="nav navbar-top-links navbar-right" id="top-menu">

			<!-- Registro de actividades -->

<?php
	if($_SESSION["nivel"] < 3) {
?>

		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="Registro de actividades" onClick="this.querySelector('#notification').style.display='none'">
				<i class="fa fa-th-list fa-fw"></i> <i class="fa fa-caret-down"></i>
				<i id="notification" class="fa fa-exclamation-circle fa-fw"></i>
				<audio src="css/notification.mp3"></audio>
			</a>

				<!-- Elementos del registro -->

			<ul id="historial" class="dropdown-menu" style="width: 30em;">
				<li><a class="text-center" href="javascript: embem('data/Registro/index.php', '#page-wrapper')"><strong>Ver el registro completo</strong></a></li>

<?php
	$sql = "select * from historial order by id desc limit 5";
	$exe = pg_query($sigpa, $sql);

	$nN = 0;

	while($historial = pg_fetch_object($exe)) {
		if(! $nN++)
			$last = $historial->id;
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

	echo "<input type=\"hidden\" id=\"lastNoti\" value=\"$last\" />";
?>
			</ul>

				<!-- Fin elementos del registro -->

		</li>

<?php
	}
?>

			<!-- Fin registro de actividades -->

			<!-- Periodos de planificación -->

<?php
	if($_SESSION["nivel"] < 4) {
?>

		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="Periodos de planificación">
				<i class="fa fa-calendar fa-fw"></i> <i class="fa fa-caret-down"></i>
			</a>

			<ul class="dropdown-menu" style="width: 25em;">
				

<?php
	if($_SESSION["nivel"] < 3) {
?>

				<li><a class="text-center" href="javascript: embem('moduloPlanificacion/Periodo/index.php', '#page-wrapper')"><strong>Ver periodos de planificación</strong></a></li>

<?php
	}
?>

				<!-- Periodos -->

<?php
	$sql = "
		select p.id as id, p.\"fechaInicio\" as \"fechaInicio\", p.\"fechaFin\" as \"fechaFin\", c.id as \"idCarrera\", c.nombre as carrera, s.id as \"idSede\", s.nombre as sede, e.nombre as estructura, p.\"fechaFin\"-p.\"fechaInicio\"+1 as \"diasTotal\", p.\"fechaFin\"-current_date+1 as \"diasRestantes\" 
		from periodo as p 
			join \"estructuraCS\" as ecs on ecs.id=p.\"idECS\" 
			join estructura as e on e.id=ecs.\"idEstructura\" 
			join \"carreraSede\" as cs on cs.id=ecs.\"idCS\" 
			join carrera as c on c.id=cs.\"idCarrera\" 
			join sede as s on s.id=cs.\"idSede\" 
		where p.tipo='p' and p.\"fechaInicio\"<=current_date and p.\"fechaFin\">=current_date
	"
	. (($_SESSION["nivel"] == 3) ? " and c.id ='$_SESSION[carreraCoord]' and s.id ='$_SESSION[sedeCoord]' " : "") .

	"
		order by p.\"fechaInicio\" desc, p.\"fechaFin\" desc, p.id, c.nombre, s.nombre, e.nombre
	";
	$exe = pg_query($sigpa, $sql);

	while($periodo = pg_fetch_object($exe)) {
		$porcentaje = 100 - $periodo->diasRestantes * 100 / $periodo->diasTotal;

		if(! $porcentaje)
			$porcentaje = 1;
?>

				<li class="divider"></li>

				<li><a>
					<div>
						<p>
							<strong><?= "$periodo->id, $periodo->carrera - $periodo->sede ($periodo->estructura)"; ?></strong>
							<span class="pull-right text-muted"><?php $fecha = explode("-", $periodo->fechaFin); echo "$fecha[2]/$fecha[1]/$fecha[0]"; ?></span>
						</p>

						<div class="progress progress-striped active">
							<div class="progress-bar" role="progressbar" aria-valuenow="<?= $porcentaje; ?>" aria-valuemin="0" aria-valuemax="100" style="width: <?= $porcentaje; ?>%">
								<?= "$periodo->diasRestantes " . (($periodo->diasRestantes == "1") ? "día" : "días"); ?>
							</div>
						</div>
					</div>
				</a></li>

<?php
	}
?>

				<!-- Fin periodos -->
			</ul>
		</li>

<?php
	}
?>

			<!-- Fin periodos de planificación -->

			<!-- Usuario -->

		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="Panel de usuario">
				<i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
			</a>

			<ul class="dropdown-menu" style="width: 15em;">
				<li><a>
					<i class="fa fa-user fa-fw" style="float: left;"></i> 
					<span style="display: inline-block; margin-left: 0.3em;"><?= $_SESSION["cedula"]; ?><br><?= $_SESSION["nombre"]; ?><br/><?= $_SESSION["apellido"]; ?></span>
				</a></li>

<?php
	if($_SESSION["nivel"] < 3) {
?>

				<li><a href="javascript: embem('data/Configuracion/index.html', '#page-wrapper')"><i class="fa fa-gear fa-fw"></i> Configuración</a></li>

<?php
	}

	else if($_SESSION["nivel"] == 3) {
?>

				<li><a href="javascript: embem('data/Configuracion/misDatos.php', '#page-wrapper')"><i class="fa fa-gear fa-fw"></i> Mis datos</a></li>

<?php
	}
?>
				<li class="divider"></li>

				<li><a href="script/cerrar.php"><i class="fa fa-sign-out fa-fw"></i> Cerrar sesión</a></li>
			</ul>

		</li>

			<!-- Fin usuario -->

	</ul>

		<!-- Fin botones del menú superior -->

	<!-- Fin menú superior -->

	<!-- Menú principal -->

	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">

		<!-- Búsqueda -->
		<!--
				<li class="sidebar-search">
					<form name="buscar" action="script/buscar.php" role="search">
						<div class="input-group custom-search-form">
							<input type="search" class="form-control" placeholder="Buscar...">

							<span class="input-group-btn">
								<button class="btn btn-default" onClick="embem('script/buscar.php', '#page-wrapper', getForm(this))" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
				</li>
		-->
		<!-- Fin búsqueda -->

		<!-- Elementos del menú -->

<?php
	switch($_SESSION["nivel"]) {
		case "1":
		case "2":
?>

				<li><a href="javascript: embem('moduloPlanificacion/Sede/index.php', '#page-wrapper')"><i class="fa fa-map-marker fa-fw"></i> Sedes</a></li>

				<li>
					<a href="#"><i class="fa fa-users fa-fw"></i> Profesores<span class="fa arrow"></span></a>

					<ul class="nav nav-second-level">
						<li><a href="javascript: embem('moduloPlanificacion/Categoria/index.php', '#page-wrapper')"><i class="fa fa-check-square-o fa-fw"></i> Categorías</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Condicion/index.php', '#page-wrapper')"><i class="fa fa-check-square-o fa-fw"></i> Condiciones</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Dedicacion/index.php', '#page-wrapper')"><i class="fa fa-check-square-o fa-fw"></i> Dedicaciones</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Profesion/index.php', '#page-wrapper')"><i class="fa fa-graduation-cap fa-fw"></i> Profesiones</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Profesor/index.php', '#page-wrapper')"><i class="fa fa-users fa-fw"></i> Profesores</a></li>
					</ul>
				</li>

				<li>
					<a href="#"><i class="fa fa-university fa-fw"></i> Carreras<span class="fa arrow"></span></a>

					<ul class="nav nav-second-level">
						<li><a href="javascript: embem('moduloPlanificacion/Eje/index.php', '#page-wrapper')"><i class="fa fa-check-square-o fa-fw"></i> Ejes</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/UC/index.php', '#page-wrapper')"><i class="fa fa-check-square-o fa-fw"></i> Unidades Curriculares</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Estructura/index.php', '#page-wrapper')"><i class="fa fa-sitemap fa-fw"></i> Estructuras</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Area/index.php', '#page-wrapper')"><i class="fa fa-check-square-o fa-fw"></i> Áreas</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Carrera/index.php', '#page-wrapper')"><i class="fa fa-graduation-cap fa-fw"></i> Carreras</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Malla/index.php', '#page-wrapper')"><i class="fa fa-th fa-fw"></i> Mallas</a></li>
					</ul>
				</li>

				<li>
					<a href="#"><i class="fa fa-calendar-check-o fa-fw"></i> Planificación<span class="fa arrow"></span></a>

					<ul class="nav nav-second-level">
						<li><a href="javascript: embem('moduloPlanificacion/Periodo/index.php', '#page-wrapper')"><i class="fa fa-calendar fa-fw"></i> Periodos</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Seccion/index.php', '#page-wrapper')"><i class="fa fa-font fa-fw"></i> Secciones</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Carga/index.php', '#page-wrapper')"><i class="fa fa-hourglass fa-fw"></i> Carga académica</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Carga/planillas.php', '#page-wrapper')"><i class="fa fa-file-pdf-o fa-fw"></i> Planillas</a></li>
						<li><a href="javascript: moreInfo('moduloHorarios/principal.php')"><i class="fa fa-th fa-fw"></i> Gestion de Horarios</a></li>
					</ul>
				</li>

				<li><a href="javascript: embem('data/Usuario/index.php', '#page-wrapper')"><i class="fa fa-users fa-fw"></i> Usuarios</a></li>

<?php
		break;

		case "3":
?>

				<li>
					<a href="#"><i class="fa fa-users fa-fw"></i> Profesores<span class="fa arrow"></span></a>

					<ul class="nav nav-second-level">
						<li><a href="javascript: embem('moduloPlanificacion/Profesion/index.php', '#page-wrapper')"><i class="fa fa-graduation-cap fa-fw"></i> Profesiones</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Profesor/index.php', '#page-wrapper')"><i class="fa fa-users fa-fw"></i> Profesores</a></li>
					</ul>
				</li>

				<li><a href="javascript: embem('moduloPlanificacion/UC/index.php', '#page-wrapper')"><i class="fa fa-check-square-o fa-fw"></i> Unidades Curriculares</a></li>
				<li><a href="javascript: embem('moduloPlanificacion/Malla/index.php', '#page-wrapper')"><i class="fa fa-th fa-fw"></i> Mallas</a></li>

				<li>
					<a href="#"><i class="fa fa-calendar-check-o fa-fw"></i> Planificación<span class="fa arrow"></span></a>

					<ul class="nav nav-second-level">
						<li><a href="javascript: embem('moduloPlanificacion/Seccion/index.php', '#page-wrapper')"><i class="fa fa-font fa-fw"></i> Secciones</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Carga/index.php', '#page-wrapper')"><i class="fa fa-hourglass fa-fw"></i> Carga académica</a></li>
						<li><a href="javascript: embem('moduloPlanificacion/Carga/planillas.php', '#page-wrapper')"><i class="fa fa-file-pdf-o fa-fw"></i> Planillas</a></li>
					</ul>
				</li>

<?php
		break;
	}
?>

				<!--

				Elemento simple:
					<li><a href="#"><i class="fa fa-check-square-o fa-fw"></i> Elemento</a></li>

				Elemento múltiple:
					<li>
						<a href="#"><i class="fa fa-sitemap fa-fw"></i> Elemento múltiple<span class="fa arrow"></span></a>

						<ul class="nav nav-second-level">
							<li><a href="#"><i class="fa fa-check-square-o fa-fw"></i> Segundo nivel</a></li>

							<li>
								<a href="#"><i class="fa fa-sitemap fa-fw"></i> Segundo nivel múltiple <span class="fa arrow"></span></a>
								<ul class="nav nav-third-level">
									<li><a href="#"><i class="fa fa-check-square-o fa-fw"></i> Tercer nivel</a></li>
								</ul>
							</li>
						</ul>
					</li>

				-->

		<!-- Fin elementos del menú -->

			</ul>
		</div>
	</div>

	<!-- Fin menú principal -->
</nav>