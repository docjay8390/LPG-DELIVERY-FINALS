<!-- <php
// Delete record here...

require('php/config.php');

//code dor id request from databse

$Id = $_REQUEST['Id'];

//deleting data from databse

$query = "DELETE FROM orders WHERE Id = $Id";
$result = mysqli_query($connection, $query);

header("Location: orders.php");
?> -->




<?php 

if ( isset ($_GET["id"]) ) {
    $id = $_GET["id"];


    $servername = "localhost";
    $username = "root";
    $password ="";
    $database = "delivery";

    $connection = new mysqli($servername, $username, $password, $database);

    $sql = "DELETE FROM orders WHERE id=$id";
    $connection->query($sql);
}


header("Location: admin-home.php");
exit;
?>