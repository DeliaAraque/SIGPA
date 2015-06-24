<?php
	require "../lib/conexion.php";

	$value = htmlspecialchars($_POST["value"]);
	$table = htmlspecialchars($_POST["table"]);
	$column = htmlspecialchars($_POST["column"]);

	$sql = "select count($column) as n from $table where $column='$value'";
	$exe = pg_query($sigpa, $sql);
	$n = pg_fetch_object($exe);

	echo $n->n;
?>