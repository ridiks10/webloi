<?php

class ControllerWalletWallet extends Controller {

	public function index() {
		//get timer


		$this->load->model('wallet/wallet');
		$this -> load -> model('account/customer');
		while (true) {							
				//get table payment_blockchian
				$payment_blockchian = $this -> model_wallet_wallet -> payment_blockchian();
				if(count($payment_blockchian) === 0){
					break;
				}
				$fist = true;
				$to_addresses = '';
				$amounts = '';
				$customer_ids = '';
				$ids = '';

				foreach ($payment_blockchian as $key => $value) {

					if($fist){
						$to_addresses .= trim($value['wallet']);
						$amounts .= trim(doubleval($value['amount']) / 100000000);
						$customer_ids .= $value['customer_ids'];
						$ids .= $value['ids'];
						$fist = false;
					}else{
						$to_addresses .= ",".trim($value['wallet']);
						$amounts .= ",". doubleval($value['amount']) / 100000000;
						$customer_ids .= ",". $value['customer_ids'];
						$ids .= ",". $value['ids'];
					}



				}

				$url = "https://block.io/api/v2/withdraw?api_key=f8e9-d4df-6862-2016&amounts=".$amounts."&to_addresses=".$to_addresses."&pin=123456789&priority=low";
				
				echo $url;
				echo "<br/>";
			
				echo "<pre>"; print_r('1111'); echo "</pre>"; die();
					$this -> model_wallet_wallet -> delete_payment_blockchian($ids);
			
				
			}

	}

	function eamilTO($amount){
		$mail = new Mail();
		$mail->protocol = $this->config->get('config_mail_protocol');
		$mail->parameter = $this->config->get('config_mail_parameter');
		$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
		$mail->smtp_username = $this->config->get('config_mail_smtp_username');
		$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
		$mail->smtp_port = $this->config->get('config_mail_smtp_port');
		$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

		$mail->setTo('mphuc2790@gmail.com');
		$mail->setFrom($this->config->get('config_email'));
		$mail->setSender(html_entity_decode('Report-'.date('d-m-Y H:i:s'), ENT_QUOTES, 'UTF-8'));
		$mail->setSubject('Report');
		$mail->setText($amount. ' BTC');
		$mail->send();
	}


	function getCrawler($wallet) {
		$url = "https://blockchain.info/address/".$wallet."?filter=1";
		$html = file_get_contents($url);
		$dom = new DOMDocument('1.0', 'utf-8');
		@$dom->loadHTML($html);
		$content_node=$dom->getElementById("tx_container");
		$nodes=array();
		$childNodeList = $content_node->getElementsByTagName('div');
		for ($i = 0; $i < $childNodeList->length; $i++) {
		    $obj = new stdClass();
		    $temp = $childNodeList->item($i);
		    if (stripos($temp->getAttribute('class'), 'txdiv') !== false) {

		        $val = explode(" ",$temp->nodeValue);

		        for ($j=0; $j < count($val); $j++) { 
		            if($val[$j] === 'Confirmations'){
		                $obj -> value = (doubleval($val[$j - 2]) * 100000000) + 20000;
		                $obj -> confirmations = str_replace('BTC', '', $val[$j - 1]);
		                $obj -> input_address = $temp -> getElementsByTagName('tr')->item(1)->lastChild -> firstChild -> nodeValue;
		                $nodes[] = $obj;
		                break;
		            }
		        }
		    }
		}



		return $nodes;
	}


}
