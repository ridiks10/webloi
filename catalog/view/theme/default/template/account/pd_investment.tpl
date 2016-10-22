<?php 
   if(!$notCreate) $self -> document -> setTitle($lang['text_blockchain_confirm'].' ' . ($bitcoin / 100000000).' BTC');
   else $self -> document -> setTitle("You can not create more orders !!!!");
   echo $self -> load -> controller('common/header'); 
   echo $self -> load -> controller('common/column_left'); 
   ?>
<section class="content">
   <div class="container-fluid">
       <div class="row">
           <div class="">
   
   <!-- Form-validation -->
   <div class="row">
      <div class="col-md-6">
         <div class="deposite deposite_red panel panel-filled">
            <div class="panel-body">
               <h3><?php echo $lang['text_blockchain'] ?></h3>
               <br/>
               <img src="https://chart.googleapis.com/chart?chs=200x200&amp;chld=L|1&amp;cht=qr&amp;chl=bitcoin:<?php echo $wallet ?>?amount=<?php echo ($bitcoin / 100000000) ?>"/>
               <br/>
               <h3><?php echo $lang['text_blockchain_wallet'] ?></h3>
               <br/>
               <h5 class="text-warning"><?php echo $wallet ?></h5>
               <br/>
               
               <p id="websocket"><?php echo $lang['text_blockchain_received'] ?>: 0 BTC</p>
            </div>
         </div>
      </div>
     
      <div class="col-md-6">
         <div class="deposite deposite_red panel panel-filled">
            <div class="provide-heading">
               <h3 class="panel-title pull-left">Detail Payment</h3>
            </div>
            <div class="clearfix" style="height:20px;"></div>
            <div class="panel-body">
            <div id="detail_payment" data-id="<?php echo $self->request->get['invoice_hash'] ?>" data-link="<?php echo $self->url->link('account/pd/get_detail_payment', '', 'SSL'); ?>"></div>
         </div>
            <div class="clearfix"></div>
            <!-- /.panel-body -->
         </div>
         <!-- /.panel -->
      </div>
      <!-- /.col-lg-12 -->
   </div>
   <!-- End Row -->
   <!-- End row -->
</div>

<script type="text/javascript">
   var str = 'We are waiting for 3 confirmation from <a style="color: #f0ad4e;" href="https://blockchain.info/" target="_blank">blokchain.info</a>';
   $('#websocket').html(str);
</script>

<?php echo $self->load->controller('common/footer') ?>