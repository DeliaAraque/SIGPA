<?php
	session_start();

	if($_SESSION["cedula"])
		header("location: .");
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<!-- Plantilla -->

	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/template/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="css/template/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
	<link href="css/template/dist/css/timeline.css" rel="stylesheet">
	<link href="css/template/dist/css/sb-admin-2.css" rel="stylesheet">
	<link href="css/template/bower_components/morrisjs/morris.css" rel="stylesheet">
	<link href="css/template/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<!-- Fin plantilla -->

	<link href="css/palete.css" rel="stylesheet" type="text/css" />
	<link href="css/sigpa.css" rel="stylesheet" type="text/css" />
	<link href="css/popup.css" rel="stylesheet" type="text/css" />

	<script src="lib/sigpa.js"></script>

	<style>
		body {
			background: initial;
		}

		a {
			color: #00005b;
		}
	</style>

	<meta charset="utf-8">
	<meta name="description" content="Planificación académica para la UPTM-KR">
	<link rel="shortcut icon" type="image/x-icon" href="css/img/favicon.png"/>

	<title>SIGPA - Sistema de Información para la Gestión de la Planificación Académica</title>
</head>

<body>
	<img src="css/img/banner.jpg" style="height: 70px; width: 100%;" />

	<div class="container">
		<div class="row">

	<!-- Formulario -->

			<div class="col-lg-4" style="margin-top: 5em;">
				<div class="panel panel-default">
					<div class="panel-body">

			<!-- Pestañas -->

						<ul class="nav nav-tabs">
							<li class="active" style="width: 50%;" id="iniciarTab"><a href="#iniciar" data-toggle="tab">Entrar</a></li>
							<li style="width: 50%;" id="reestablecerTab"><a href="#reestablecer" data-toggle="tab">Reestablecer</a></li>
						</ul>

			<!-- Fin pestañas -->

			<!-- Contenido de las pestañas -->

						<div class="tab-content"><br/>

				<!-- Formulario para iniciar sesión -->

							<div class="tab-pane fade in active" id="iniciar">
								<form name="login" method="POST" action="script/iniciar.php" data-exe="$(location).attr('href', '.')" role="form">
									<div class="form-group">
										<div class="input-group" title="Ingrese su cédula">
											<input type="text" name="cedula" placeholder="Cédula" value="<?= $_COOKIE["cedula"]; ?>" class="form-control" pattern="[0-9]{7,}" autofocus="autofocus" required="required" title="Ingrese su cédula" />
											<span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
										</div>
									</div>

									<div class="form-group">
										<div class="input-group" title="Ingrese su contraseña">
											<input type="password" name="contrasena" placeholder="Contraseña" class="form-control" pattern=".{4,}" required="required" title="Ingrese su contraseña" />
											<span class="input-group-addon"><i class="fa fa-lock fa-fw"></i></span>
										</div>
									</div>

									<div class="checkbox"><label>
										<input type="checkbox" name="recordar" value="1" <?php if($_COOKIE["cedula"]) echo "checked=\"checked\""; ?> /> Recordar mi cédula
									</label></div>

									<input type="submit" value="Entrar" class="btn btn-lg btn-primary btn-block" /><br/>
								</form>
							</div>

				<!-- Fin formulario para iniciar sesión -->

				<!-- Formulario para reestablecer la contraseña -->

							<div class="tab-pane fade" id="reestablecer">
								<form name="reset" method="POST" action="script/reestablecer.php" onSubmit="return reestablecer(this)">
									<div class="form-group">
										<div class="input-group" title="Ingrese su cédula">
											<input type="text" name="cedula" placeholder="Cédula" value="<?= $_COOKIE["cedula"]; ?>" class="form-control" pattern="[0-9]{7,}" required="required" title="Ingrese su cédula" />
											<span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
										</div>
									</div>

									<div class="form-group">
										<div class="input-group" title="Ingrese su frase de recuperación">
											<input type="password" name="frase" placeholder="Frase de recuperación" class="form-control" pattern=".{4,}" required="required" />
											<span class="input-group-addon"><i class="fa fa-key fa-fw"></i></span>
										</div>
									</div>

									<div class="form-group">
										<div class="input-group" title="Ingrese una nueva contraseña, debe contener al menos 4 caracteres">
											<input type="password" name="contrasena" placeholder="Nueva contraseña" class="form-control" pattern=".{4,}" onKeyUp="diff(document.reset.recontrasena, this)" required="required" title="Ingrese una nueva contraseña, debe contener al menos 4 caracteres" />
											<span class="input-group-addon"><i class="fa fa-lock fa-fw"></i></span>
										</div>
										<p class="help-block">Una contraseña debe contener al menos 4 caracteres, le recomendamos que no use contraseñas comunes como "1234" o "abcd".</p>
									</div>

									<div class="form-group">
										<div class="input-group" title="Repita la contraseña">
											<input type="password" name="recontrasena" placeholder="Repita la contraseña" class="form-control" pattern=".{4,}" onKeyUp="diff(this, document.reset.contrasena)" required="required" title="Repita la contraseña" />
											<span class="input-group-addon"><i class="fa fa-lock fa-fw"></i></span>
										</div>
									</div>

									<input type="submit" value="Reestablecer" class="btn btn-lg btn-primary btn-block" /><br/>
								</form>
							</div>
						</div>

				<!-- Fin formulario para reestablecer la contraseña -->

			<!-- Fin contenido de las pentañas -->

					</div>
				</div>
			</div>

	<!-- Fin formulario -->

	<!-- Información -->

			<div class="col-lg-7 col-lg-offset-1 text-justify">
				<h1 class="page-header">Vicerectorado académico</h1>

				<dl>
					<dt style="font-size: 1.3em;">Misión</dt>
						<dd>Coordinar la materialización de los planes y programas de la oferta académica para contribuir con la formación profesional universitaria y la municipalización de la educación.</dd>

					<dt style="font-size: 1.3em;">Visión</dt>
						<dd>Potenciar el desarrollo de una docencia de excelencia, transversal y flexible que permita obtener un egresado conpetente y crítica en un contexto de permanente cambio.</dd>

					<dt style="font-size: 1.3em;">Objetivo general</dt>
						<dd>Supervisar las actividades académicas y administrativas de docencia, investigación y extensión de la universidad en los niveles de estudios y pregrado</dd>
					
					<dt style="font-size: 1.3em;">Objetivos especificos</dt>
						<dd>
							<ul>
								<li>Controlar la materialización de los planes y programas de las ofertas académicas de la institución para contribuir con la formación de profesionales universitarios.</li>
								<li>Convocar al concejo acdémico universitario de las diferentes universidades integradoras de los <abbr title="Proyecto Nacional de Formación" class="initialism">PNF</abbr> y Carreras cortas de acuerdo al diagrama estructural vigente.</li>
								<li>Controlar las acciones necesarias para garantizar la gestión y unificación de los <abbr title="Proyecto Nacional de Formación" class="initialism">PNF</abbr> y carreras cortas en las sedes y los diferentes núcleos</li>
								<li>Fomentar ante las universidades integradoras de los <abbr title="Proyecto Nacional de Formación" class="initialism">PNF</abbr> y carreras cortas los planes y proyectos en concordancia con las líneas emanadas del <abbr title="Ministerio del Poder Popular para Educación Universitaria, Ciencia y Tecnología" class="initialism">MPPEUCT</abbr> que permitan el buen desenvolvimiento de la academia universitaria</li>
								<li>Garantizar la realización de las actividades docentes con la máxima calidad y eficiencia, en concordancia con los objetivos y políticas institucionales</li>
								<li>Velar por los ajustes curriculares presentados por las unidades integradoras de los <abbr title="Proyecto Nacional de Formación" class="initialism">PNF</abbr> y carreras cortas de las sedes y de los núcleos</li>
								<li>Dar respuesta a las consultas académicas y funcionamiento que formule los órganos directivos y las comunidades en general</li>
							</ul>
						</dd>
				</dl>
			</div>

	<!-- Fin información -->

		</div>

	</div>

