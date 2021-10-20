<?php 
  require 'include/header.php';
  
  ?>
<?php 
function resizeImage($resourceType,$image_width,$image_height,$resizeWidth,$resizeHeight) {
    // $resizeWidth = 100;
    // $resizeHeight = 100;
    $imageLayer = imagecreatetruecolor($resizeWidth,$resizeHeight);
    $background = imagecolorallocate($imageLayer , 0, 0, 0);
        // removing the black from the placeholder
        imagecolortransparent($imageLayer, $background);

        // turning off alpha blending (to ensure alpha channel information
        // is preserved, rather than removed (blending with the rest of the
        // image in the form of black))
        imagealphablending($imageLayer, false);

        // turning on alpha channel information saving (to ensure the full range
        // of transparency is preserved)
        imagesavealpha($imageLayer, true);
    imagecopyresampled($imageLayer,$resourceType,0,0,0,0,$resizeWidth,$resizeHeight, $image_width,$image_height);
    return $imageLayer;
}
?>

  <body data-col="2-columns" class=" 2-columns ">
      <div class="layer"></div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    <div class="wrapper">


      <!-- main menu-->
      <!--.main-menu(class="#{menuColor} #{menuOpenType}", class=(menuShadow == true ? 'menu-shadow' : ''))-->
      <?php include('main.php'); ?>
      <!-- Navbar (Header) Ends-->

      <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!--Statistics cards Starts-->
  <div class="container">
      <div class="alert alert-error">
        <strong  id="err_msg"></strong> 
      </div>
  </div>
<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">Upload Csv Product</h4>
					
				</div>
				<div class="card-body">
					<div class="px-3">
						<form class="form" method="post" enctype="multipart/form-data">
							<div class="form-body">
								
								<div class="form-group">
									<label>select A Csv</label>
									<input type="file" name="csv" class="form-control-file" id="projectinput8">
								</div>

								
							</div>

							<div class="form-actions">
								
								<button type="submit" name="sub_cat" class="btn btn-raised btn-raised btn-primary">
									<i class="fa fa-check-square-o"></i> Upload Csv
								</button>
								
							</div>
							
						</form>
					</div>
				</div>
			</div>
		</div>

 <?php 
	if(isset($_POST['sub_cat']))
	{
		$csv = array();
    
      // check there are no errors
      if($_FILES['csv']['error'] == 0){
          $name = $_FILES['csv']['name'];
          $exp = explode('.',$name);
          $get_ext = end($exp);
          $ext = strtolower($get_ext);
          
          $type = $_FILES['csv']['type'];
          $tmpName = $_FILES['csv']['tmp_name'];
          $error ='';
          $err = 1;
          // check the file is a csv
          if($ext === 'csv'){
             
            if(($handle = fopen($tmpName, 'r')) !== FALSE) {
                // necessary if a large csv file
                set_time_limit(0);
                $row = 0;
                fgets($handle);
                $con->begin_transaction();
                while(($data = fgetcsv($handle, 1000, ',')) !== FALSE) {
                    // number of fields in the csv
                      $col_count = count($data);
            
                      date_default_timezone_set('Asia/Kolkata');
                      $timestamp = date("Y-m-d");
                          // get the values from the csv
                      $counts = $con->query("select * from subcategory where name='".$data[0]."'")->num_rows;
                      
                      $err++;
                      
                      if($error == ''){
                        if($counts != 0 )
                        {
                            // product/thump_1618402106.jpg
                        }
                        else 
                        {
                          $img = '';
                          if(!empty($data[2])){
                            $filePath = $data[2];
                            $extention = pathinfo($filePath, PATHINFO_EXTENSION);
                            $base = str_replace(' ','_',pathinfo($filePath, PATHINFO_FILENAME));
                            $time = time();

                            $img = 'sub-cat/s'.$base.'_'.$time.'.'.$extention;
                            $destinationFilePath = 'C:\xampp\htdocs\laravel-projects\SOS\Mera-theka\sub-cat\s'.$base.'_'.$time.'.'.$extention;

                            if( !copy($filePath, $destinationFilePath) ) {  
                              echo "File can't be copied!".$data[0];  
                            }
                            
                          }
                          
                            $chec_cat = $con->query("select * from category where catname='".$data[1]."'")->fetch_assoc();
                            $con->query("INSERT INTO `subcategory`(`cat_id`, `name`, `img`, `created_by`) VALUES (".$chec_cat['id'].",'".$data[0]."','".$img."',1)");
                        }
                      }else{
                        $con->rollback();
                      }
                          // inc the row
                      $row++;
                }
                
                if($error == ''){
                  $con->commit();
                }
                fclose($handle);
            }
              
        
		?>
        <script type="text/javascript">
          var error = <?php echo json_encode($error); ?>
          
          $(document).ready(function() {
            if(error == ''){
              toastr.options.timeOut = 4500; // 1.5s
              toastr.info('Import Product Successfully!!');
              setTimeout(function()
              {
                window.location.href="subcategorylist.php";
              },1500);
            }else{
              
              alert(error);
            }
              
          });
          </script> 
		<?php 
        }
      }
	  }
	?>
		
	</div>
	





          </div>
        </div>

        

      </div>
    </div>
    
    <?php 
  require 'include/js.php';
  ?>
   
 
  </body>


</html>