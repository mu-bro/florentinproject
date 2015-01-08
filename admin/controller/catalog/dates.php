<?php
class ControllerCatalogDates extends Controller {
	private $error = array();

	public function index() {

		$this->data = array_merge( $this->data , $this->language->load('catalog/dates'));

		$this->document->setTitle($this->language->get('heading_title'));

		$this->getForm();
	}
	
	protected function getForm() {

		if ($this->request->server['REQUEST_METHOD'] == 'POST' && isset($this->request->post['dates'])) {
			$this->db->query("DELETE FROM dates");
			foreach ($this->request->post['dates'] as $date) {
				$this->db->query("INSERT INTO dates SET date = '". $date ."'");
			}
			$this->session->data['success'] = $this->language->get('text_success');
			$this->redirect($this->url->link('catalog/dates', 'token=' . $this->session->data['token'] , 'SSL'));
		}

        $this->document->addScript('view/javascript/jquery/datepicker/jquery.datetimepicker.js');
        $this->document->addStyle('view/javascript/jquery/datepicker/jquery.datetimepicker.css');

		if (isset($this->session->data['success'])) {
			$this->data['success'] = $this->session->data['success'];
			unset($this->session->data['success']);
		} else {
			$this->data['success'] = '';
		}        
				
  		$this->data['breadcrumbs'] = array();

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => false
   		);

   		$this->data['breadcrumbs'][] = array(
       		'text'      => $this->language->get('heading_title'),
			'href'      => $this->url->link('catalog/dates', 'token=' . $this->session->data['token'], 'SSL'),
      		'separator' => ' :: '
   		);

		$this->data['action'] = $this->url->link('catalog/dates', 'token=' . $this->session->data['token'], 'SSL');

		$this->data['dates'] = $this->db->query("SELECT * FROM dates ORDER BY date")->rows;
		//p($this->data['dates']);

		$this->template = 'catalog/dates_form.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
	}

}
?>