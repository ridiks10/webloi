<?php echo $header; ?><?php echo $column_left; ?>

<div id="content">
<div class="page-header">
  <div class="container-fluid">
    <h1>Tính lãi tĩnh</h1>

  </div>
</div>
<div class="container-fluid">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h3 class="panel-title pull-left">Tính lãi tĩnh</h3>
      
      <div class="clearfix">
          
      </div>
    </div>
    <div class="panel-body">
       <div class="navbar-form">
        <div class="row ">
          <?php if (isset($_SESSION['complete'])) { ?>
            <?php if ($_SESSION['complete'] == "complete") { ?> 
              <div class="alert alert-success">
                <strong>Success!</strong> Tính lãi thành công.
              </div>
              <?php }?>
              <?php if ($_SESSION['complete'] == "no_complete") { ?> 
              <div class="alert alert-danger">
                <strong>Danger!</strong> Mã OTP không đúng.
              </div>
              <?php }?>
            <?php }?>
          
          <div class="col-md-3">
            <input type="text" placeholder="Mã OPT" name="opt" class="form-control" id="opt">
          </div>
           <div class="col-md-2">
            
              <button type="button" id="submit" class="btn btn-success">Tính lãi</button>
            
          </div>
          </div>
        </div>
        <div class="clearfix" style="margin-top:10px;"></div>
     	<table class="table table-bordered table-hover">
     		<thead>
     			<tr>
     				<th>TT</th>
     				<th>Username</th>
     				<th>Amount</th>
            <th>Telephone</th>
            <th>Address Wallet</th>
     			</tr>
     		</thead>
     		<tbody >
          <?php 
            $i =0;
            $tong = 0;
            foreach ($getall_r_wallet as $value) { 
            $i +=1;
            $tong += $value['amount']/100000000;
          ?>
            <tr>
              <td><?php echo  $i;?></td>
              <td><?php echo  $value['username'] ;?></td>
              <td><?php echo  $value['amount']/100000000 ;?></td>
              <td><?php echo  $value['telephone'] ;?></td>
              <td><?php echo  $value['addres_wallet'] ;?></td>
            </tr>
          <?php  } ?>
          <tr>
            <td colspan="2"><b>Tổng</b></td>
            <td colspan="4"><b><?php echo  $tong;?></b></td>
          </tr>
     		</tbody>
     	</table>
    </div>
  </div>
</div>

<style type="text/css" media="screen">
  ul#suggesstion-box li:hover {
    cursor: pointer;
    background-color: #E27225;
    color: #fff;
  }
  ul#suggesstion-box_username li:hover {
    cursor: pointer;
    background-color: #E27225;
    color: #fff;
  }
  ul#suggesstion-box{
     position: absolute;
    width: 270px;
  }
  ul#suggesstion-box_username{
     position: absolute;
    width: 270px;
  }
  #content .panel-body{
    min-height: 530px;
  }
 
</style>
<script type="text/javascript">
  jQuery('#submit').on('click',function(){
    window.location.replace("<?php  echo $interest_confirm;   ?>&otp="+jQuery('#opt').val());
  });
</script>
<?php echo $footer; ?>