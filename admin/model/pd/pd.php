<?php
class ModelPdPd extends Model {

	public function get_all_gd_current_date($status){
		if ($status) {
			switch ($status) {
				case 1:
					$status = 0;
					break;
				case 2:
					$status = 1;
					break;
				default:
					$status = 2;
					break;
			}
			$query = $this->db->query("SELECT c.username, c.account_holder,c.account_number, c.bank_name, c.branch_bank,
				pd.*
			FROM ".DB_PREFIX."customer_provide_donation pd JOIN ".DB_PREFIX."customer  c
			ON pd.customer_id = c.customer_id WHERE date(pd.date_added)=CURRENT_DATE AND pd.status = ".$status."");
		return $query->rows;
		}else{
			$query = $this->db->query("SELECT  c.username, c.account_holder,c.account_number, c.bank_name, c.branch_bank,
				pd.*
			FROM ".DB_PREFIX."customer_provide_donation pd JOIN ".DB_PREFIX."customer  c
			ON pd.customer_id = c.customer_id WHERE date(pd.date_added)=CURRENT_DATE");
		return $query->rows;
		}
		
	}

	public function get_r_wallet() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer_r_wallet WHERE amount > 0");
		return $query->rows;
	}
	public function update_r_wallet($customer_id) {
		$query = $this->db->query("UPDATE " . DB_PREFIX . "customer_r_wallet SET amount = 0 where customer_id = '".$customer_id."'");
		return $query;
	}
	public function getCustomer($customer_id) {
		$query = $this->db->query("SELECT username, wallet FROM " . DB_PREFIX . "customer where customer_id = ".$customer_id."");
		return $query->row;
	}

	public function add_data_payment_blockchain($customer_id,$amount,$amount_fee,$wallet){
		$query = $this -> db -> query("
			INSERT INTO ". DB_PREFIX . "customer_payment_blockhain SET 
			customer_id = '".$customer_id."',
			amount = '".$amount."',
			amount_fee ='".$amount_fee."',
			wallet = '".$wallet."'
			
		");
		return $query;
	}
	public function get_tbl_payment_blockchain() {
		$query = $this->db->query("SELECT c.username, p.* FROM ".DB_PREFIX."customer_payment_blockhain p JOIN " . DB_PREFIX . "customer c
			ON p.customer_id = c.customer_id WHERE amount > 0");
		return $query->rows;
	}

	public function getall_r_wallet() {
		$query = $this->db->query("SELECT B.username,B.telephone,B.customer_id,A.* FROM " . DB_PREFIX . "customer_r_wallet_payment A INNER JOIN " . DB_PREFIX . "customer B ON A.customer_id = B.customer_id");
		return $query->rows;
	}
	public function inser_history($text_amount, $wallet,$system_decsription,$customer_id){
		$query = $this -> db -> query("
			INSERT INTO ". DB_PREFIX . "customer_transaction_history SET
			text_amount = '".$text_amount."',
			date_added = NOW(),
			wallet = '".$wallet."',
			system_decsription = '".$system_decsription."',
			customer_id = '".$customer_id."'
		");
		return $this->db->getLastId();
	}
	public function update_transhistory($ids,$url){
		$query = $this -> db -> query("
			UPDATE " . DB_PREFIX . "customer_transaction_history
				SET url = '".$url."' WHERE id IN (".$ids.")
		");
		return $query;
	}
	public function getallCustomer() {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer A LEFT JOIN " . DB_PREFIX . "customer_ml B ON A.customer_id = B.customer_id where total_pd_left > 0 AND total_pd_right > 0 AND level = 2");
		return $query->rows;
	}
	public function getmaxPD($id_customer){
		$query = $this -> db -> query("
			SELECT max(filled) AS number
			FROM  ".DB_PREFIX."customer_provide_donation
			WHERE customer_id = '".$this -> db -> escape($id_customer)."'
		");

		return $query -> row;
	}
	public function getCustomer_commission() {
		$query = $this -> db -> query("SELECT A.customer_id,A.total_pd_left,A.total_pd_right,A.wallet,A.username,B.level FROM " . DB_PREFIX . "customer A INNER JOIN " . DB_PREFIX . "customer_ml B ON A.customer_id=B.customer_id WHERE A.customer_id <> 1");
		return $query -> rows;
	}
	public function update_total_pd_left($amount, $cus_id){
		$query = $this -> db -> query("
		UPDATE ". DB_PREFIX ."customer SET
			total_pd_left = '".$amount."'
			WHERE customer_id = '".$cus_id."'
		");
		return $query;
	
	}
	public function update_total_pd_right($amount, $cus_id){
		$query = $this -> db -> query("
		UPDATE ". DB_PREFIX ."customer SET
			total_pd_right = '".$amount."'
			WHERE customer_id = '".$cus_id."'
		");
		return $query;
	
	}
	public function update_cn_Wallet_payment($amount,$customer_id,$addres_wallet){
		$query = $this -> db -> query("
		INSERT ". DB_PREFIX ."customer_cn_wallet_payment SET
			amount = ".doubleval($amount).",
			customer_id = '".doubleval($customer_id)."',
			status = 0,
			date_added =NOW(),
			addres_wallet = '".$addres_wallet."'
		");
		return $query;
	}
}