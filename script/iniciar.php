<?php
	session_start();
	require "../lib/conexion.php";

// Validación

	if(!is_numeric($_POST["cedula"]))
	{
		echo "Debe indicar una cédula válida&&error";
		exit;
	}

	if(!$_POST["contrasena"])
	{
		echo "La contraseña no puede estar vacia&&error";
		exit;
	}

// Fin validación

// Verificar que existe es usuario

	$cedula = $_POST["cedula"];

	$sql = "select count($cedula) as n from usuario where cedula='$cedula'";
	$exe = pg_query($sigpa, $sql);
	$n = pg_fetch_object($exe);

	if(!$n->n)
	{
		echo "Usuario incorrecto&&error";
		exit;
	}

// Fin verificar usuario


// Verificar la contraseña

	$contrasena = md5(htmlspecialchars($_POST["contrasena"]));

	$sql = "select contrasena, nivel from usuario where cedula='$cedula'";
	$exe = pg_query($sigpa, $sql);
	$usuario = pg_fetch_object($exe);

	// Si la contraseña esta mal

	if($usuario->contrasena != $contrasena)
	{
		echo "Contraseña incorrecta&&error";
		exit;
	}

	// Sino

	else
	{
		$_SESSION["cedula"] = $cedula;
		$_SESSION["nivel"] = $usuario->nivel;

		if($_POST["recordar"] == 1)
			setcookie("cedula", "$cedula", time()+7*24*60*60, "/");

		else
			setcookie("cedula", "", time()-1, "/");

		// Actualizar ultimo ingreso

		$sql = "update usuario set ingreso='" . date("Y-m-d") . "' where cedula='$cedula'";
		$exe = pg_query($sigpa, $sql);

		echo "Ha ingresado satisfactoriamente&&success";
	}

// Fin verificar contraseña
?>