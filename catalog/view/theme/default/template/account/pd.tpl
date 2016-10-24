<?php $self -> document -> setTitle("Invesment Detail"); echo $self -> load -> controller('common/header'); echo $self -> load -> controller('common/column_left'); ?>
<div id="content-wrapper">
            <div class="row">
           <div class="col-lg-12">
      <?php if(count($pds) > 0){?> 
         <div class="">
            <div class="">
               <h3 class="pull-left">Investment actived</h3>
               <div class="clearfix"></div>
            </div>
            
            <div class="">
               <div class="row">
                  <div class="col-md-12 col-sm-12 col-xs-12" id="no-more-tables">
                     <table id="datatable" class="table table-striped table-bordered">
                        <thead>
                           <tr>
 							  <th>Code</th>
                              <th>Date Created</th>
                              <th>Packet</th>
                              <th>Profit</th>
                              <th>Time</th>
                           </tr>
                        </thead>
                        <tbody>
                           <?php foreach ($pds as $value=> $key){?> 
                           <tr>
        					<td data-title="Code">#<?php echo $key['pd_number'] ?></td>
                            <td data-title="Date Created"><?php echo date("Y-m-d H:i:A", strtotime($key['date_added'])); ?></td>
                              
                            <td data-title="Packet">
                              	<?php echo (doubleval($key['filled']) / 100000000) ?> BTC
                            </td>
                            <td data-title="Profit"> <?php echo (doubleval($key['max_profit']) / 100000000) ?> BTC</td>
                      
                            <td data-title="Time"> <span style="color:; font-size:15px;" class="text-warning countdown" data-countdown="<?php echo  $key['date_finish'] ?>"> </span> </td>
                           </tr>
                           <?php }?> 
                        </tbody>
                     </table>
                  </div>
               </div>
              
               
            </div>
         </div>
         <?php } ?>

         <div class="">
            <div class="" style="background:none">
               <h3>List of investment</h3>
            </div>
            <div class="row">
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
               <div id="payment" class="col-md-12"></div>
            </div>
         </div>
      </div>
   </div>
</div>

</div><?php echo $self->load->controller('common/footer') ?>