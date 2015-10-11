<?php
	require "../../script/verifSesion.php";
	require "../../lib/conexion.php";

	$archivo = htmlspecialchars($_POST["archivo"], ENT_QUOTES);

	if(unlink("Respaldos/$archivo")) {

		// Agregar elemento al registro de acciones realizadas

		$sql = "insert into historial values('" . time() . "', '$_SESSION[nombre] $_SESSION[apellido] ($_SESSION[cedula])', 'Se eliminó el respaldo <strong>$archivo</strong>', 'No SQL')";
		$exe = pg_query($sigpa, $sql);

		// --------------------

		echo "Se eliminó satisfactóriamente&&success";
	}

	else
		echo "No se pudo eliminar el archivo de respaldo&&error";
?>