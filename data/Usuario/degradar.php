<?php
	require "../../script/verifSesion.php";
	require "../../lib/conexion.php";

	$cedula = htmlspecialchars($_POST["cedula"], ENT_QUOTES);

	$sql = "update usuario set nivel = 4 where cedula = $cedula";
	$exe = pg_query($sigpa, $sql);

	if($exe) {
		$sql2 = "select * from persona where cedula = $cedula";
		$exe = pg_query($sigpa, $sql2);
		$persona = pg_fetch_object($exe);

		$sql = "insert into historial values('" . time() . "', '$_SESSION[nombre] $_SESSION[apellido] ($_SESSION[cedula])', 'Se degradó a <strong>$persona->apellido $persona->nombre ($cedula)</strong>', '" . htmlspecialchars($sql, ENT_QUOTES) . "')";
		$exe = pg_query($sigpa, $sql);

		echo "Se degradó satisfactóriamente&&success";
	}

	else
		echo "No se pudo degradar, por favor comuniquelo al administrador del sistema&&error";
?>