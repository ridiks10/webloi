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
                  <div class="col-md-12 col-sm-12 col-xs-12">
                     <div id="EditProfile" data-link="<?php echo $self -> url -> link('account/setting/account', '', 'SSL'); ?>" data-id="<?php echo $self->session -> data['customer_id'] ?>" >
                        <form id="updateProfile" action="<?php echo $self -> url -> link('account/setting/update_profile', '', 'SSL'); ?>" method="POST" novalidate="novalidate" class="form-horizontal group-border-dashed">
                           <div class="form-group">
                              <label class="col-md-3 control-label"><?php echo $lang['text_username'] ?></label>
                              <div class="col-md-6">
                                 <div class="input-group">
                                    <input class="form-control valid" id="UserName" name='username'  type="text" readonly='true' value="" data-link="<?php echo $self -> url -> link('account/register/checkuser', '', 'SSL'); ?>" />
                                    <span id="UserName-error" class="field-validation-error">
                                    <span></span>
                                    </span>
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <label class="col-md-3 control-label">Country</label>
                              <div class="col-md-6">
                                 <div class="input-group">
                                    <input class="form-control valid" id="Country" name='countryname'  type="text" readonly='true' value="" />
                                    <span id="UserName-error" class="field-validation-error">
                                    <span></span>
                                    </span>
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <label class="col-md-3 control-label"><?php echo $lang['text_email'] ?></label>
                              <div class="col-md-6">
                                 <div class="input-group">
                                    <input class="form-control" data-link="<?php echo $self -> url -> link('account/register/checkemail', '', 'SSL'); ?>" id="Email" name="email" readonly='true' type="text" value=""/>
                                    <span id="Email-error" class="field-validation-error">
                                    <span></span>
                                    </span>
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <label class="col-md-3 control-label"><?php echo $lang['text_phone'] ?></label>
                              <div class="col-md-6">
                                 <div class="input-group">
                                    <input data-link="<?php echo $self -> url -> link('account/register/checkphone', '', 'SSL'); ?>" class="form-control" id="Phone" readonly='true' name="telephone" type="text" value=""/>
                                    <span id="Phone-error" class="field-validation-error">
                                    <span></span>
                                    </span>
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <label class="col-md-3 control-label">Affiliate Since:</label>
                              <div class="col-md-6">
                                 <div class="input-group">
                                    <input type="text" id="Date" readonly='true' value="" placeholder="" spellcheck="false" class="form-control sbg info-city">
                                 </div>
                              </div>
                           </div>
                           <div class="form-group">
                              <label class="col-md-3 control-label">Last Login IP:</label>
                              <div class="col-md-6">
                                 <div class="input-group">
                                   
                                    <input type="text" id="LastIP" value="" readonly='true' placeholder="" spellcheck="false" class="form-control sbg info-region">
                                 </div>
                              </div>
                           </div>
      
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