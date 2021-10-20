<?php 
session_start();
require 'include/dbconfig.php';
?>
<!DOCTYPE html>
<html lang="en" class="loading">
  
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   	 <meta name="viewport" content="width=device-width, initial-scale=1" />
        <link rel="shortcut icon"  href="<?php echo $fset['favicon'];?>">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <link href="https://fonts.googleapis.com/css?family=Rubik:300,400,500,700,900|Montserrat:300,400,500,600,700,800,900" rel="stylesheet">
    
    <link rel="stylesheet" type="text/css" href="app-assets/fonts/feather/style.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/fonts/simple-line-icons/style.css">
    <link rel="stylesheet" type="text/css" href="app-assets/fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/perfect-scrollbar.min.css">
    <link rel="stylesheet" type="text/css" href="app-assets/vendors/css/prism.min.css">
    
    <link rel="stylesheet" type="text/css" href="app-assets/css/app.css">
   
  </head>
  <body data-col="1-column" class=" 1-column  blank-page blank-page">
      <div class="layer"></div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    <div class="wrapper nav-collapsed menu-collapsed">
      <div class="main-panel">
        <div class="main-content">
          <div class="content-wrapper"><!--Login Page Starts-->
            <section >
                <div class="container-fluid">
                    <div class="row full-height-vh">
                        <div class="col-12 d-flex align-items-center justify-content-center">
                            <div class="card gradient-purple-bliss text-center">
                                <div class="mt-2">
                                    <img alt="element 06" class="mb-1" src="<?php echo $fset['logo'];?>" width="100">
                                </div>
                                <div class="card-body">
                                    <div class="card-block">
                                         <div>

                                            
                                            <div style="padding: 5%; text-align: justify; background-color: #1a1a1a; color: #958c8c;">

                                                <a href="DealerLogin" class="btn btn-primary" style="float:right" >
                                                   <i class="fa fa-backward"></i> Home Page
                                                </a>
                                                <?php echo $fset['privacy_policy']; ?>
                                                

                                            </div>

                                        </div>
                                    </div>
                                
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </section>

          </div>
        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->

    
   <?php 
   require 'include/js.php';
   ?>
   
  </body>


</html>