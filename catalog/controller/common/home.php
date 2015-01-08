<?php  
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));

		$this->data['heading_title'] = $this->config->get('config_title');
		
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/common/home.tpl';
		} else {
			$this->template = 'default/template/common/home.tpl';
		}
		
		$this->children = array(
			'common/column_left',
			'common/column_right',
			'common/content_top',
			'common/content_bottom',
			'common/footer',
			'common/header'
		);
										
		$this->response->setOutput($this->render());
	}

	public function subscribe() {

    	if ((utf8_strlen($this->request->post['email']) > 96) || !$this->ocstore->validate($this->request->post['email'])) {
      		$json['error'] = "Неправильно введён e-mail!";
    	}
    	$emailCount = $this->db->query("SELECT count(*) as total FROM " . DB_PREFIX . "subscribers WHERE email = '" . $this->request->post['email'] . "'")->row["total"];
    	if ($emailCount) {
      		$json['error'] = "Данный e-mail уже подписан на новости!";
    	}
    	if (!isset($json['error'])) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "subscribers SET email = '" . $this->request->post['email'] . "'");
			$json['success'] = "Ваш e-mail успешно подписан на новости!";
		}
    	$this->response->setOutput(json_encode($json));
		//p($this->request->post);
	}
}
?>