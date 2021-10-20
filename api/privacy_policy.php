<?php 
require 'db.php';
$sel = $con->query("select privacy_policy from setting")->fetch_assoc();

$returnArr = array("data"=>$sel,"ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"Privacy Policy Founded!");
echo json_encode($returnArr);
?>
