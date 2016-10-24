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
                     <i class="fa fa-money red-bg"></i>
                     <span class="headline">Total Investment</span>
                     <span class="value">
                     <p class="m-0 counter pd-count" ><?php echo $countPD; ?> $</p>
                     </span>
                  </div>
               </div>
                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-money red-bg"></i>
                     <span class="headline">2% Daily profit</span>
                     <span class="value">
                     <p class="m-0 counter c-wallet" ><?php echo $getR_Wallet_payment; ?> $</p>
                     </span>
                  </div>
               </div>
                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-money red-bg"></i>
                     <span class="headline">Pairing bonus</span>
                     <span class="value">
                     <p class="m-0 counter r-wallet"><?php echo $getCNWallet ?> $</p>
                     </span>
                  </div>
               </div>
                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-money red-bg"></i>
                     <span class="headline">Refferal bonus</span>
                     <span class="value">
                     <p class="m-0 counter cn-wallet"><?php echo $getCWallet ?> $</p>
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
                     <i class="fa fa-money red-bg"></i>
                     <span class="headline">Volume - Left</span>
                     <span class="value">
                     <p class="m-0 counter total_pd_left" ><?php echo $total_pd_left; ?> $</p>
                     </span>
                  </div>
               </div>

                <div class="col-lg-3 col-sm-6 col-xs-12">
                  <div class="main-box infographic-box">
                     <i class="fa fa-money red-bg"></i>
                     <span class="headline">Volume - Right</span>
                     <span class="value">
                     <p class="m-0 counter total_pd_right"><?php echo $total_pd_right ?> $</p>
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
                    
                     <?php 
                        $url = "https://blockchain.info/tobtc?currency=USD&value=1";
                        $amount_btc = floatval(file_get_contents($url));
                      ?>
                     <!-- Personal plan -->
                     <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="deposite deposite_red panel panel-filled">
                          <?php $packet = $self -> check_packet_pd (100) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design">Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                           <i class="fa fa-money" aria-hidden="true" style="font-size:60px;"></i>
                           <br>
                           <h4>100$</h3>
                           <div class="deposite_time_wrap">
                              
                              <div class="deposite_time_wrap_text">Daily profit: 2%</div>
                              <span class="deposite_time_wrap_text">Refferal Commistion: 6%</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">System Commission: 0%</span>
                                 
                              </div>
                              <?php 
                                 echo $amount = "Current price: ".($amount_btc*100)." BTC";
                               ?>
                           </div>
                        
                           <div class="deposite_info">  
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="100">
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
                     <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="deposite deposite_orange panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (500) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design">Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                           <i class="fa fa-money" aria-hidden="true" style="font-size:60px;"></i>
                           <br>
                           <h4>500$</h3>
                           <div class="deposite_time_wrap">
                              <div class="deposite_time_wrap_text">Daily profit: 2%</div>
                              <span class="deposite_time_wrap_text">Refferal Commistion: 8%</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">System Commission: 8%</span>
                                 
                              </div>
                              <?php 
                                 echo $amount = "Current price: ".($amount_btc*500)." BTC";
                               ?>
                           </div>
                        
                           <div class="deposite_info">  
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="500">
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
                     <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="deposite deposite_green panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (1000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design">Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                           <i class="fa fa-money" aria-hidden="true" style="font-size:60px;"></i>
                           <br>
                           <h4>1000$</h3>
                           <div class="deposite_time_wrap">
                              <div class="deposite_time_wrap_text">Daily profit: 2%</div>
                              <span class="deposite_time_wrap_text">Refferal Commistion: 10%</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">System Commission: 8%</span>
                                 
                              </div>
                              <?php 
                                 echo $amount = "Current price: ".($amount_btc*1000)." BTC";
                               ?>
                           </div>
                        
                           <div class="deposite_info">  
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="1000">
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
                     <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="deposite deposite_cyan panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (2000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design">Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                           <i class="fa fa-money" aria-hidden="true" style="font-size:60px;"></i>
                           <br>
                           <h4>2000$</h3>
                           <div class="deposite_time_wrap">
                              <div class="deposite_time_wrap_text">Daily profit: 2%</div>
                              <span class="deposite_time_wrap_text">Refferal Commistion: 11%</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">System Commission: 8%</span>
                                 
                              </div>
                              <?php 
                                 echo $amount = "Current price: ".($amount_btc*2000)." BTC";
                               ?>
                           </div>
                        
                           <div class="deposite_info">  
                               <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="2000">
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
                     <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="deposite deposite_blue panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (3000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design">Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                          <i class="fa fa-money" aria-hidden="true" style="font-size:60px;"></i>
                           <br>
                           <h4>3000$</h3>
                           <div class="deposite_time_wrap">
                              <div class="deposite_time_wrap_text">Daily profit: 2%</div>
                              <span class="deposite_time_wrap_text">Refferal Commistion: 12%</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">System Commission: 8%</span>
                                 
                              </div>
                              <?php 
                                 echo $amount = "Current price: ".($amount_btc*3000)." BTC";
                               ?>
                           </div>
                        
                           <div class="deposite_info">  
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="3000">
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
                     <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="deposite deposite_purple panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (5000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design">Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                          <i class="fa fa-money" aria-hidden="true" style="font-size:60px;"></i>
                           <br>
                           <h4>5000$</h3>
                           <div class="deposite_time_wrap">
                              <div class="deposite_time_wrap_text">Daily profit: 2%</div>
                              <span class="deposite_time_wrap_text">Refferal Commistion: 13%</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">System Commission: 8%</span>
                                 
                              </div>
                              <?php 
                                 echo $amount = "Current price: ".($amount_btc*5000)." BTC";
                               ?>
                           </div>
                        
                           <div class="deposite_info">  
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="5000">
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
                     <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="deposite deposite_purple panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (10000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design">Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                          <i class="fa fa-money" aria-hidden="true" style="font-size:60px;"></i>
                           <br>
                           <h4>10000$</h3>
                           <div class="deposite_time_wrap">
                              <div class="deposite_time_wrap_text">Daily profit: 2%</div>
                              <span class="deposite_time_wrap_text">Refferal Commistion: 15%</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">System Commission: 8%</span>
                                 
                              </div>
                              <?php 
                                 echo $amount = "Current price: ".($amount_btc*10000)." BTC";
                               ?>
                           </div>
                        
                           <div class="deposite_info">  
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="10000">
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
                     <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                        <div class="deposite deposite_purple panel panel-filled">
                           <?php $packet = $self -> check_packet_pd (20000) ;?>
                           <?php if(count($packet) > 0) { ?>
                              <div class="ribbon-wrapper">
                                 <?php if (intval($packet['status']) === 0) {?>
                                    <div class="ribbon-design">Watting</div>
                                 <?php } else { ?>
                                    <div class="ribbon-design red">Actived</div>
                                 <?php }?>
                              </div>
                           <?php }?>
                          <i class="fa fa-money" aria-hidden="true" style="font-size:60px;"></i>
                           <br>
                           <h4>20000$</h3>
                           <div class="deposite_time_wrap">
                              <div class="deposite_time_wrap_text">Daily profit: 2%</div>
                              <span class="deposite_time_wrap_text">Refferal Commistion: 16%</span>
                              <div class="deposite_time">
                                 <span class="deposite_time_digit">System Commission: 8%</span>
                                 
                              </div>
                                 <?php 
                                 echo $amount = "Current price: ".($amount_btc*20000)." BTC";
                               ?>
                              
                           </div>
                        
                           <div class="deposite_info">  
                              <?php if (count($packet) === 0) {?>
                                 <form method="POST" class="packet-invest" action="<?php echo $self->url->link('account/pd/pd_investment', '', 'SSL'); ?>">
                                    <input type="hidden" name="invest" value="20000">
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