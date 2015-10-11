<?php
	require "../../script/verifSesion.php";
	require "../../lib/conexion.php";

	exec("mkdir Respaldos");

	$archivo = date("Y-m-d_H-i-s") . ".sql";
	exec("pg_dump -abiOx --no-tablespace -F p sigpa > Respaldos/$archivo");

	if(exec("grep \"PostgreSQL database dump complete\" Respaldos/$archivo")) {

		// Agregar elemento al registro de acciones realizadas

		$sql = "insert into historial values('" . time() . "', '$_SESSION[nombre] $_SESSION[apellido] ($_SESSION[cedula])', 'Se creó el respaldo <strong>$archivo</strong>', 'No SQL')";
		$exe = pg_query($sigpa, $sql);

		// --------------------

		echo "Se respaldó satisfactóriamente&&success";
	}

	else {
		echo "No se pudo respaldar&&error";
		unlink("Respaldos/$archivo");
	}
?>