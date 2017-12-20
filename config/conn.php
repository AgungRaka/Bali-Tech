<?php
/*Connection_db*/	
	global $db_host, $db_user, $db_password, $db_name, $db_connection ;
	$db_connection = mysql_connect("localhost","root","") or die ("can't open database!");
	$db_select = mysql_select_db("db_balitech");

?>