<?php 
   $self -> document -> setTitle($lang['heading_title']); 
   echo $self -> load -> controller('common/header'); 
   echo $self -> load -> controller('common/column_left'); 
   ?>
<div id="content-wrapper"> 
            <div class="row">
                    <div class="col-lg-12">
<div class="wraper container-fluid">
         <div class="">
            <div class="">
               <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12" id="EditProfile" data-link="<?php echo $self -> url -> link('account/setting/account', '', 'SSL'); ?>" data-id="<?php echo $self->session -> data['customer_id'] ?>" >
                     <?php if(!$customer['wallet']){ ?>
                     <div class="col-lg-6">
                        <form id="updateWallet" action="<?php echo $self -> url -> link('account/setting/updatewallet', '', 'SSL'); ?>" method="GET" novalidate="novalidate">
                           <div style="margin-bottom:20px">
                              <label for="BitcoinWalletAddress"><?php echo $lang['text_wallet_address'] ?></label>
                              <input class="form-control" id="BitcoinWalletAddress" name="wallet" type="text" data-link="<?php echo $self -> url -> link('account/account/main', '', 'SSL'); ?>"/>
                              <span id="BitcoinWalletAddress-error" class="field-validation-error">
                              <span></span>
                              </span>
                           </div>
                           <div style="margin-bottom:20px">
                              <label for="transaction_password"><?php echo $lang['transaction_pasword'] ?></label>
                              <input class="form-control" id="Password2" name="transaction_password" type="password"/>
                              <span id="Password2-error" class="field-validation-error">
                              <span></span>
                              </span>
                           </div>
                           <div class="loading">
                           </div>
                           <button type="submit" class="btn btn-primary"><?php echo $lang['wallet_btn'] ?></button>
                        </form>
                        <!-- /.col-lg-6 (nested) -->
                     </div>
                     <?php }else {?>
                     <div class="col-lg-6">
                        <div style="margin-bottom:20px">
                           <label for="BitcoinWalletAddress pull-left">Bitcoin Wallet Address</label>
                           <input readonly class="form-control" id="BitcoinWalletAddress" type="text"/>
                        </div>
                        <div id="bitcoin-image" data-img="https://chart.googleapis.com/chart?chs=200x200&amp;cht=qr&amp;chl=">
                           <div class="form-group">
                              <img style="border:1px solid #cecece"/>
                           </div>
                        </div>
                     </div>
                     <?php } ?>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</div>
</section>
<!-- End Row -->
<!-- End row -->
</div>
<script type="text/javascript">
   if (location.hash === '#success') {
      alertify.set('notifier','delay', 100000000);
      alertify.set('notifier','position', 'top-right');
      alertify.success('Update profile successfull !!!');
   }
   
</script>
<?php echo $self->load->controller('common/footer') ?>