<?php
	require "script/verifSesion.php";
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
	<link href="css/template/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">
	<link href="css/template/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">
	<link href="css/template/bower_components/datepicker/css/bootstrap-datepicker3.standalone.min.css" rel="stylesheet">

	<!-- Fin plantilla -->

	<link href="css/palete.css" rel="stylesheet" type="text/css" />
	<link href="css/sigpa.css" rel="stylesheet" type="text/css" />
	<link href="css/popup.css" rel="stylesheet" type="text/css" />

	<script src="lib/sigpa.js"></script>

	<meta charset="utf-8">
	<meta name="description" content="Planificación académica para la UPTM-KR">
	<link rel="shortcut icon" type="image/x-icon" href="css/img/favicon.png"/>

	<title>SIGPA - Sistema de Información para la Gestión de la Planificación Académica</title>
</head>
<body onBeforeUnload="return 'Parece que ha intentado navegar a otro lugar, le recomendamos que lo haga usando el menú y los botones de SIGPA. Si esta seguro de lo que hace o solo ha intentado refrescar la página puede continuar.'">
<div id="wrapper">

	<!-- Navegación -->

<?php
	require "lib/menu.php";
?>

	<!-- Fin navegación -->

	<!-- Contenido -->

	<div id="page-wrapper"></div>

	<!-- Fin contenido -->

</div>

<div id="moreInfo"><div></div><span class="cerrar" title="Cerrar" onClick="moreInfoClose()" style="display: none; position: fixed;" ><i class="fa fa-times" ></i></span></div>

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
<script src="css/template/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="css/template/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
<script src="css/template/bower_components/datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="css/template/bower_components/datepicker/locales/bootstrap-datepicker.es.min.js"></script>

<script>
	$(document).ready(loading(false));
	formularios();
	setInterval(notifications, 1000);

<?php
	switch($_SESSION["nivel"]) {
		case "4":
?>

	embem("data/Configuracion/misDatos.php", "#page-wrapper");

<?php
		break;
	}
?>

</script>

<!-- Fin bibliotecas plantilla -->

</html>