<?php
	require "../../script/verifSesion.php";
	require "../../lib/conexion.php";

// Validación

	$re = "^[0-9]{7,}$";

	if(! ereg("$re", $_POST["cedula"])) {
		echo "El número de cédula no cumple con el patrón necesario";
		exit;
	}

	$cedula = $_POST["cedula"];

	$sql = "select COUNT(cedula) as n from usuario where cedula='$cedula'";
	$exe = pg_query($sigpa, $sql);
	$n = pg_fetch_object($exe);
	$n = $n->n;

	if($n) {
		echo "Ya existe un usuario con esa cédula";
		exit;
	}

	$re = "^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$";

	if(! ereg("$re", $_POST["nombre"])) {
		echo "El nombre indicado no cumple con el patrón necesario";
		exit;
	}

	$nombre = $_POST["nombre"];

	if($_POST["segundoNombre"]) {
		$re = "^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$";

		if(! ereg("$re", $_POST["segundoNombre"])) {
			echo "El segundo nombre no cumple con el patrón necesario";
			exit;
		}

		$segundoNombre = "'" . $_POST["segundoNombre"] . "'";
	}

	else
		$segundoNombre = "null";

	$re = "^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$";

	if(! ereg("$re", $_POST["apellido"])) {
		echo "El apellido indicado no cumple con el patrón necesario";
		exit;
	}

	$apellido = $_POST["apellido"];

	if($_POST["segundoApellido"]) {
		$re = "^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*( [A-ZÁÉÍÓÚÑ][a-záéíóúñ]*)*$";

		if(! ereg("$re", $_POST["segundoApellido"])) {
			echo "El segundo apellido no cumple con el patrón necesario";
			exit;
		}

		$segundoApellido = "'" . $_POST["segundoApellido"] . "'";
	}

	else
		$segundoApellido = "null";

	if(($_POST["sexo"] != "f") && ($_POST["sexo"] != "m")) {
		echo "Por aquí <strong>NO</strong> pasan inyecciones! :B";
		exit;
	}

	$sexo = $_POST["sexo"];

	$re = "^[a-z0-9\-_\.]+@[a-z0-9\-_\.]+\.[a-z0-9\-_\.]+(,[a-z0-9\-_\.]+@[a-z0-9\-_\.]+\.[a-z0-9\-_\.]+)*$";

	if(! ereg("$re", $_POST["correo"])) {
		echo "El correo electrónico indicado no cumple con el patrón necesario";
		exit;
	}

	$correo = $_POST["correo"];
	
	$direccion = htmlspecialchars($_POST["direccion"], ENT_QUOTES);

	$re = "^[0-9]{3,4}\-?[0-9]{7}(,([0-9]{3,4}\-?[0-9]{7}))*$";

	if(! ereg("$re", $_POST["telefono"])) {
		echo "El número de teléfono móvil no cumple con el patrón necesario";
		exit;
	}

	$telefono = $_POST["telefono"];

	if($_POST["telefonoFijo"]) {
		$re = "^[0-9]{3,4}\-?[0-9]{7}(,([0-9]{3,4}\-?[0-9]{7}))*$";

		if(! ereg("$re", $_POST["telefonoFijo"])) {
			echo "El número de teléfono fijo no cumple con el patrón necesario";
			exit;
		}

		$telefonoFijo = "'" . $_POST["telefonoFijo"] . "'";
	}

	else
		$telefonoFijo = "null";

	$nivel = (! isset($_POST["nivel"])) ? 2 : htmlspecialchars($_POST["nivel"], ENT_QUOTES);

// --------------------

	pg_query($sigpa, "begin");

	$sql = "select COUNT(cedula) as n from persona where cedula='$cedula'";
	$exe = pg_query($sigpa, $sql);
	$n = pg_fetch_object($exe);
	$n = $n->n;

	if(! $n)
		$sql = "insert into persona values('$cedula', '$nombre', $segundoNombre, '$apellido', $segundoApellido, '$sexo', '$correo', '$direccion', '$telefono', $telefonoFijo)";

	else
		$sql = "update persona set nombre='$nombre', \"segundoNombre\"=$segundoNombre, apellido='$apellido', \"segundoApellido\"=$segundoApellido, sexo='$sexo', correo='$correo', direccion='$direccion', telefono='$telefono', \"telefonoFijo\"=$telefonoFijo where cedula='$cedula'";

	$exe = pg_query($sigpa, $sql);

// Si se guardo la persona correctamente o ya existe

	if($exe) {

	// Se guardan los datos del usuario

		$cedula2 = md5($cedula);

		$sql2 = "insert into usuario values('$cedula', '$cedula2', '$cedula2', null, '$nivel')";
		$exe = pg_query($sigpa, $sql2);

		if(! $exe) {
			echo "Ocurrió un error mientras el servidor intentaba guardar la información, por favor vuelva a intentarlo y si el error persiste comuníquelo al administrador del sistema&&error";
			pg_query($sigpa, "rollback");
		}

	// --------------------

	// Agregar elemento al registro de acciones realizadas

		$sql = "insert into historial values('" . time() . "', '$_SESSION[nombre] $_SESSION[apellido] ($_SESSION[cedula])', 'Se agregó al usuario <strong>$nombre $apellido ($cedula)</strong>', '" . htmlspecialchars($sql, ENT_QUOTES) . "\n\n" . htmlspecialchars($sql2, ENT_QUOTES) . "')";
		$exe = pg_query($sigpa, $sql);

	// --------------------

		echo "Se guardó satisfactóriamente&&success";
		pg_query($sigpa, "commit");
		exit;
	}

// --------------------

// Si ocurrio un error guardando la persona

	echo "Ocurrió un error mientras el servidor intentaba guardar la información, por favor vuelva a intentarlo y si el error persiste comuníquelo al administrador del sistema&&error";
	pg_query($sigpa, "rollback");

// --------------------

?>