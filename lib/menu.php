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

		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="Registro de actividades">
				<i class="fa fa-th-list fa-fw"></i> <i class="fa fa-caret-down"></i>
			</a>

				<!-- Elementos del registro -->

			<ul id="historial" class="dropdown-menu" style="width: 30em;">
				<li><a class="text-center" href="#"><strong>Ver el registro completo</strong></a></li>

<?php
	require "conexion.php";

	$sql = "select * from historial order by id desc limit 5";
	$exe = pg_query($sigpa, $sql);

	while($historial = pg_fetch_object($exe)) {
?>

				<li class="divider"></li>

				<li><a>
					<div>
						<strong><?= "$historial->usuario"; ?></strong>
						<span class="pull-right text-muted"><em><?= date("H:i d/m/Y", $historial->id); ?></em></span>
					</div>

					<div>&nbsp;&nbsp;&nbsp;&nbsp;<?= "$historial->descripcion"; ?></div><br/>

					<pre><?= "$historial->sql"; ?></pre>
				</a></li>

<?php
	}
?>
			</ul>

				<!-- Fin elementos del registro -->

		</li>

			<!-- Fin registro de actividades -->

			<!-- Períodos de planificación -->

		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#" title="Períodos de planificación">
				<i class="fa fa-calendar fa-fw"></i> <i class="fa fa-caret-down"></i>
			</a>

			<ul class="dropdown-menu" style="width: 25em;">
				<li><a class="text-center" href="#"><strong>Ver períodos de planificación</strong></a></li>

				<li class="divider"></li>

				<li><a>
					<div>
						<p>
							<strong>Carrera (Sede)</strong>
							<span class="pull-right text-muted">Fecha fin</span>
						</p>

						<div class="progress progress-striped active">
							<div class="progress-bar" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
								Días restantes
							</div>
						</div>
					</div>
				</a></li>
			</ul>
		</li>

			<!-- Fin períodos de planificación -->

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

				<li><a href="#"><i class="fa fa-gear fa-fw"></i> Configuración</a></li>

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

				<li class="sidebar-search">
					<form name="buscar" action="script/buscar.php" role="search">
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="Buscar...">

							<span class="input-group-btn">
								<button class="btn btn-default" onClick="embem('script/buscar.php', '#page-wrapper', getForm(this))" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
				</li>

		<!-- Fin búsqueda -->

		<!-- Elementos del menú -->

				<li><a href="javascript: embem('moduloPlanificacion/Area/index.php', '#page-wrapper')"><i class="fa fa-check-square-o fa-fw"></i> Áreas</a></li>

				<li>
					<a href="#"><i class="fa fa-check-square-o fa-fw"></i> Cargas Académicas<span class="fa arrow"></span></a>

					<ul class="nav nav-second-level">
						<li>
							<a href="javascript: embem('moduloCarga/Carga/registro_carga.html', '#page-wrapper')"><i class="fa fa-pencil-square-o fa-fw"></i> Registrar Cargas</a>
						</li>
						<li>
							<a href="javascript: embem('moduloCarga/Carga/consulta_carga.php', '#page-wrapper')"><i class="fa fa-search fa-fw"></i> Consultar Cargas</a>
						</li>
					</ul>
				</li>

				<li><a href="javascript: embem('moduloCarga/Actualizacion/index.php', '#page-wrapper')"><i class="fa fa-upload fa-fw"></i> Actualización de Datos</a></li>
				<li><a href="javascript: embem('moduloCarga/Reportes/index.php', '#page-wrapper')"><i class="fa fa-file-text fa-fw"></i> Reportes Multiples</a></li>



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