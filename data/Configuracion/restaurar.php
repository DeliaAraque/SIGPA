<?php
	require "../../script/verifSesion.php";

	$archivo = htmlspecialchars($_POST["archivo"], ENT_QUOTES);
	exec("psql postgres -c \"\i ../../bd/sigpa.sql\"");

	if(exec("psql sigpa -c \"\i Respaldos/$archivo\""))
		echo "Se restauró satisfactóriamente, es recomendable que refresque la página (pulse la tecla <strong>F5</strong>)&&success";

	else
		echo "No se pudo restaurar&&error";
?>