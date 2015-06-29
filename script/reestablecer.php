<?php
	require "../lib/conexion.php";

// Validación

	if(!is_numeric($_POST["cedula"]))
	{
		echo "Debe indicar una cédula válida&&error";
		exit;
	}

	if((!$_POST["frase"]) || (!$_POST["contrasena"]) || (!$_POST["recontrasena"]))
	{
		echo "Ningun campo puede estar vacio&&error";
		exit;
	}

	if($_POST["contrasena"] != $_POST["recontrasena"])
	{
		echo "Las contraseñas no coinciden&&error";
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

// Verificar frase de recuperación

	$frase = htmlspecialchars($_POST["frase"]);

	$sql = "select frase from usuario where cedula='$cedula'";
	$exe = pg_query($sigpa, $sql);
	$usuario = pg_fetch_object($exe);

	// Si la frase esta mal

	if($usuario->frase != $frase)
	{
		echo "Frase de recuperación incorrecta&&error";
		exit;
	}

	// Sino

	else
	{
		$contrasena = md5(htmlspecialchars($_POST["contrasena"]));

		$sql = "update usuario set contrasena='$contrasena' where cedula='$cedula'";
		$exe = pg_query($sigpa, $sql);

		echo "Contraseña reestablecida satisfactóriamente&&success";
	}

// Fin verificar frase
?>