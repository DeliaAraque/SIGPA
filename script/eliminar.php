<?php
	require "../script/verifSesion.php";
	require "../lib/conexion.php";

	$table = htmlspecialchars($_POST["tabla"], ENT_QUOTES);
	$column = htmlspecialchars($_POST["campo"], ENT_QUOTES);
	$value = htmlspecialchars($_POST["valor"], ENT_QUOTES);

	$sql = "delete from \"$table\" where \"$column\"='$value'";
	$exe = pg_query($sigpa, $sql);

	if($exe) {
		$sql = "insert into historial values('" . time() . "', '$_SESSION[nombre] $_SESSION[apellido] ($_SESSION[cedula])', 'Se eliminó <strong>$value</strong>', '" . htmlspecialchars($sql, ENT_QUOTES) . "')";
		$exe = pg_query($sigpa, $sql);

		echo "Se eliminó satisfactóriamente&&success";
	}

	else {
		echo "No se puede eliminar, es posible que algún dato dependa de este elemento&&error";
	}
?>