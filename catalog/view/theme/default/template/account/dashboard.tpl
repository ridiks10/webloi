<?php $self->document->setTitle("Home"); echo $self->load->controller('common/header'); echo $self->load->controller('common/column_left'); ?>
 <div id="content-wrapper">
            <div class="row">
                <div class="col-sm-12">
                    <div class="page-title-box">
                        
                        <h4 class="page-title">Welcome !</h4>
                    </div>
                </div>
            </div>
            <div class="row dashboard">
                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-btc red-bg"></i>
                     <span class="headline">Total Investment</span>
                     <span class="value">
                     <p class="m-0 counter pd-count" ><?php echo $countPD; ?> BTC</p>
                     </span>
                  </div>
               </div>
                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-btc red-bg"></i>
                     <span class="headline">2% Daily profit</span>
                     <span class="value">
                     <p class="m-0 counter c-wallet" ><?php echo $getR_Wallet_payment; ?> BTC</p>
                     </span>
                  </div>
               </div>
                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-btc red-bg"></i>
                     <span class="headline">Pairing bonus</span>
                     <span class="value">
                     <p class="m-0 counter r-wallet"><?php echo $getCNWallet ?> BTC</p>
                     </span>
                  </div>
               </div>
                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-btc red-bg"></i>
                     <span class="headline">Refferal bonus</span>
                     <span class="value">
                     <p class="m-0 counter cn-wallet"><?php echo $getCWallet ?> BTC</p>
                     </span>
                  </div>
               </div>
                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-user green-bg" aria-hidden="true"></i>
                     <span class="headline">ID / Left</span>
                     <span class="value">
                     <p class="m-0 counter total_left"><?php echo $total_binary_left ;?></p>
                     </span>
                  </div>
               </div>

                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-user green-bg" aria-hidden="true"></i>
                     <span class="headline">ID / Right</span>
                     <span class="value">
                     <p class="m-0 counter total_right"><?php echo $total_binary_right ?></p>
                     </span>
                  </div>
               </div>

                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-btc red-bg"></i>
                     <span class="headline">Volume - Left</span>
                     <span class="value">
                     <p class="m-0 counter total_pd_left" ><?php echo $total_pd_left; ?> BTC</p>
                     </span>
                  </div>
               </div>

                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-btc red-bg"></i>
                     <span class="headline">Volume - Right</span>
                     <span class="value">
                     <p class="m-0 counter total_pd_right"><?php echo $total_pd_right ?> BTC</p>
                     </span>
                  </div>
               </div>

                

            </div>

            
            <div class="" style="background:none">
               <h3>List of investment</h3>
            </div>
            <div class="row">
               <div class="">
                  <div class="plans-container text-center">
                    <!--  <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                       <div class="deposite deposite_red panel panel-filled">
                       <?php $packet = $self -> check_packet_pd (15000000) ;?>
                       <?php if(count($packet) > 0) { ?>
                          <div class="ribbon-wrapper">
                             <?php if (intval($packet['status']) === 0) {?>
                                <div class="ribbon-design red"   >Watting</div>
                             <?php } else { ?>
                                <div class="ribbon-design red">Actived</div>
                             <?php }?>
                          </div>
                       <?php }?>
                          <span class="deposite_title">60 days</span>
                          <div class="deposite_time_wrap">
                             <span class="deposite_time_wrap_text">2% Daily</span>
                             <div class="deposite_time">
                                <span class="deposite_time_digit">0.15</span>
                                <span class="deposite_time_text">BTC</span>
                             </div>
                          </div>
                       
                          <div class="deposite_info">
                             <span>60 days: 0.18 BTC + 0.15 BTC</span>
                             <br/>
                             <span>Daily profit: 0.003 BTC</span><br>
                             <span>
                                Fee : 0.01 BTC
                             </span>
                             <br/>
                             <?php if (count($packet) === 0) {?>
                                <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                   <input type="hidden" name="invest" value="0">
                                   <button class="btn btn-w-md btn-warning">Upgrade Now</button>
                                </form>
                             <?php } else {?>
                                <form method="POST" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>">
                                   <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>">
                                   <button class="btn btn-w-md btn-success">Reviews</button>
                                </form>
                             <?php } ?>
                             
                             
                          </div>
                       </div>
                    </div> -->

                     <!-- Personal plan -->
                     <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div class="deposite deposite_red panel panel-filled">
                          <?php $packet = $self -> check_packet_pd (30000000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design red"   >Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>

                           <span class="deposite_title">60 days</span>
                           <div class="deposite_time_wrap">
                              <span class="deposite_time_wrap_text">2% Daily</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">0.3</span>
                                 <span class="deposite_time_text">BTC</span>
                              </div>
                           </div>
                        
                           <div class="deposite_info">
                              <span>60 days: 0.36 BTC + 0.3 BTC</span>
                              <br/>
                              <span>Daily profit: 0.006 BTC</span><br>
                              <span>
                                Fee : 0.04 BTC
                              </span>
                              <br/>
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="1">
                                    <button onclick="confirmAction(this,'submit'); return false" class="btn btn-w-md btn-warning">Upgrade Now</button>
                                 </form>
                              <?php } else {?>
                                 <form method="POST" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>">
                                    <button class="btn btn-w-md btn-success">Reviews</button>
                                 </form>
                              <?php } ?>
                              
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div class="deposite deposite_orange panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (60000000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design red"   >Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                           <span class="deposite_title">60 days</span>
                           <div class="deposite_time_wrap">
                              <span class="deposite_time_wrap_text">2% Daily</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">0.6</span>
                                 <span class="deposite_time_text">BTC</span>
                              </div>
                           </div>
                      
                           <div class="deposite_info">
                              <span>60 days: 0.72 BTC + 0.6 BTC</span>
                              <br/>
                              <span>Daily profit: 0.012 BTC</span><br>
                              <span>
                                Fee : 0.08 BTC
                              </span>
                              <br/>
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="2">
                                    <button onclick="confirmAction(this,'submit'); return false" class="btn btn-w-md btn-warning">Upgrade Now</button>
                                 </form>
                              <?php } else {?>
                                 <form method="POST" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>">
                                    <button class="btn btn-w-md btn-success">Reviews</button>
                                 </form>
                              <?php } ?>
                           </div>
                          
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div class="deposite deposite_green panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (120000000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design red"   >Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                           <span class="deposite_title">60 days</span>
                           <div class="deposite_time_wrap">
                              <span class="deposite_time_wrap_text">2% Daily</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">1.2</span>
                                 <span class="deposite_time_text">BTC</span>
                              </div>
                           </div>
                      
                           <div class="deposite_info">
                              <span>60 days: 1.44 BTC + 1.2 BTC</span>
                              <br/>
                              <span>Daily profit: 0.024 BTC</span><br>
                              <span>
                                Fee : 0.16 BTC
                              </span>
                              <br/>
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="3">
                                    <button onclick="confirmAction(this,'submit'); return false" class="btn btn-w-md btn-warning">Upgrade Now</button>
                                 </form>
                              <?php } else {?>
                                 <form method="POST" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>">
                                    <button class="btn btn-w-md btn-success">Reviews</button>
                                 </form>
                              <?php } ?>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div class="deposite deposite_cyan panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (240000000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design red"   >Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                           <span class="deposite_title">60 days</span>
                           <div class="deposite_time_wrap">
                              <span class="deposite_time_wrap_text">2% Daily</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">2.4</span>
                                 <span class="deposite_time_text">BTC</span>
                              </div>
                           </div>
                           
                           <div class="deposite_info">
                              <span>60 days: 2.88 BTC + 2.4 BTC</span>
                              <br/>
                              <span>Daily profit: 0.048 BTC</span><br>
                              <span>
                                Fee : 0.32 BTC
                              </span>
                              <br/>
                               <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="4">
                                    <button onclick="confirmAction(this,'submit'); return false" class="btn btn-w-md btn-warning">Upgrade Now</button>
                                 </form>
                              <?php } else {?>
                                 <form method="POST" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>">
                                    <button class="btn btn-w-md btn-success">Reviews</button>
                                 </form>
                              <?php } ?>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div class="deposite deposite_blue panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (480000000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design red"   >Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                           <span class="deposite_title">60 days</span>
                           <div class="deposite_time_wrap">
                              <span class="deposite_time_wrap_text">2% Daily</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">4.8</span>
                                 <span class="deposite_time_text">BTC</span>
                              </div>
                           </div>
                         
                           <div class="deposite_info">
                              <span>60 days: 5.76 BTC + 4.8 BTC</span>
                              <br/>
                              <span>Daily profit: 0.096 BTC</span><br>
                              <span>
                                Fee : 0.64 BTC
                              </span>
                              <br/>
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="5">
                                    <button onclick="confirmAction(this,'submit'); return false" class="btn btn-w-md btn-warning">Upgrade Now</button>
                                 </form>
                              <?php } else {?>
                                 <form method="POST" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>">
                                    <button class="btn btn-w-md btn-success">Reviews</button>
                                 </form>
                              <?php } ?>
                           </div>
                     
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div class="deposite deposite_purple panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (960000000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design red"   >Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                           <span class="deposite_title">60 days</span>
                           <div class="deposite_time_wrap">
                              <span class="deposite_time_wrap_text">2% Daily</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">9.6</span>
                                 <span class="deposite_time_text">BTC</span>
                              </div>
                           </div>
                    
                           <div class="deposite_info">
                              <span>60 days: 11.52 BTC + 9.6 BTC</span>
                              <br/>
                              <span>Daily profit: 0.192 BTC</span><br>
                              <span>
                                Fee : 1.28 BTC
                              </span>
                              <br/>
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="6">
                                    <button onclick="confirmAction(this,'submit'); return false" class="btn btn-w-md btn-warning">Upgrade Now</button>
                                 </form>
                              <?php } else {?>
                                 <form method="POST" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>">
                                    <button class="btn btn-w-md btn-success">Reviews</button>
                                 </form>
                              <?php } ?>
                           </div>
              
                        </div>
                     </div>
                     <!-- <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div class="deposite deposite_purple panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (1920000000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design red"   >Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                           <span class="deposite_title">60 days</span>
                           <div class="deposite_time_wrap">
                              <span class="deposite_time_wrap_text">2% Daily</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">19.2</span>
                                 <span class="deposite_time_text">BTC</span>
                              </div>
                           </div>
                                         
                           <div class="deposite_info">
                              <span>60 days: 23.04 BTC + 19.2 BTC</span>
                              <br/>
                              <span>Daily profit: 0.384 BTC</span><br>
                              <span>
                                 Fee : 2.56 BTC
                              </span>
                              <br/>
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="7">
                                    <button class="btn btn-w-md btn-warning">Upgrade Now</button>
                                 </form>
                              <?php } else {?>
                                 <form method="POST" class="packet-invoide" action="<?php echo $self->url->link('account/pd/packet_invoide', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="<?php echo $packet['pd_number'] ?>">
                                    <button class="btn btn-w-md btn-success">Reviews</button>
                                 </form>
                              <?php } ?>
                           </div>
                                   
                        </div>
                     </div> -->
                  </div>
               </div>
            </div>
            

        </div>
    
<script type="text/javascript">
    if (location.hash === '#success') {
        alertify.set('notifier', 'delay', 100000000);
        alertify.set('notifier', 'position', 'top-right');
        alertify.success('Create user successfull !!!');
    }
</script>
<?php echo $self->load->controller('common/footer') ?>