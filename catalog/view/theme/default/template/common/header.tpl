<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
   <head>
      <meta charset="UTF-8"/>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <title><?php echo $title; ?> </title>
      <meta http-equiv="cache-control" content="no-cache"/>
      <base href="<?php echo $base; ?>"/>
      <?php if ($description){ ?>
      <meta name="description" content="<?php echo $description; ?>"/>
      <?php } ?><?php if ($keywords){ ?>
      <meta name="keywords" content="<?php echo $keywords; ?>"/>
      <?php } ?>

      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <link rel="icon" href="catalog/view/theme/default/img/logo.png">
      <script src="catalog/view/theme/default/css/vendor/jquery/dist/jquery.min.js"></script>
      <script src="catalog/view/javascript/jquery/underscorejs/underscorejs.js" type="text/javascript"></script><script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script><script src="catalog/view/javascript/jquery/jquery.easyui.min.js" type="text/javascript"></script><script src="catalog/view/javascript/jquery/jquery-ui.js" type="text/javascript"></script><script src="catalog/view/javascript/jquery/jquery.quick.pagination.min.js" type="text/javascript"></script><script src="catalog/view/javascript/loading.js" type="text/javascript"></script><script src="catalog/view/javascript/bootstrap.min.js"></script><script src="catalog/view/javascript/jquery.nicescroll.js" type="text/javascript"></script><script src="catalog/view/javascript/jquery.app.js"></script>

     <!--  <link href="catalog/view/theme/default/css/bootstrap.min.css" rel="stylesheet">
      <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

     
       <link rel="stylesheet" href="catalog/view/theme/default/css/vendor/animate.css/animate.css"/>
      
       <link rel="stylesheet" href="catalog/view/theme/default/css/vendor/toastr/toastr.min.css"/>

      
       <link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900' rel='stylesheet' type='text/css'>
       <link rel="stylesheet" href="catalog/view/theme/default/css/styles/pe-icons/pe-icon-7-stroke.css"/>
       <link rel="stylesheet" href="catalog/view/theme/default/css/styles/pe-icons/helper.css"/>
       <link rel="stylesheet" href="catalog/view/theme/default/css/styles/stroke-icons/style.css"/>
       <link rel="stylesheet" href="catalog/view/theme/default/css/styles/style.css"> 
       <link href="catalog/view/theme/default/css/stylesheet.css" rel="stylesheet"> -->

    <!--  <link href="catalog/view/theme/default/css/style_bk.css" rel="stylesheet"> -->
      <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/style/css/bootstrap/bootstrap.min.css"/>
      <script src="js/demo-rtl.js"></script>
      <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/style/css/libs/font-awesome.css"/>
      <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/style/css/libs/nanoscroller.css"/>
      <link rel="stylesheet" type="text/css" href="catalog/view/theme/default/style/css/compiled/theme_styles.css"/>
      <link rel="stylesheet" href="catalog/view/theme/default/style/css/libs/fullcalendar.css" type="text/css"/>
      <link rel="stylesheet" href="catalog/view/theme/default/style/css/libs/fullcalendar.print.css" type="text/css" media="print"/>
      <link rel="stylesheet" href="catalog/view/theme/default/style/css/compiled/calendar.css" type="text/css" media="screen"/>
      <link rel="stylesheet" href="catalog/view/theme/default/style/css/libs/morris.css" type="text/css"/>
      <link rel="stylesheet" href="catalog/view/theme/default/style/css/libs/daterangepicker.css" type="text/css"/>
      <link rel="stylesheet" href="catalog/view/theme/default/style/css/libs/jquery-jvectormap-1.2.2.css" type="text/css"/>
      <link type="image/x-icon" href="favicon.png" rel="shortcut icon"/>
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400' rel='stylesheet' type='text/css'>
      <link href="catalog/view/theme/default/css/custom.min.css" rel="stylesheet">
      <script src="catalog/view/theme/default/style/js/demo-skin-changer.js"></script>  
      <script src="catalog/view/theme/default/style/js/jquery.js"></script>
      <script src="catalog/view/theme/default/style/js/bootstrap.js"></script>
      <script src="catalog/view/theme/default/style/js/jquery.nanoscroller.min.js"></script>
      <script src="catalog/view/theme/default/style/js/demo.js"></script>  
      <script src="catalog/view/theme/default/style/js/jquery-ui.custom.min.js"></script>
      <script src="catalog/view/theme/default/style/js/fullcalendar.min.js"></script>
      <script src="catalog/view/theme/default/style/js/jquery.slimscroll.min.js"></script>
      <script src="catalog/view/theme/default/style/js/raphael-min.js"></script>
      <script src="catalog/view/theme/default/style/js/morris.min.js"></script>
      <script src="catalog/view/theme/default/style/js/moment.min.js"></script>
      <script src="catalog/view/theme/default/style/js/daterangepicker.js"></script>
      <script src="catalog/view/theme/default/style/js/jquery-jvectormap-1.2.2.min.js"></script>
      <script src="catalog/view/theme/default/style/js/jquery-jvectormap-world-merc-en.js"></script>
      <script src="catalog/view/theme/default/style/js/gdp-data.js"></script>
      <script src="catalog/view/theme/default/style/js/flot/jquery.flot.js"></script>
      <script src="catalog/view/theme/default/style/js/flot/jquery.flot.min.js"></script>
      <script src="catalog/view/theme/default/style/js/flot/jquery.flot.pie.min.js"></script>
      <script src="catalog/view/theme/default/style/js/flot/jquery.flot.stack.min.js"></script>
      <script src="catalog/view/theme/default/style/js/flot/jquery.flot.resize.min.js"></script>
      <script src="catalog/view/theme/default/style/js/flot/jquery.flot.time.min.js"></script>
      <script src="catalog/view/theme/default/style/js/flot/jquery.flot.threshold.js"></script>
      <script src="catalog/view/theme/default/style/js/jquery.countTo.js"></script>
      <script src="catalog/view/theme/default/style/js/scripts.js"></script>
      <script src="catalog/view/theme/default/style/js/pace.min.js"></script>

      <?php foreach ($styles as $style) { ?>
      <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
      <?php } ?>
      <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
      <script type="text/javascript" src="catalog/view/javascript/jquery.simplyscroll.js"></script>
      <?php foreach ($scripts as $script) { ?>
      <script src="<?php echo $script; ?>" type="text/javascript"></script>
      <?php } ?>
      <?php echo $google_analytics; ?>
      <script type="text/javascript"> window.funLazyLoad={start:function(){$("#fakeloader").fakeLoader({timeToHide:99999999999,zIndex:"999",spinner:"spinne1",bgColor:"rgba(0,0,0,0.5)"})},reset:function(){$("#fakeloader").hide()},show:function(){$("#fakeloader").show()}};
         (function($) { $(function() { $("#scroller").simplyScroll({frameRate:'20'}); }); })(jQuery)
             
      </script>
      <script src="catalog/view/javascript/jquery.form.min.js" type="text/javascript"></script><script src="catalog/view/javascript/alertifyjs/alertify.js" type="text/javascript"></script>
      <link href="catalog/view/theme/default/css/al_css/alertify.css" rel="stylesheet">
      <script src="catalog/view/javascript/changeLang.js" type="text/javascript"></script><script type="text/javascript" src="catalog/view/javascript/bxslider/jquery.bxslider.js"></script>
      <!--  <script type="text/javascript"> $(function(){$("html").niceScroll({cursorwidth:"15px",cursorcolor:"blue"})}); </script> -->
      <script src="catalog/view/theme/default/css/vendor/pacejs/pace.min.js"></script>
      
      <script src="catalog/view/theme/default/css/vendor/bootstrap/js/bootstrap.min.js"></script>
      <script src="catalog/view/theme/default/css/vendor/toastr/toastr.min.js"></script>
      <script src="catalog/view/theme/default/css/vendor/sparkline/index.js"></script>
      <script src="catalog/view/theme/default/css/vendor/flot/jquery.flot.min.js"></script>
      <script src="catalog/view/theme/default/css/vendor/flot/jquery.flot.resize.min.js"></script>
      <script src="catalog/view/theme/default/css/vendor/flot/jquery.flot.spline.js"></script>
      <script src="catalog/view/javascript/luna.js"></script>
      <script src="catalog/view/theme/default/assets/js/waves.js"></script>
       
        <!-- Counter Up  -->
      

   </head>
   <body class="fixed-left">
      <div id="theme-wrapper">
         <header class="navbar" id="header-navbar">
            <div class="container">
               <a href="index-2.html" id="logo" class="navbar-brand">
               <img src="img/logo.png" alt="" class="normal-logo logo-white"/>
               <img src="img/logo-black.png" alt="" class="normal-logo logo-black"/>
               <img src="img/logo-small.png" alt="" class="small-logo hidden-xs hidden-sm hidden"/>
               </a>
               <div class="clearfix">
                  <button class="navbar-toggle" data-target=".navbar-ex1-collapse" data-toggle="collapse" type="button">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="fa fa-bars"></span>
                  </button>
                  <div class="nav-no-collapse navbar-left pull-left hidden-sm hidden-xs">
                     <ul class="nav navbar-nav pull-left">
                        <li>
                           <a class="btn" id="make-small-nav">
                           <i class="fa fa-bars"></i>
                           </a>
                        </li>
                     </ul>
                  </div>
                  <div class="nav-no-collapse pull-right" id="header-nav">
                     <ul class="nav navbar-nav pull-right">
                        <li class="dropdown profile-dropdown">
                           <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                           <img src="img/samples/scarlet-159.png" alt=""/>
                           <span class="hidden-xs"><?php echo $username['username']; ?></span> <b class="caret"></b>
                           </a>
                           <ul class="dropdown-menu">
                              <li><a href="user-profile.html"><i class="fa fa-user"></i>Profile</a></li>
                              <li><a href="#"><i class="fa fa-cog"></i>Settings</a></li>
                              <li><a href="#"><i class="fa fa-envelope-o"></i>Messages</a></li>
                              <li><a href="#"><i class="fa fa-power-off"></i>Logout</a></li>
                           </ul>
                        </li>
                        <li class="hidden-xxs">
                           <a class="btn">
                           <i class="fa fa-power-off"></i>
                           </a>
                        </li>
                     </ul>
                  </div>
               </div>
            </div>
         </header>
     <div id="page-wrapper" class="container">
            <div class="row">
               <div id="nav-col">