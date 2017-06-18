<!DOCTYPE html>
<html>
<body>

<?php
include 'connect.php';

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