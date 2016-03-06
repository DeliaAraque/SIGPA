<?php
	session_start();
	require "../lib/conexion.php";

// Validación

	if(!$_POST["cedula"]) {
		echo "La cédula no puede estar vacia";
		exit;
	}

	if(! ereg("[0-9]{7,}", $_POST["cedula"])) {
		echo "La cédula indicada no cumple con el patrón necesario, debe contener al menos 7 caracteres y todos ellos numéricos";
		exit;
	}

	if(!$_POST["contrasena"]) {
		echo "La contraseña no puede estar vacia";
		exit;
	}

	if(! ereg(".{4,}", $_POST["contrasena"])) {
		echo "La contraseña indicada no cumple con el patrón necesario, debe contener al menos 4 caracteres";
		exit;
	}

// --------------------

// Verificar que existe el usuario

	$cedula = $_POST["cedula"];

	$sql = "select count(cedula) as n from usuario where cedula='$cedula'";
	$exe = pg_query($sigpa, $sql);
	$n = pg_fetch_object($exe);

	if(!$n->n) {
		echo "Usuario incorrecto&&error";
		exit;
	}

// --------------------

// Verificar la contraseña

	$contrasena = md5(htmlspecialchars($_POST["contrasena"], ENT_QUOTES));

	$sql = "select contrasena, nivel from usuario where cedula='$cedula'";
	$exe = pg_query($sigpa, $sql);
	$usuario = pg_fetch_object($exe);

	// Si la contraseña esta mal

	if($usuario->contrasena != $contrasena) {
		echo "Contraseña incorrecta&&error";
		exit;
	}

	// --------------------

	// Si la contraseña esta bien

	else {
		$_SESSION["cedula"] = $cedula;
		$_SESSION["nivel"] = $usuario->nivel;

		if($usuario->nivel == 3) {
			$sql = "select * from \"carreraSede\" where \"idCoordinador\" = '$cedula'";
			$exe = pg_query($sigpa, $sql);
			$coordinacion = pg_fetch_object($exe);

			$_SESSION["carreraCoord"] = $coordinacion->idCarrera;
			$_SESSION["sedeCoord"] = $coordinacion->idSede;
		}

		$sql = "select nombre, apellido from persona where cedula='$cedula'";
		$exe = pg_query($sigpa, $sql);
		$persona = pg_fetch_object($exe);

		$_SESSION["nombre"] = $persona->nombre;
		$_SESSION["apellido"] = $persona->apellido;

		// Recordar cédula

		if($_POST["recordar"] == 1)
			setcookie("cedula", "$cedula", time()+7*24*60*60, "/");

		else
			setcookie("cedula", "", time()-1, "/");

		// --------------------

		// Actualizar ultimo ingreso

		$sql = "update usuario set ingreso='" . date("Y-m-d") . "' where cedula='$cedula'";
		$exe = pg_query($sigpa, $sql);

		// --------------------

		echo "Ha ingresado satisfactoriamente&&success";
	}

	// --------------------

// --------------------
?>