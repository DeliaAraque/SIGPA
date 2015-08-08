<?php
	require "../lib/conexion.php";

// Validación

	if((!$_POST["cedula"]) || (!$_POST["frase"]) || (!$_POST["contrasena"]) || (!$_POST["recontrasena"])) {
		echo "Ningun campo puede estar vacio";
		exit;
	}

	if(! ereg("[0-9]{7,}", $_POST["cedula"])) {
		echo "La cédula indicada no cumple con el patrón necesario, debe contener al menos 7 caracteres y todos ellos numéricos";
		exit;
	}

	if(! ereg(".{4,}", $_POST["frase"])) {
		echo "La frase indicada no cumple con el patrón necesario, debe contener al menos 4 caracteres";
		exit;
	}

	if(! ereg(".{4,}", $_POST["contrasena"])) {
		echo "La contraseña indicada no cumple con el patrón necesario, debe contener al menos 4 caracteres";
		exit;
	}

	if($_POST["contrasena"] != $_POST["recontrasena"]) {
		echo "Las contraseñas no coinciden&&error";
		exit;
	}

// --------------------

// Verificar que existe el usuario

	$cedula = $_POST["cedula"];

	$sql = "select count($cedula) as n from usuario where cedula='$cedula'";
	$exe = pg_query($sigpa, $sql);
	$n = pg_fetch_object($exe);

	if(!$n->n) {
		echo "Usuario incorrecto&&error";
		exit;
	}

// --------------------

// Verificar frase de recuperación

	$frase = md5(htmlspecialchars($_POST["frase"], ENT_QUOTES));

	$sql = "select frase from usuario where cedula='$cedula'";
	$exe = pg_query($sigpa, $sql);
	$usuario = pg_fetch_object($exe);

	// Si la frase esta mal

	if($usuario->frase != $frase) {
		echo "Frase de recuperación incorrecta&&error";
		exit;
	}

	// --------------------

	// Si la frase esta bien

	else {
		$contrasena = md5(htmlspecialchars($_POST["contrasena"], ENT_QUOTES));

		$sql = "update usuario set contrasena='$contrasena' where cedula='$cedula'";
		$exe = pg_query($sigpa, $sql);

		echo "Contraseña reestablecida satisfactóriamente&&success";
	}

	// --------------------

// --------------------
?>