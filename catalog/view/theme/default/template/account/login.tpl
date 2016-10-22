
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

            <form action="login.html" method="post" class="form-horizontal m-t-10" class="no-margin">

                <div class="form-group">
                    <div class="col-xs-12">
                         <input  autocomplete="off" type="text" name="email" value="<?php echo $email; ?>" placeholder="Username" id="input-email" class="form-control" />
                        <i class="md md-account-circle form-control-feedback l-h-34"></i>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-12">
                        <input autocomplete="off" type="password" name="password" value="<?php echo $password; ?>" placeholder="Password" id="input-password" class="form-control" />
                        <i class="md md-vpn-key form-control-feedback l-h-34"></i>
                    </div>
                </div>
                <?php
                   $ranStr = md5(microtime());
                   $ranStr = hexdec( crc32($ranStr));
                   $ranStr = substr($ranStr, 0, 6);
                   $_SESSION['cap_code'] = $ranStr; 
                ?>
                <div class="form-group">
                    <div class="col-xs-12">
                      <img class="img_capcha" style="float: left" src="captcha_code.php"/>     
                           <input style="width:150px; float: right" autocomplete="off" type="text" name="capcha" placeholder="Capcha" id="input-password" value="" class="form-control" />  
                       
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-xs-12">
                        <div class="checkbox checkbox-primary">
                            <input id="checkbox-signup" type="checkbox">
                            <label for="checkbox-signup">
                                Remember me
                            </label>
                        </div>

                    </div>
                </div>

                <div class="form-group text-right m-t-20">
                    <div class="col-xs-12">
                        <button class="btn btn-primary btn-custom w-md waves-effect waves-light" type="submit">Log In
                        </button>
                    </div>
                </div>

                <div class="form-group m-t-30">
                    <div class="col-sm-7">
                        <a href="forgot.html" class="text-muted"><i class="fa fa-lock m-r-5"></i> Forgot your
                            password?</a>
                    </div>
                    
                </div>
                <div class="text-center">
                           <?php if ($redirect) { ?>
                              <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                              <?php } ?>
                           
                           <?php if ($success) { ?>
                           <div class="text-success"><i class="fa fa-check-circle"></i>
                              <?php echo $success; ?>
                           </div>
                           <?php } ?>
                           <?php if ($error_warning) { ?>
                           <div class="text-warning"><i class="fa fa-exclamation-circle"></i>
                              <?php echo $error_warning; ?>
                           </div>
                           <?php } ?>

                        </div>
            </form>
        </div>
  </body>
</html>
<style type="text/css">
  @media (max-width: 500px){
    .wrapper-page{
      width: 95%;
    }
  }
</style>