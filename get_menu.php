<!DOCTYPE html>
<body>

<?php
include 'connect.php';

$q = ($_GET['q']);

$query = "
select distinct m.* 
from menu m
except 
select distinct m.* 
from menu m, ingredient_menu im 
where m.id=im.menu_id and im.ingredient_id in 
( select id from ingredient where ingredient_path ~ '".$q.".*' order by ingredient_path )
"; 

$res = pg_query($con, $query) or die("Cannot execute query: $query\n");

echo "Recommended menu : ";
while ($ro = pg_fetch_object($res)) {
    echo $ro->id . " ";
    echo $ro->name . " ";
    //echo $ro->description . " ";
    //echo $ro->image . " ";
}


pg_close($con);

?>
</body>
</html>