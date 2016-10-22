<?php echo $header; ?>
<?php echo $column_left; ?>

<div id="content-wrapper">
            <div class="row">
          <div class="col-lg-12">

    <h3 class="title">Column Tree</h3>
  </div>
  <!-- Form-validation -->
      <div class="tab-content">
        <!-- <div class="panel-heading">
          <h3 class="panel-title">Downline Tree</h3>
        </div> -->
        <div id="tab-binary" class="tab-pane panel-body active">
          <div class="row" >
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="container-fluid">
                <fieldset>
                  <div class="personal_contain" style="padding:0px;" >
                    <div class="tootbar-top">
                      <ul class="list-unstyled">
                        <li style="margin-bottom:15px;">
                          <a class="" href="javascript:void(0)" onclick='click_node(
                          <?php echo intval($idCustomer); ?>)'> <span class="btn btn-default" style="font-weight:700"><?php echo $lang['top'] ?></span> </a>
                        
                          <a class="" href="javascript:void(0)" onclick='click_back()'> <span class="btn btn-default" style="font-weight:700">Back</span> </a>
                        </li>
                        
                      </ul>
                    </div>
                    <div class="clr"></div>
                    <div class="personal-tree" style="text-align: center; min-height:300px">
                      <img src="
                      <?php echo $self -> config -> get('config_ing_loading'); ?>" />
                    </div>
                    
                  </div>
                </fieldset>
              
              </div>
              <div class="detail-icon" style="margin-top: 50px;">
                          <img src="catalog/view/theme/default/stylesheet/icons/2.png" width="40px">- New User
                          <img src="catalog/view/theme/default/stylesheet/icons/6.png" width="40px"> - User Active
                         <img src="catalog/view/theme/default/stylesheet/icons/3.png" width="40px"> - Add New User
                        </div>
            </div>
          </div>
        </div>
      

                         


      </div>
    </div>
    <!-- End Row -->
  </div>
</div>
</section>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/css/tooltipster.bundle.min.css" />
<script type="text/javascript" src="catalog/view/javascript/tooltipster.bundle.min.js"></script>
<script type="text/javascript">

(function($) {

jQuery.fn.show_tree = function(node) {  

    positon = node.iconCls.split(" ");

    var line_class = positon[1]+'line '+'linefloor'+node.fl;
    var level_active = positon[0]+'iconLevel';

    var node_class = positon[1]+'_node '+'nodefloor'+node.fl;
    var html = '<div class=\''+line_class+'\'></div>';
// onclick=\'click_node('+node.id+')\' value=\''+node.id+'\'
    x_p = "<p>username: "+node.username+"<p>";
    // x_p += "<p>Email: "+node.email+"<p>";
    // x_p += "<p>Phone: "+node.telephone+"<p>";
    x_p += "<p>Date: "+node.date_added+"<p>";

    x_p += "<p>PD Binary Left: "+node.leftPD+" BTC</p>";
    x_p += "<p>PD Binary Right: "+node.rightPD+" BTC</p>";


    html += !node.empty 
        ? '<div class=\''+node_class+' '+level_active+'\'><a data-html="true" data-toggle="tooltip" rel="tooltip" data-placement="top" data-title="<p>'+x_p+'</p>" class="binaryTree" style="display:block"   \'><i class="fa fa-user type-'+node.level+'" onclick=\'click_node('+node.id+')\' value=\''+node.id+'\' aria-hidden="true"></i></a>' 
        : '<div class=\''+node_class+'\'><a data-toggle="tooltip" data-placement="top" style="display:block" onclick=\'click_node_add('+node.p_binary+', "'+positon[1]+'")\' value=\''+node.p_binary+'\' title="Add new user"><i class="fa fa-plus-square type-add"></i></a>';

    html += '<div id=\''+node.id+'\' ></div>';

    html += '</div>';

    $(this).append(html);

    node.children && $.each( node.children, function( key, value ) {
       $('#'+node.id).show_tree(value);

        $('[data-toggle="popover"]').popover();
    });



};


jQuery.fn.show_infomation = function(node) {  

  $.getJSON(
      "index.php?route=account/personal/getInfoUser&id="+node,
    function(data){
    $(this).find('dd').html('');      

      if(data.id !=0){

        $.each(data, function (k,v){
        $('#ajax_'+k).html(v);

      });     

      }

    }
  );

};

// xay dung cay voi id truyen vo

jQuery.fn.build_tree = function(id, method) {   

    $('.personal-tree').html('<img src="<?php echo $self -> config -> get('config_ing_loading'); ?>"  />');

    $.ajax({

      url: "index.php?route=account/personal/"+method,

      dataType: 'json',

      data: {id_user : id},

      success: function(json_data){

        var rootnode = json_data[0];
         $('.personal-tree').html('');

         $('.personal-tree').show_tree(rootnode);

         $('.personal_contain').show_infomation(rootnode.id);

         $('#current_top').html("Goto "+rootnode.name + "\'s");

      }

    }); 

};

})(jQuery);
  var click_node_add =  function (p_binary, positon){
    var link = '/register.html';
    link += '&p_binary=' + p_binary;
    link += '&postion='+ positon;
    link += '&token='+ '<?php echo $customer_code; ?>';
    location.href = link;
    
  };
   function click_node(id){
    jQuery(document).build_tree(id,'getJsonBinaryTree_Admin');
    $('.tooltip').hide();
    !_.contains(window.arr_lick, id) && window.arr_lick.push(id);
   }
   window.arr_lick = [];
   function click_back(){
      if(window.arr_lick.length === 0){
        click_node(<?php echo intval($idCustomer); ?>);

      }else{
        window.arr_lick = _.initial(window.arr_lick);
        typeof _.last(window.arr_lick) !== 'undefined' ? click_node(_.last(window.arr_lick)) : click_node(<?php echo intval($idCustomer); ?>);
      }
   }

function upto_level(id){

  var top = jQuery('.personal-tree'+id+' > div a').eq(0).attr('value');

  jQuery(document).build_tree(top,'getJsonBinaryTreeUplevel');

}

function goto_bottom_left(id){

  jQuery(document).build_tree(id,'goBottomLeft');

}

function goto_bottom_right(id){

  jQuery(document).build_tree(id,'goBottomRight');

}

function goto_bottom_left_oftop(id){

  var top = jQuery('.personal-tree'+id+' > div a').eq(0).attr('value');

  jQuery(document).build_tree(top,'goBottomLeft');

}

function goto_bottom_right_oftop(id){

  var top = jQuery('.personal-tree'+id+' > div a').eq(0).attr('value');

  jQuery(document).build_tree(top,'goBottomRight');

}

jQuery(document).ready(function($) {
  click_node(<?php echo intval($idCustomer);?>);
});

</script>

<?php echo $footer; ?>
<style type="text/css" media="screen">
  .tab-content{
    background: #fff;
  }
</style>