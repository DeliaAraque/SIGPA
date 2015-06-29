<?php
	session_start();

	if(!$_SESSION["cedula"])
		header("location: login.php");
?>