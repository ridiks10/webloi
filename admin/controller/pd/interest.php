<?php
class ControllerPdInterest extends Controller {
	public function index() {
		$this->document->setTitle('Tính lãi');
		$this->load->model('pd/pd');
		$data['getall_r_wallet'] = $this -> model_pd_pd ->getall_r_wallet();

		$data['token'] = $this->session->data['token'];
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['interest_confirm'] = $this->url->link('pd/interest/interest_confirm&token='.$this->session->data["token"]);
		$this->response->setOutput($this->load->view('pd/interes.tpl', $data));
	}
	
	public function interest_confirm(){

		if ($this->check_otp_login($this->request->get['otp']) == 1)
		{
			
			$this->load->model('pd/pd');
			$bitcoin ="";
			$wallet ="";
			$inser_history = "";
			$getall_r_wallet = $this -> model_pd_pd ->getall_r_wallet();
			foreach ($getall_r_wallet as $value) {
				$bitcoin .= ",".doubleval($value['amount'])/100000000;
	        	$wallet .= ",".$value['addres_wallet'];
	        	$inser_history .= ",".$this -> model_pd_pd -> inser_history('+ '.(($value['amount'])/100000000).' BTC','Day profit','2% from package ('.($value['amount']/1000000/2).' BTC)',$value['customer_id']);
			}
			
			$bitcoin = substr($bitcoin,1);
		    $wallet = substr($wallet,1);
		    
		   	$block_io = new BlockIo(key, pin, block_version); 

		    $tml_block = $block_io -> withdraw(array(
		        'amounts' => $bitcoin, 
		        'to_addresses' => $wallet,
		        'priority' => 'low'
		    )); 
		    $txid = $tml_block -> data -> txid;
		    $url = '<a target="_blank" href="https://blockchain.info/tx/'.$txid.'" >Link Transfer </a>';
		    $this ->model_pd_pd->update_transhistory(substr($inser_history,1),$url);

		    $this -> session -> data['complete'] = "complete";
			$this -> response -> redirect($this -> url -> link('pd/interest&token='.$this->session->data['token']));	
		}
		else{

			$this -> session -> data['complete'] = "no_complete";
			$this -> response -> redirect($this -> url -> link('pd/interest&token='.$this->session->data['token']));	
		}

	}
	public function check_otp_login($otp){
		require_once dirname(__FILE__) . '/vendor/autoload.php';
		$authenticator = new PHPGangsta_GoogleAuthenticator();
		$secret = "JBSWY3DPEHPK3PX2";
		$tolerance = "0";
		$checkResult = $authenticator->verifyCode($secret, $otp, $tolerance);    
		if ($checkResult) 
		{
		    return 1;
		     
		} else {
		    return 2;
		}

	}

	public function balanced(){
		$this->document->setTitle('Tính lãi');
		$this->load->model('pd/pd');
		$data['getallCustomer'] = $this -> model_pd_pd ->getallCustomer();
		$data['self'] = $this;
		$data['token'] = $this->session->data['token'];
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');
		$data['interest_confirm'] = $this->url->link('pd/interest/team_commission&token='.$this->session->data["token"]);
		$this->response->setOutput($this->load->view('pd/balanced.tpl', $data));
	}

	public function getmaxPD($customer_id){
		$this->load->model('pd/pd');
		return $this -> model_pd_pd ->getmaxPD($customer_id);
	}

	public function team_commission(){
        if ($this->check_otp_login($this->request->get['otp']) == 1)
		{
	        $this->load->model('pd/pd');
	        /*TÍNH HOA HỒNG NHÁNH YẾU*/
	        $getCustomer = $this -> model_pd_pd -> getCustomer_commission();
	        $bitcoin = "";
	        $wallet = "";
	        $inser_history = "";
	        $sum = 0;
	       foreach ($getCustomer as $value) {
	       
	        if ((doubleval($value['total_pd_left']) > 0 && doubleval($value['total_pd_right'])) > 0)
	        {
	            if (doubleval($value['total_pd_left']) > doubleval($value['total_pd_right'])){
	                $balanced = doubleval($value['total_pd_right']);
	                $this -> model_pd_pd -> update_total_pd_left(doubleval($value['total_pd_left']) - doubleval($value['total_pd_right']), $value['customer_id']);
	                $this -> model_pd_pd -> update_total_pd_right(0, $value['customer_id']);
	            }
	            else
	            {
	                $balanced = doubleval($value['total_pd_left']);
	                $this -> model_pd_pd -> update_total_pd_right(doubleval($value['total_pd_right']) - doubleval($value['total_pd_left']), $value['customer_id']);
	                $this -> model_pd_pd -> update_total_pd_left(0, $value['customer_id']);
	            }
	            
	            if (doubleval($balanced) <= 1000000000){
	                $precent = 8;
	            }
	            if ($balanced >= 1000000000){
	                $precent = 10;
	            }
	            if ($balanced >= 2000000000){
	                $precent = 12;
	            }
	            if ($balanced >= 5000000000){
	                $precent = 15;
	            }
	            $getTotalPD = $this-> model_pd_pd -> getmaxPD($value['customer_id']);
	            $amount = ($balanced*$precent)/100;

	            if (doubleval($amount) > (doubleval($getTotalPD['number'])*4))
	            {
	                $amount = (doubleval($getTotalPD['number']))*4;
	            }
	            if ($value['level'] == 2)
	            {
	                $sum += doubleval($amount)/100000000;
	                $bitcoin .= ",".doubleval($amount)/100000000*0.003;
	                $wallet .= ",".$value['wallet'];
	                $this -> model_pd_pd ->update_cn_Wallet_payment($amount,$value['customer_id'],$value['wallet']);
	                $inser_history .= ",".$this -> model_pd_pd -> inser_history('+ '.(($amount)/100000000).' BTC','System Commission','Earn '.$precent.'%  weak team ('.($balanced/100000000).' BTC) but 4 times the investment package, Free 0.3%',$value['customer_id']);
	            }
	            
	        }    
	    }
	    // print_r($inser_history);
	    // echo "<br/> btc".$bitcoin = substr($bitcoin,1);
	    // echo "<br/> wallet".$wallet = substr($wallet,1);
	    // echo "<br/> ".$sum;
		    $bitcoin = substr($bitcoin,1);
		    $wallet = substr($wallet,1);
		    $block_io = new BlockIo(key, pin, block_version); 

		    $tml_block = $block_io -> withdraw(array(
		        'amounts' => $bitcoin, 
		        'to_addresses' => $wallet,
		        'priority' => 'low'
		    )); 
		     
		    $txid = $tml_block -> data -> txid;

		    $url = '<a target="_blank" href="https://blockchain.info/tx/'.$txid.'" >Link Transfer </a>';

		    $this ->model_pd_pd->update_transhistory(substr($inser_history,1),$url);
		        //$this -> response -> redirect($this -> url -> link('account/gd', '', 'SSL'));
		    
	 	$this -> response -> redirect($this -> url -> link('pd/interest/balanced&token='.$this->session->data['token']));	
	}
		else{

			$this -> session -> data['complete'] = "no_complete";
			$this -> response -> redirect($this -> url -> link('pd/interest/balanced&token='.$this->session->data['token']));	
		}
	} 	
}