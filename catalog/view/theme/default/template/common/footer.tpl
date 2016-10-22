
        <script src="catalog/view/javascript/jquery.app.js"></script>

       
   </body>
   <script type="text/javascript">
  

	function confirmAction ( a_element, action ) {
	    alertify.confirm("Are you sure you want to invest you?", function(e) {
	        if (e) {
	           $(a_element).parent('form').submit();
	        }
	    });
	}
   	
   	/*$('.packet-invest').on('submit', function(){
   			
   		var self = $(this);
   		alertify.confirm('<p class="text-center" style="font-size:25px;color: black;text-transform: uppercase;height: 20px">Make sure your choice is correct !</p>',
		  function(){
		    window.funLazyLoad.start();
	   		setTimeout(function(){
				self.ajaxSubmit({
					success : function(result) {
						if (result == "no_6"){
							var xhtml = '<p class="text-center" style="font-size:25px;color: black;text-transform: uppercase;height: 20px">Smaller your weak team 50 BTC !</p>';
							jquery('#payment').html(result);
							window.funLazyLoad.reset();
							return false;
						}
						if (result == "no_7"){
							var xhtml = '<p class="text-center" style="font-size:25px;color: black;text-transform: uppercase;height: 20px">Smaller your weak team 100 BTC !</p>';
							alertify.alert(xhtml, function(){
							    location.reload(true);
							  });
							window.funLazyLoad.reset();
							return false;
						}
						if (result == "no_complete"){
							var xhtml = '<p class="text-center" style="font-size:25px;color: black;text-transform: uppercase;height: 20px">Please pay your investment package!</p>';
							alertify.alert(xhtml, function(){
							    location.reload(true);
							  });
							window.funLazyLoad.reset();
							return false;
						}
						result = $.parseJSON(result);
						console.log(result);
						var amount = result.amount / 100000000;
						var pin = result.pin / 100000000;
						var package = result.package / 100000000
						var total = package + pin;
						var xhtml = '<div class="col-md-12">Please send '+amount+' BTC to this address.</div><div class="col-md-6"><img style="margin-left:-10px" src="https://chart.googleapis.com/chart?chs=225x225&chld=L|0&cht=qr&chl=bitcoin:'+result.input_address+'?amount='+amount+'"/><p>'+result.input_address+'</p></div><div class="col-md-6"><p>Your Packet: '+package+' BTC</p><p>Pin: '+pin+' BTC</p><p>Total: '+ total +' BTC</p></div>'
						alertify.alert(xhtml, function(){
						    location.reload(true);
						  });
						
					}
				});
				check_payment();
			}, 200);
		  },
		  function(){
		});
   		return false;
   	});

   	$('.packet-invoide').on('submit', function(){
   		var self = $(this);
	    window.funLazyLoad.start();
   		setTimeout(function(){
			self.ajaxSubmit({
				success : function(result) {
					result = $.parseJSON(result);
					var amount = result.amount / 100000000;
					var pin = result.pin / 100000000;
					var package = result.package / 100000000
					var total = package + pin;
					var received = result.received / 100000000;
					var xhtml = '<div class="col-md-12">Please send '+amount+' BTC to this address.</div><div class="col-md-6"><img style="margin-left:-10px" src="https://chart.googleapis.com/chart?chs=225x225&chld=L|0&cht=qr&chl=bitcoin:'+result.input_address+'?amount='+amount+'"/><p>'+result.input_address+'</p></div><div class="col-md-6"><p>Your Packet: '+package+' BTC</p><p>Pin: '+pin+' BTC</p><p>Total: '+ total +' BTC</p><p></p>Paid amount: '+received+' BTC</div>'
					alertify.alert(xhtml, function(){
					    location.reload(true);
					  });
				}
			});
			//check_payment();
		}, 200);
   		return false;
   	});
	 function check_payment(){
	 	$.ajax({
	        url : "<?php //echo $check_payment ?>",
	        type : "post",
	        dataType:"text",
	        data : {
	           
	        },
	        success : function (result){
	            if (result == "3"){
	            	$('.ajs-btn.ajs-ok').trigger('click');
	            }
	            if (result == "0")
	            {
	            	setTimeout(function(){ check_payment(); }, 1500);
	            }

	        }
	    });
	 }*/
   </script>
  
   	<div class="clearfix"></div>
   
</html>