<div id="popUp" class="infoZone" onClick="popUpClose()">
	<div></div>

	<span class="cerrar" title="Cerrar">X</span>

	<span class="fa-stack fa-2x" style="position: absolute; bottom: 0.2em; right: 0.2em;">
		<i class="fa fa-circle-o fa-fw fa-stack-2x"></i>
		<i></i>	
	</span>
</div>

<i id="loading" class="fa fa-refresh fa-spin fa-3x fa-fw infoZone" title="Cargando.."></i>

</body>

<!-- Bibliotecas plantilla -->

<script src="css/template/bower_components/jquery/dist/jquery.min.js"></script>
<script src="css/template/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="css/template/bower_components/metisMenu/dist/metisMenu.min.js"></script>
<script src="css/template/dist/js/sb-admin-2.js"></script>

<!-- Fin bibliotecas plantilla -->

<script>
	formularios();
	$(document).ready(loading(false));

	function reestablecer(f) {
		loading(true);

		$.ajax( {
			processData: false,
			contentType: false,
			url: f.action,
			data: new FormData(f),
			type: f.method,
			success: function(rt) {
				var response = rt.split("&&");

				popUp(response[0], response[1]);
				loading(false);

				if(response[1] == "success") {
					$("#reestablecerTab").removeClass("active");
					$("#iniciarTab").addClass("active");

					$("#reestablecer").removeClass("in active");
					$("#iniciar").addClass("in active");

					document.login.cedula.value = document.reset.cedula.value;
					document.login.contrasena.focus();
				}
			},
			error: function () {
				popUp("Ocurrio un error durante la conexión al servidor", "error");
				loading(false);
			}
		});

		return false;
	}
</script>

</html>