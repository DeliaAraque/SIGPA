<?php
	require "../../script/verifSesion.php";
	require "../../lib/conexion.php";

// Validación

	$re = "^[0-9]{7,}$";

	if((! ereg("$re", $_POST["cedula"])) || (! ereg("$re", $_POST["cedulaAnt"]))) {
		echo "El número de cédula no cumple con el patrón necesario";
		exit;
	}

	$cedula = $_POST["cedula"];
	$cedulaAnt = $_POST["cedulaAnt"];

	if($cedula != $cedulaAnt) {
		$sql = "select COUNT(cedula) as n from persona where cedula='$cedula'";
		$exe = pg_query($sigpa, $sql);
		$n = pg_fetch_object($exe);
		$n = $n->n;

		if($n) {
			echo "Ya existe una persona con esa cédula";
			exit;
		}
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

		$segundoNombre = "'$_POST[segundoNombre]'";
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

		$segundoApellido = "'$_POST[segundoApellido]'";
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

		$telefonoFijo = "'$_POST[telefonoFijo]'";
	}

	else
		$telefonoFijo = "null";

// --------------------

	pg_query($sigpa, "begin");

	$sql = "update persona set cedula='$cedula', nombre='$nombre', \"segundoNombre\"=$segundoNombre, apellido='$apellido', \"segundoApellido\"=$segundoApellido, sexo='$sexo', correo='$correo', direccion='$direccion', telefono='$telefono', \"telefonoFijo\"=$telefonoFijo where cedula='$cedulaAnt'";
	$exe = pg_query($sigpa, $sql);

// Si se modificó la persona correctamente

	if($exe) {

	// Se modifican los datos del usuario

		$sql2 = "update usuario set cedula='$cedula' where cedula='$cedulaAnt'";
		$exe = pg_query($sigpa, $sql2);

		if(! $exe) {
			echo "Ocurrió un error mientras el servidor intentaba modificar la información, por favor vuelva a intentarlo y si el error persiste comuníquelo al administrador del sistema&&error";
			pg_query($sigpa, "rollback");
		}

	// --------------------

	// Agregar elemento al registro de acciones realizadas

		$sql = "insert into historial values('" . time() . "', '$_SESSION[nombre] $_SESSION[apellido] ($_SESSION[cedula])', 'Se modificó la persona <strong>$nombre $apellido ($cedula)</strong>', '" . htmlspecialchars($sql, ENT_QUOTES) . "\n\n" . htmlspecialchars($sql2, ENT_QUOTES) . "')";
		$exe = pg_query($sigpa, $sql);

	// --------------------

		echo "Se modificó satisfactóriamente&&success";
		pg_query($sigpa, "commit");
		exit;
	}

// --------------------

// Si ocurrio un error modificando la persona

	echo "Ocurrió un error mientras el servidor intentaba modificar la información, por favor vuelva a intentarlo y si el error persiste comuníquelo al administrador del sistema&&error";
	pg_query($sigpa, "rollback");

// --------------------

?>