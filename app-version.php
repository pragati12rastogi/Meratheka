<?php 
require 'include/header.php';
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
 
                        <div class="row">
		                    <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title" id="basic-layout-form">App Version</h4>
					
				                    </div>
                                    <div class="card-body">
                                        <div class="px-3">
                                            <form class="form" method="post" enctype="multipart/form-data">
                                                <div class="form-body">
								

                                                    <?php 
                                                    $getkey = $con->query("select * from app_version")->fetch_assoc();
                                                    ?>

                                                    <div class="form-group">
                                                        <label for="app_version">App Version</label>
                                                        <input type="text" id="app_version" class="form-control"  name="app_version" value="<?php echo $getkey['app_version'];?>" required >
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="app_version">App ID</label>
                                                        <input type="text" id="app_id" class="form-control"  name="app_id" value="<?php echo $getkey['app_id'];?>" required >
                                                    </div>

								
                                                </div>

                                                <div class="form-actions">
                                                    
                                                    <button type="submit" name="sub_cat" class="btn btn-raised btn-raised btn-primary">
                                                        <i class="fa fa-check-square-o"></i> Update App Version
                                                    </button>
                                                </div>
							
							                    <?php 
                                                    if(isset($_POST['sub_cat'])){
                                                    $app_version = $_POST['app_version'];
                                                    $app_id = $_POST['app_id'];
                                                    
							
                                                    $con->query("update app_version set app_version='".$app_version."',app_id='".$app_id."' where id=1");

                                                ?>
						
							                    <script type="text/javascript">
                                                    $(document).ready(function() {
                                                        toastr.options.timeOut = 4500; // 1.5s
                                                        toastr.info('App Version Updated Successfully!!!');
                                                        window.location.href="app-version.php";
                                                        
                                                    });
                                                </script>
                                                <?php 
                                                    }
                                                ?>
						                    </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
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