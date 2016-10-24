<?php 
   $self -> document -> setTitle('Investment'); 
   echo $self -> load -> controller('common/header'); 
   echo $self -> load -> controller('common/column_left'); 
   ?>
<div id="content-wrapper">
            <div class="row">
           <div class="col-lg-12">
   <!-- Form-validation -->

   <?php if ($invoice) { ?>
<div class="row" id="order-pin-history">
   <div class="col-lg-12">
      <div class="deposite deposite_green panel panel-filled" style="padding-bottom:20px;">
        
         <div class="panel-body">
          <div class="row">
         <div class="col-md-6 col-sm-6 col-xs-12 history-pin" style="margin-bottom:10px;">
            <div class="panel-provide">
               <div class="provide-heading">
                  <h4 style="padding-top:0px;"><b>Date Created: <?php echo date("Y-m-d H:i:A", strtotime($invoice['date_created'])); ?></b></h4>
               </div>
               <div class="provide-info" style="background:none; min-height:155px">
                  <?php if(intval($invoice['confirmations']) === 0) { ?>
                  <img style="float: right;" src="https://chart.googleapis.com/chart?chs=150x150&amp;chld=L|1&amp;cht=qr&amp;chl=bitcoin:<?php echo $invoice['input_address'] ?>?amount=<?php echo (doubleval($invoice['amount']) / 100000000) ?>"/>
                  <?php } ?>
                  <p>Code: <code><?php echo $invoice['invoice_id_hash'] ?> <i class="fa fa fa-dropbox fa-1x"></i></code></p>
                  <p>Total: <code><?php echo (doubleval($invoice['amount']) / 100000000) ?> <i class="fa fa-btc" aria-hidden="true"></i></code></p>
                  <p>Received: <code><?php echo (doubleval($invoice['received']) / 100000000) ?> <i class="fa fa-btc" aria-hidden="true"></i></code></p>
                  <p>Status: <span class="label <?php echo intval($invoice['confirmations']) === 0 ? "label-warning" : 'label-success' ?>"><?php echo intval($invoice['confirmations']) === 0 ? "Pending" : 'Finish' ?></span></p>
                  <p>Wallet: <code><?php echo $invoice['input_address'] ?></code></p>
               </div>
            </div>
         </div>
         
         </div>
         </div>
         
         <div class="clearfix"></div>
         <!-- /.panel-body -->
      </div>
      <!-- /.panel -->
   </div>
   <!-- /.col-lg-12 -->
</div>
<?php } ?>
</div>
<!-- End Row -->
<!-- End row -->
</div>
<?php echo $self->load->controller('common/footer') ?>