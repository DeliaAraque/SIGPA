<?php
	require "../../script/verifSesion.php";
	require "../../lib/conexion.php";

	$re = "^[0-9]{7,}$";

	if(! ereg("$re", $_POST["cedula"])) {
		echo "El número de cédula no cumple con el patrón necesario";
		exit;
	}

	$cedula = $_POST["cedula"];

	if($_POST["frase"]) {
		if((!$_POST["frase"]) || (!$_POST["nuevaFrase"]) || (!$_POST["refrase"])) {
			echo "Los campos necesarios para modificar su frase de recuperación no están completos";
			exit;
		}

		if(! ereg(".{4,}", $_POST["frase"])) {
			echo "La frase indicada no cumple con el patrón necesario, debe contener al menos 4 caracteres";
			exit;
		}

		$frase = md5(htmlspecialchars($_POST["frase"], ENT_QUOTES));

		$sql = "select frase from usuario where cedula='$cedula'";
		$exe = pg_query($sigpa, $sql);
		$usuario = pg_fetch_object($exe);

		if($usuario->frase != $frase) {
			echo "Frase de recuperación incorrecta&&error";
			exit;
		}

		if(! ereg(".{4,}", $_POST["nuevaFrase"])) {
			echo "La nueva frase indicada no cumple con el patrón necesario, debe contener al menos 4 caracteres";
			exit;
		}

		if($_POST["nuevaFrase"] != $_POST["refrase"]) {
			echo "Las frases no coinciden&&error";
			exit;
		}

		$nuevaFrase = md5(htmlspecialchars($_POST["nuevaFrase"], ENT_QUOTES));

		$sql = "update usuario set frase='$nuevaFrase' where cedula='$cedula'";
		$exe = pg_query($sigpa, $sql);

		if(! $exe) {
			echo "No se pudo modificar la frase de recuperación&&error";
			exit;
		}
	}

	if($_POST["contrasena"]) {
		if((!$_POST["contrasena"]) || (!$_POST["nuevaContrasena"]) || (!$_POST["recontrasena"])) {
			echo "Los campos necesarios para modificar su contraseña no están completos";
			exit;
		}

		if(! ereg(".{4,}", $_POST["contrasena"])) {
			echo "La contraseña indicada no cumple con el patrón necesario, debe contener al menos 4 caracteres";
			exit;
		}

		$contrasena = md5(htmlspecialchars($_POST["contrasena"], ENT_QUOTES));

		$sql = "select contrasena from usuario where cedula='$cedula'";
		$exe = pg_query($sigpa, $sql);
		$usuario = pg_fetch_object($exe);

		if($usuario->contrasena != $contrasena) {
			echo "Contrasena incorrecta&&error";
			exit;
		}

		if(! ereg(".{4,}", $_POST["nuevaContrasena"])) {
			echo "La nueva contraseña indicada no cumple con el patrón necesario, debe contener al menos 4 caracteres";
			exit;
		}

		if($_POST["nuevaContrasena"] != $_POST["recontrasena"]) {
			echo "Las contraseñas no coinciden&&error";
			exit;
		}

		$nuevaContrasena = md5(htmlspecialchars($_POST["nuevaContrasena"], ENT_QUOTES));

		$sql = "update usuario set contrasena='$nuevaContrasena' where cedula='$cedula'";
		$exe = pg_query($sigpa, $sql);

		if(! $exe) {
			echo "No se pudo modificar la contraseña&&error";
			exit;
		}
	}

	echo "Se modificó satisfactóriamente&&success";
	pg_query($sigpa, "commit");
?>