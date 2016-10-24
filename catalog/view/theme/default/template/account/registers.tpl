<?php
//$self -> document -> setTitle('Register User');
 echo $header; //echo $self->load->controller('common/column_left'); ?>
 </div>
 <div>
 <section id="col-left" class="col-left-nano">
     <div id="col-left-inner" class="col-left-nano-content">
     </div>
     </section>
 <div id="content-wrapper">
            <div class="row">
                <div class="col-md-8 col-md-push-2">

            <div class="heade-login text-center">
               <img src="catalog/view/theme/default/img/logo.pnag" alt="logo" style=" width:250px; margin-bottom: 20px;">
            </div>
            <div class="view-header">
                <div class="header-icon">
                    <i class="pe page-header-icon pe-7s-add-user"></i>
                </div>
                <div class="header-title">
                   
                </div>
            </div>

            <div class="panel panel-filled">
                <div class="panel-body">
                    <p>

                    </p>
      <?php if(!$p_binary) { ?>
      <form id="register-account" action="<?php echo $self -> url -> link('account/register', '', 'SSL'); ?>" class="form-horizontal" method="post" novalidate="novalidate">
         <?php  } else { ?>
      <form id="register-account" action="<?php echo $self -> url -> link('account/personal/register_submit', '', 'SSL'); ?>" class="form-horizontal" method="post" novalidate="novalidate">
         <?php }?>
         <?php if($p_binary) { ?>
         <input type="hidden" name="p_binary" value="<?php echo $p_binary ?>"/>
         <input type="hidden" name="postion" value="<?php echo $postion ?>">
         <?php } ?>
         <?php 
            if(intval($self -> checkBinaryLeft($self->request->get['p_binary'], $self->request->get['postion'])) === 1) { ?>
         <div class="">
            <div class="" style="border:0px;">
              
               <div class="row">
                   
                  
                     <div class="col-sm-6">
                       
                           
                              <!--<span class="input-group-addon">
                              <i class="fa fa-user email-icon login"></i>
                              </span>-->
                              <input type="hidden" class="form-control" name="node" value="<?php echo $self->request->get['token']; ?>">
                              <input class="form-control" placeholder="Your Username" name="username" id="username" value="" data-link="<?php echo $actionCheckUser; ?>">
                           
                           <span id="user-error" class="field-validation-error" style="display: none;">
                           <span>Please enter user name</span>
                           </span>
                       
                     </div>
                     <div class="col-sm-6">
                       
                           
                              <!--<span class="input-group-addon">
                              <i class="fa fa-envelope email-icon login"></i>
                              </span>-->
                              <input type="hidden" name="node" value="<?php echo $self->request->get['token']; ?>">
                              <input class="form-control" placeholder="Email Address" name="email" id="email" data-link="<?php echo $actionCheckEmail; ?>">
                           
                           <span id="email-error" class="field-validation-error" style="display: none;">
                           <span id="Email-error">Please enter Email Address</span>
                       
                     </div>
                     <div class="col-sm-6">
                        
                              <!--<span class="input-group-addon">
                              <i class="fa fa-phone email-icon login"></i>
                              </span>-->
                             <input class="form-control" placeholder="Phone Number" name="telephone" id="phone" data-link="<?php echo $actionCheckPhone; ?>">
                           
                           <span id="phone-error" class="field-validation-error" style="display: none;">
                           <span>Please enter Phone Number</span>
                       
                     </div>
                      <div class="col-sm-6">
                        
                              <!--<span class="input-group-addon">
                              <i class="fa fa-credit-card email-icon login"></i>
                              </span>-->
                            <input class="form-control" placeholder="Citizenship Card/Passport No" name="cmnd" id="cmnd" data-link="<?php echo $actionCheckCmnd; ?>">
                           
                           
                           
                           <span id="cmnd-error" class="field-validation-error" style="display: none;">
                           <span id="CardId-error">The Citizenship card/passport no field is required.</span>
                           </span>
                        
                     </div>
                 

                  
                      <div class="col-md-6">
                       
                              <!--<span class="input-group-addon">
                              <i class="fa fa-map-marker email-icon login"></i>
                              </span>-->
                           <select class="form-control" id="country" name="country_id">
                              <option value="">-- Choose your Country --</option>
                              <?php foreach ($country as $key=> $value) {?>
                              <option value="<?php echo $value['id'] ?>">
                                 <?php echo $value[ 'name'] ?>
                              </option>
                              <?php } ?>
                           </select>
                           
                           
                           
                         
                           <span id="country-error" class="field-validation-error" style="display: none;">
                           <span>The country field is required.</span>
                           </span>
                        
                     </div>
                      <div class="col-sm-6">
                        
                              <!--<span class="input-group-addon">
                              <i class="fa fa-lock password-icon"></i>
                              </span>-->
                            <input class="form-control" placeholder="Password For Login" id="password" name="password" type="password">
                          
                            <span id="password-error" class="field-validation-error" style="display: none;">
                           <span>Please enter password for login</span>
                           </span>
                        
                     </div>
                     
                     <div class="col-sm-6" style="display:none">
                        
                             <!-- <span class="input-group-addon">
                              <i class="fa fa-lock password-icon"></i>
                              </span>-->
                            <input value="123" class="form-control" id="password2" placeholder="Transaction Password" name="transaction_password" type="password">
                          
                           
                          <span id="password2-error" class="field-validation-error" style="display: none;">
                           <span>Please enter transaction password</span>
                           </span>
                       
                     </div>
                     <div class="form-group" style="display:none">
                        <div class="col-sm-12">
                           <div class="input-group">
                              <!--<span class="input-group-addon">
                              <i class="fa fa-lock password-icon"></i>
                              </span>-->
                             <input  value="123" class="form-control valid" placeholder="Repeat Transaction Password" id="confirmpasswordtransaction" type="password">
                           
                          
                           </div>
                          <span id="confirmpasswordtransaction-error" class="field-validation-error" style="display: none;">
                           <span>Repeat Transaction Password is not correct</span>
                           </span>
                           </span>
                        </div>
                     </div>
                     <div class="col-sm-6">
                        
                              <!--<span class="input-group-addon">
                              <i class="fa fa-bitcoin password-icon"></i>
                              </span>-->
                            <input class="form-control" id="BitcoinWalletAddress" placeholder="Bitcoin Wallet" data-link="<?php echo $actionWallet; ?>" name="wallet" type="text"/>
                                         
                          
                           
                         <span id="BitcoinWalletAddress-error" class="field-validation-error">
                                          <span></span>
                                          </span>
                       
                     </div>
                     <div class="col-sm-6">
                       
                              <!--<span class="input-group-addon">
                              <i class="fa fa-lock password-icon"></i>
                              </span>-->
                            <input class="form-control valid" placeholder="Repeat Password For Login" id="confirmpassword" type="password">
                           
                          
                           <span id="confirmpassword-error" class="field-validation-error" style="display: none;">
                           <span>Repeat Password For Login not correct</span>
                           </span>
                     </div>
                  </div>
                 
                  <div class="control-group form-group">
                     <div class="controls">
                        
                     </div>
                  </div>
                  <div class="text-center">
                     <div class="checkbox-inline">
                           <input id="agreeTerm" type="checkbox" value="true" style="margin-top: 4px;">
                           <label for="agreeTerm">Agree to our Terms and Condition</label>
                        </div>
                     <div id="success"></div>
                     <button type="submit" class="btn btn-primary">Register</button>
                  </div>
               
               </div>

            </div> <div class="text-center"><p>Copyrights © 2016 All Rights Reserved by Website., Inc</p></div>
         </div>
         <?php } else { ?>
         <div class="alert alert-danger" style="margin-top:100px;">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <strong>Warning!</strong> This branch has had! Please choose another branch!
         </div>
         <?php } ?>
      </form>
   </div>
</div>
<style type="text/css">
   
</style>
<script type="text/javascript">
   if (location.hash === '#success') {
      alertify.set('notifier','delay', 100000000);
      alertify.set('notifier','position', 'top-right');
      alertify.success('Create user successfull !!!');
   }
   
</script>
<?php echo $footer; ?>
<style type="text/css">
  #content-wrapper{
    margin-left: 0px;
  }
  #header-navbar{
    display: none
  }
  #content-wrapper {
    background: #2C3E50;
  }
  .panel-body {
    padding: 15px;
    padding-top: 40px;
    color: #fff;
    background: rgba(14, 14, 14, 0.23);
}
.panel {
    background-color:transparent;

</style>