<?php 
require 'db.php';
$data = json_decode(file_get_contents('php://input'), true);
if(empty($data)){
    $data= $_POST;
}
if($data['mobile'] == '' or $data['ccode'] == '')
{
    $returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Something Went Wrong!");
}
else
{
    
    $search = $con->query("select * from user where mobile='".$data['mobile']."' and ccode='".$data['ccode']."'");
    
    if($search->num_rows != 0)
    {
        
        $otp = mt_rand(100000,999999);
    	$con->begin_transaction();
    	$cust = $search->fetch_assoc();
    	$update_otp = $con->query('UPDATE  `user` SET `active_otp`="'.$otp.'" WHERE id='.$cust['id']);
    	
    	$curl = curl_init();
    	curl_setopt_array($curl, array(
    		CURLOPT_URL => 'https://control.msg91.com/api/sendotp.php?authkey=302176AeEcfLaw5dc0355a&mobile='.$mobile.'&message=Mera%2520Theka%2520'.$otp.'&sender=OWNWAY&country=91&otp='.$otp.'&otp_length=6',
    		CURLOPT_RETURNTRANSFER => true,
    		CURLOPT_ENCODING => '',
    		CURLOPT_MAXREDIRS => 10,
    		CURLOPT_TIMEOUT => 0,
    		CURLOPT_FOLLOWLOCATION => true,
    		CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    		CURLOPT_CUSTOMREQUEST => 'POST',
    		CURLOPT_HTTPHEADER => array(
    		  'Content-Type: application/json; charset=utf-8',
    		  'authkey: 302176AeEcfLaw5dc0355a'
    		),
    	  ));
    	
    	$response = curl_exec($curl);
    	
    	$err = curl_error($curl);
    	if($err){
    		$con->rollback();
    		$return_arr = ['status'=>'error','mesg'=>$err];
    		echo json_encode($return_arr);
    		die();
    	}
    	curl_close($curl);
    	$con->commit();
            
    $returnArr = array("ResponseCode"=>"200","Result"=>"true","ResponseMsg"=>"Otp Send Successfully!!!");
    }
    else
  {
      $returnArr = array("ResponseCode"=>"401","Result"=>"false","ResponseMsg"=>"Mobile Number Not Registered!!");
  }
}
echo json_encode($returnArr);
?>