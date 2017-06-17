<!DOCTYPE html>
<html>
<body>

<?php
$host = "localhost"; 
$user = "test"; 
$pass = "root"; 
$db = "online-menu"; 

$con = pg_connect("host=$host dbname=$db user=$user password=$pass") or die ("Could not connect to server\n"); 

$query = "
select distinct i.ingredient_path, i.name 
from ingredient i
"; 

$res = pg_query($con, $query) or die("Cannot execute query: $query\n");

$data = array();
while ($ro = pg_fetch_object($res)) {
	 $data[] = $ro; 
}
echo json_encode($data);

pg_close($con);

?>
</body>
</html>