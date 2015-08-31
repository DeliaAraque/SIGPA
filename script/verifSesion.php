<?php
	session_start();

	if(!$_SESSION["cedula"]) {
		session_destroy();
		header("location: /login.php");
	}
?>