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
        <div class="row">
          
          </div>
        </div>
        <div class="clearfix" style="margin-top:10px;"></div>
     	<table class="table table-bordered table-hover">
     		<thead>
     			<tr>
     				<th>TT</th>
     				<th>Username</th>
     				<th>Họ Tên</th>
            <th>Gói đầu tư</th>
            <th>khóa</th>
            <th>Ngày đầu tư</th>
            <th>Tổng nhánh trái / phải</th>
     				<th>Người bảo trợ</th>
            <th>Lịch sử</th>
     				<th>Sửa</th>
     			</tr>
     		</thead>
     		<tbody id="list">
          
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
  jQuery('.date').datetimepicker({
      pickTime: false
  });
  $('#submit_date').click(function(){
      jQuery('.loading').show();
      setTimeout(function(){ 
        var date_day = $('#date_day').val();
        $.ajax({
            url : "<?php echo $load_date ?>",
            type : "post",
            dataType:"text",
            data : {
                'date' : date_day
            },
            success : function (result){
                jQuery('#list').html(result);
                jQuery('.loading').hide();
            }
        });
      }, 100);
  });
  jQuery('#btn-filter').click(function(){
    jQuery('.loading').show();
    setTimeout(function(){ 
      var name = jQuery('#name').val();
      
      $.ajax({
        url : "<?php echo $link_search; ?>",
        type : "post",
        dataType:"html",
        data : {
            'name': name
        },
        success : function (result){
          $('#list').html(result);
          jQuery('.loading').hide();
        }
      
      });
    }, 100);
        
    }); 
    $("#name").keyup(function(){

        $.ajax({
        type: "POST",
        url: "<?php echo $getaccount;?>",
        data:'keyword='+$(this).val(),        
        success: function(data){
            $("#suggesstion-box").show();
            $("#suggesstion-box").html(data);
            $("#name").css("background","#FFF");            
        }
        });
    });
    $("#p_node").keyup(function(){
        $.ajax({
        type: "POST",
        url: "<?php echo $getaccount_username;?>",
        data:'keyword='+$(this).val(),        
        success: function(data){
            $("#suggesstion-box_username").show();
            $("#suggesstion-box_username").html(data);
            $("#p_node").css("background","#FFF");            
        }
        });
    });
    function selectU(val) {
         jQuery('.loading').show();
        $("#name").val(val);
        $("#suggesstion-box").hide();
        $.ajax({
        url : "<?php echo $link_search; ?>",
        type : "post",
        dataType:"html",
        data : {
            'name': val
        },
        success : function (result){
          $('#list').html(result);
          jQuery('.loading').hide();
        }
      
      });
    }
    function selectU_username(val) {
        jQuery('.loading').show();
        $("#p_node").val(val);
        $("#suggesstion-box_username").hide();
        $.ajax({
        url : "<?php echo $link_search_username; ?>",
        type : "post",
        dataType:"html",
        data : {
            'name': val
        },
        success : function (result){
          $('#list').html(result);
          jQuery('.loading').hide();
        }
      
      });
    }
    
</script>


<?php echo $footer; ?>