<?php
	require "../lib/conexion.php";

	$value = htmlspecialchars($_POST["value"], ENT_QUOTES);
	$table = htmlspecialchars($_POST["table"], ENT_QUOTES);
	$column = htmlspecialchars($_POST["column"], ENT_QUOTES);

	$sql = "select count($column) as n from \"$table\" where \"$column\"='$value'";
	$exe = pg_query($sigpa, $sql);
	$n = pg_fetch_object($exe);

	echo $n->n;
?>