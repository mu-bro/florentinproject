<?php
class ControllerPaymentCod extends Controller {
	protected function index() {

		$this->data['continue'] = $this->url->link('checkout/success');

		$this->data = array_merge( $this->data , $this->language->load('onecheckout/checkout'));
		
		$this->data['button_confirm']  = $this->data['button_confirmorder'];
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/cod.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/payment/cod.tpl';
		} else {
			$this->template = 'default/template/payment/cod.tpl';
		}	
		
		$this->render();
	}
	
	public function confirm() {
		$this->load->model('checkout/order');
		
		$this->model_checkout_order->confirm($this->session->data['order_id'], $this->config->get('cod_order_status_id'));
	}
}
?>