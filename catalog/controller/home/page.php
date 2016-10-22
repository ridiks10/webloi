<?php
class ControllerHomePage extends Controller {
	public function index() {

		$data['base'] = HTTPS_SERVER;
		$data['self'] = $this;
		if (file_exists(DIR_TEMPLATE . $this -> config -> get('config_template') . '/template/home/home.tpl')) {
			$this -> response -> setOutput($this -> load -> view($this -> config -> get('config_template') . '/template/home/home.tpl', $data));
		} else {
			$this -> response -> setOutput($this -> load -> view('default/template/home/home.tpl', $data));
		}
	}
	public function about() {

		$data['base'] = HTTPS_SERVER;
		$data['self'] = $this;
		if (file_exists(DIR_TEMPLATE . $this -> config -> get('config_template') . '/template/home/about.tpl')) {
			$this -> response -> setOutput($this -> load -> view($this -> config -> get('config_template') . '/template/home/about.tpl', $data));
		} else {
			$this -> response -> setOutput($this -> load -> view('default/template/home/about.tpl', $data));
		}
	}
	public function contact() {
		
		$data['base'] = HTTPS_SERVER;
		$data['self'] = $this;
		if (file_exists(DIR_TEMPLATE . $this -> config -> get('config_template') . '/template/home/contact.tpl')) {
			$this -> response -> setOutput($this -> load -> view($this -> config -> get('config_template') . '/template/home/contact.tpl', $data));
		} else {
			$this -> response -> setOutput($this -> load -> view('default/template/home/contact.tpl', $data));
		}
	}
	public function how() {

		$data['base'] = HTTPS_SERVER;
		$data['self'] = $this;
		if (file_exists(DIR_TEMPLATE . $this -> config -> get('config_template') . '/template/home/how.tpl')) {
			$this -> response -> setOutput($this -> load -> view($this -> config -> get('config_template') . '/template/home/how.tpl', $data));
		} else {
			$this -> response -> setOutput($this -> load -> view('default/template/home/how.tpl', $data));
		}
	}
	public function faq() {

		$data['base'] = HTTPS_SERVER;
		$data['self'] = $this;
		if (file_exists(DIR_TEMPLATE . $this -> config -> get('config_template') . '/template/home/faq.tpl')) {
			$this -> response -> setOutput($this -> load -> view($this -> config -> get('config_template') . '/template/home/faq.tpl', $data));
		} else {
			$this -> response -> setOutput($this -> load -> view('default/template/home/faq.tpl', $data));
		}
	}
	public function partners() {

		$data['base'] = HTTPS_SERVER;
		$data['self'] = $this;
		if (file_exists(DIR_TEMPLATE . $this -> config -> get('config_template') . '/template/home/partners.tpl')) {
			$this -> response -> setOutput($this -> load -> view($this -> config -> get('config_template') . '/template/home/partners.tpl', $data));
		} else {
			$this -> response -> setOutput($this -> load -> view('default/template/home/partners.tpl', $data));
		}
	}
	public function support() {
die();
		$data['base'] = HTTPS_SERVER;
		$data['self'] = $this;
		if (file_exists(DIR_TEMPLATE . $this -> config -> get('config_template') . '/template/home/support.tpl')) {
			$this -> response -> setOutput($this -> load -> view($this -> config -> get('config_template') . '/template/home/support.tpl', $data));
		} else {
			$this -> response -> setOutput($this -> load -> view('default/template/home/support.tpl', $data));
		}
	}
	public function supportSubmit(){
die();
		$email = $this->request->post['Mail'];
		$subject = $this->request->post['Topic'];
		$comments = $this->request->post['Message'];

		//$email = "mmo.hyipcent@gmail.com";
			$mail = new Mail();
				$mail -> protocol = $this -> config -> get('config_mail_protocol');
				$mail -> parameter = $this -> config -> get('config_mail_parameter');
				$mail -> smtp_hostname = $this -> config -> get('config_mail_smtp_hostname');
				$mail -> smtp_username = $this -> config -> get('config_mail_smtp_username');
				$mail -> smtp_password = html_entity_decode($this -> config -> get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
				$mail -> smtp_port = $this -> config -> get('config_mail_smtp_port');
				$mail -> smtp_timeout = $this -> config -> get('config_mail_smtp_timeout');

				//$mail -> setTo($this -> config -> get('config_email'));
				$mail -> setTo('admin@coinmax.biz');
				$mail -> setFrom($this -> config -> get('config_email'));
				$mail -> setSender(html_entity_decode("Coinmax, Inc", ENT_QUOTES, 'UTF-8'));
				$mail -> setSubject("Support!");
				$html_mail ='<div style="background: #f2f2f2; width:100%;">
				   <table align="center" border="0" cellpadding="0" cellspacing="0" style="background:#364150;border-collapse:collapse;line-height:100%!important;margin:0;padding:0;
				    width:700px; margin:0 auto">
				   <tbody>
				      <tr>
				        <td>
				          <div style="text-align:center" class="ajs-header"><img  src="'.HTTPS_SERVER.'/catalog/view/theme/default/img/logo.png" alt="logo" style="margin: 0 auto; width:150px;"></div>
				        </td>
				       </tr>
				       <tr>
				       <td style="background:#fff">
				       	<p class="text-center" style="font-size:20px;color: black;text-transform: uppercase; width:100%; float:left;text-align: center;margin: 30px 0px 0 0;">Support !<p>
				       	<p class="text-center" style="color: black; width:100%; float:left;text-align: center;line-height: 15px;margin-bottom:30px;"></p>
       	<div style="width:600px; margin:0 auto; font-size=15px">

					       	<p style="font-size:14px;color: black;margin-left: 70px;">Your Username: <b>'.$email.'</b></p>
					       	<p style="font-size:14px;color: black;margin-left: 70px;">Email Address: <b>'.$subject.'</b></p>
					       	<p style="font-size:14px;color: black;margin-left: 70px;">Phone Number: <b>'.$comments.'</b></p>
					      
					          </div>
				       </td>
				       </tr>
				    </tbody>
				    </table>
				  </div>';
				$mail -> setHtml($html_mail); 
				//$mail -> send();
				$this->response->redirect(HTTPS_SERVER . 'support.html');
	}
}