<?php
class ControllerSettingScript extends Controller {
	public function index() {
		$row = 1;
		$file = DIR_DOWNLOAD . "emails.csv";
		if (($handle = fopen($file, "r")) !== FALSE) {
			while (($data = fgetcsv($handle, 10000, ",")) !== FALSE) {			
				if (!isset($data[0]) || !$this->ocstore->validate($data[0])) continue;
				$email = $data[0];
				
				$code = $this->createCoupon($email);
				echo $email . " : ". $code ."<br/>";


				$template = new Template();
				$template->data['coupon'] = $code;
				$subject = "Получите скидку на нашем сайте!";
				$html = $template->fetch('mail/emailSpam.tpl');

				
				$mail = new Mail();
				$mail->protocol = $this->config->get('config_mail_protocol');
				$mail->parameter = $this->config->get('config_mail_parameter');
				$mail->hostname = $this->config->get('config_smtp_host');
				$mail->username = $this->config->get('config_smtp_username');
				$mail->password = $this->config->get('config_smtp_password');
				$mail->port = $this->config->get('config_smtp_port');
				$mail->timeout = $this->config->get('config_smtp_timeout');
				//$mail->setTo($email);
				//$mail->setTo("ilya.artamonov@b-leader.ru");
				//$mail->setTo("florentinproject@yandex.ru");
$mail->setTo("ilya.artamonov73@gmail.com");
				
				$mail->setFrom($this->config->get('config_email'));
				$mail->setSender($this->config->get('config_name'));
				$mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
				$mail->setHtml(html_entity_decode($html, ENT_QUOTES, 'UTF-8'));
				$mail->send();
echo $html;die;
				
				if ($row > 1) die('done 10');
				$row++;
			}
			fclose($handle);
		}
	}


	public function createCoupon($email) {
		$code = substr(base64_encode($email),0,9);
      	$this->db->query("INSERT INTO " . DB_PREFIX . "coupon SET
			name = 'Скидочный купон 10% для " . $this->db->escape($email) . "',
			code = '" . $code . "',
			discount = '10',
			type = 'P',
			total = '0',
			logged = '1',
			shipping = '0',
			date_start = '" . date("Y-m-d") . "',
			date_end = '" . date("Y-m-d", time() + 60*60*24*365*5 ) . "',
			uses_total = '0',
			uses_customer = '0',
			status = '1',
			date_added = NOW()
      	");

      	$coupon_id = $this->db->getLastId();
      	return $code;
	}
}
?>