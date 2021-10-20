<?php 
require 'db.php';
$sel = $con->query("select * from app_version where id=1")->fetch_assoc();

$returnArr = array("data"=>$sel,"ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"App Version Founded!");
echo json_encode($returnArr);
?>