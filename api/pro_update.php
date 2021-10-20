<?php 

    require 'db.php';
    $prods = $con->query("select * from product")->fetch_all(MYSQLI_ASSOC);
    $filter_arr = [];
    foreach( $prods as $in => $pro ){
        if(strpos($pro['pprice'],'RS') !== false){
            $filter_arr[] = $pro;

            $replace = str_replace('RS','',$pro['pprice']);
            // $con->query("update product SET `pprice`='".$replace."' WHERE id=".$pro['id']);

        }
    }
    print_r($filter_arr);
    die('@test');
?>