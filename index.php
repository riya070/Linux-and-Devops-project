<?php
	$host="riya"
	$user="root"
	$pass="root"
	$db="test-db"


	$con= new mysqli($host, $user, $pass, $db);

	if($con->connect_error)
	{
		die("Connection failed: " . $con->connect_error);
	}
	echo($con->server_version());
?>
