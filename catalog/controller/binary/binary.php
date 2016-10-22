<?php
class ControllerBinaryBinary extends Controller {

	private function getLeftBinary($customer_id){
		$this -> load -> model('account/customer');
		$count = $this -> model_account_customer ->  getCustomer_ML($customer_id);
		$left_id = $count['left'];
		if(intval($count['left']) === 0){
			$total = 0;
		}else{
			$count = $this -> model_account_customer -> getCount_ID_BinaryTreeCustom($count['left']);

			$count = substr($count, 1);
			$total = $this -> model_account_customer -> countPDLeft_Right($count);
			$total = doubleval($total['total']);

			$customer = $this -> model_account_customer -> getCustomer($left_id);
			$total += doubleval($customer['total_pd']);

			$total = $total / 100000000;
		}

		return $total;
	}

	private function getRightBinary($customer_id){
		$this -> load -> model('account/customer');
		$count = $this -> model_account_customer ->  getCustomer_ML($customer_id);
		$left_id = $count['right'];
		if(intval($count['right']) === 0){
			$total = 0;
		}else{
			$count = $this -> model_account_customer -> getCount_ID_BinaryTreeCustom($count['right']);

			$count = substr($count, 1);

			$total = $this -> model_account_customer -> countPDLeft_Right($count);
			$total = doubleval($total['total']);

			$customer = $this -> model_account_customer -> getCustomer($left_id);
			$total += doubleval($customer['total_pd']);
			
			$total = $total / 100000000;

		}

		return $total;
	}

	private function compareLeff_Right($left, $right){
		return $left <= $right ? 'left' : 'right';
	}

	private function getMaxPD_Customer($customer_id){
		$this -> load -> model('account/auto');
		$pd = $this -> model_account_auto -> getMaxPd($customer_id);
		return $pd;
	}

	private function update_C_Wallet($customer_id, $amount){
		$this -> load -> model('account/customer');

		$this -> model_account_customer -> update_C_Wallet($amount, $customer_id, true);
	}


	private function updateHistory($customer_id, $price, $tmp = 10, $nhanh_yeu_position, $maxPd, $pd){
		$this -> load -> model('account/customer');
		if(!$pd){
			$this -> model_account_customer -> 
				saveTranstionHistory($customer_id, 
					'C-wallet', '+ ' . ($price/100000000) . ' BTC', 
					"".$tmp."% Binary ".$nhanh_yeu_position." ".($maxPd / 100000000)." BTC");
		}else{
			$this -> model_account_customer -> 
				saveTranstionHistory($customer_id, 
					'C-wallet', '+ ' . ($price/100000000) . ' BTC', 
					"".$tmp."% Max deposit ".($maxPd / 100000000)." BTC");
		}
		
	}


	public function binary(){

		$this -> load -> model('account/auto');
		//get All Customer
		$customers = $this -> model_account_auto -> getAllCustomer_Binary();

		foreach ($customers as $key => $value) {
			$left = $value['total_pd_left'];

			$right = $value['total_pd_right'];

			$nhanh_yeu_position = $this -> compareLeff_Right($left, $right);
		
			$nhanh_yeu_price = $nhanh_yeu_position === 'left' ? $left : $right;

			//update C_Wallet nhanh yeu

			$maxPd = $this -> getMaxPD_Customer($value['customer_id']);

			$maxPd = ($maxPd['pd_max'] * 5);


			$max_Get_nhanh_yeu = $left - $right >= 0 ? $right : $left;


	

			$check_30Bitcoin = $nhanh_yeu_price >= 3000000000 ? true : false;

			if($max_Get_nhanh_yeu > $maxPd){
				if($check_30Bitcoin){

					//save history and update c-wallet
					$this -> update_C_Wallet($value['customer_id'], ($maxPd * 0.08));
					$this -> updateHistory($value['customer_id'], ($maxPd * 0.08), 8, $nhanh_yeu_position, $maxPd, true);
		
				}else{
					//
					$this -> update_C_Wallet($value['customer_id'], ($maxPd * 0.08));
					$this -> updateHistory($value['customer_id'], ($maxPd * 0.08), 8, $nhanh_yeu_position, $maxPd, true);
				}
				
			}else{
				if($check_30Bitcoin){
					$this -> update_C_Wallet($value['customer_id'], ($nhanh_yeu_price * 0.08));
					$this -> updateHistory($value['customer_id'], ($nhanh_yeu_price * 0.08), 8, $nhanh_yeu_position, $maxPd, false);
				}else{
					$this -> update_C_Wallet($value['customer_id'], ($nhanh_yeu_price * 0.08));
					$this -> updateHistory($value['customer_id'], ($nhanh_yeu_price * 0.08), 8, $nhanh_yeu_position, $maxPd,false);
				}
				
			}


			if($nhanh_yeu_position ===  'right'){
				$this -> model_account_auto -> update_Left_Count($value['customer_id']);
			}else{
				$this -> model_account_auto -> update_Right_Count($value['customer_id']);
			}


		}

	}
}