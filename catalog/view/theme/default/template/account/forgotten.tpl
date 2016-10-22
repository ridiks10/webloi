
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Login Form</title>
    <link href="catalog/view/theme/default/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="catalog/view/theme/default/assets/css/core.css" rel="stylesheet" type="text/css">
    <link href="catalog/view/theme/default/assets/css/icons.css" rel="stylesheet" type="text/css">
    <link href="catalog/view/theme/default/assets/css/components.css" rel="stylesheet" type="text/css">
    <link href="catalog/view/theme/default/assets/css/pages.css" rel="stylesheet" type="text/css">
    <link href="catalog/view/theme/default/assets/css/menu.css" rel="stylesheet" type="text/css">
    <link href="catalog/view/theme/default/assets/css/responsive.css" rel="stylesheet" type="text/css">
  </head>

  <body>
    <div class="wrapper-page">

            <div class="text-center">
                <a href="index.html" class="logo-lg"><i class="md md-equalizer"></i> <span>Minton</span> </a>
            </div>

       
        <h1>Forgot Password</h1>
          <form action="/forgot.html" method="post" enctype="multipart/form-data" id="frm_login" class="form-horizontal text-center form-submit">
            
                      <input type="text" name="email" value="" id="input-email" placeholder="Your Username" id="input-password" class="form-control" />
                
               
             <?php
          

            $ranStr = md5(microtime());
            $ranStr = hexdec( crc32($ranStr));

            $ranStr = substr($ranStr, 0, 6);

            $_SESSION['cap_code'] = $ranStr;

             ?>
              
              <div class="" style="margin-top:20px;"></div>
               
               <img class="img_capcha" style="float: left" src="captcha_code.php"/>
                  
             <!--   <img class="cap_code_new" style="margin-left: 15px; margin-top: 5px; float: left"  src="catalog/view/theme/default/images/index3-46.png" alt=""> -->
                <input style="width: 150px; margin-left: px; float: right" autocomplete="off" type="text" name="capcha" placeholder="Capcha" id="input-password" value="" class="form-control" />
               <div class="clearfix" style="margin-top:20px;"></div>

            <div class="text-forgot">
               <div class="forgot pull-right" style="clear: both; "> <a href="<?php echo $back; ?>.html"  style="color: #fff; float:right; margin: 10px 0;">Account Login?</a></div>
            </div>
 
               <div class="form-actions text-center">
                   
                   <div class="clearfix" style="clear: both"></div>
                  <button class="btn btn-primary btn-block btn-large" type="submit">
                  
                  Reset <i class="m-icon-swapright m-icon-white"></i>
                  </button> 
                 
               </div>
            </fieldset>
         </form>
         <div class="form-group m-t-10" style="
          padding-bottom: 30px;font-size: 12px;"> <?php if ($error_warning) { ?>
        <div class="signup-alert">
            <?php echo $error_warning; ?>
        </div>

        <?php } ?>
            </div>
</div>
    
      
    
  </body>
</html>
