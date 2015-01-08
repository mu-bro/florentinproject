<?php 
class ControllerInformationInformation extends Controller {
	public function index() {

	$this->data = array_merge( $this->data , $this->language->load('information/information'));
	
		$this->load->model('catalog/information');
		
		$this->data['breadcrumbs'] = array();
		
      	$this->data['breadcrumbs'][] = array(
        	'text'      => $this->language->get('text_home'),
			'href'      => $this->url->link('common/home'),
        	'separator' => false
      	);
		
		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}

		if (in_array($information_id,array(8,9,12))) {
			$this->document->addScript('catalog/view/javascript/jquery/jquery.maskedinput-1.3.min.js');
			$this->document->addScript('catalog/view/javascript/jquery/fancybox/jquery.fancybox.pack.js');
			$this->document->addStyle('catalog/view/javascript/jquery/fancybox/jquery.fancybox.css');
		}

		if ($information_id == 11) {
		$this->load->model('catalog/category');
		$this->load->model('catalog/product');
		$this->load->model('tool/image'); 			
			$data = array(
				'filter_category_id' => 59,
				'filter_filter'      => "",
				'filter_spec'        => 1,
				'sort'               => "p.sort_order",
				'order'              => "ASC",
				'start'              => 0,
				'limit'              => 3
			);

			$results = $this->model_catalog_product->getProducts($data);
			
			foreach ($results as $result) {
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('no_image.jpg', $this->config->get('config_image_product_width'), $this->config->get('config_image_product_height'));
				}
				if (($this->config->get('config_customer_price') && $this->customer->isLogged()) || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$price = false;
				}
				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')));
				} else {
					$special = false;
				}
				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price']);
				} else {
					$tax = false;
				}
				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}
				$short_descr_tmp = (empty($result['short_descr'])) ? $result['description'] : $result['short_descr'];
				$short_descr = utf8_substr(strip_tags(html_entity_decode($short_descr_tmp, ENT_QUOTES, 'UTF-8')), 0, 200);
				$short_descr .= (strlen($short_descr_tmp) > 200) ? "..." : "";
				$this->data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'isTwoDaysDelivery'        => $result['isTwoDaysDelivery'],
					'isNew'        => $result['isNew'],
					'short_descr' => $short_descr,
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'rating'      => $result['rating'],
					'reviews'     => sprintf($this->language->get('text_reviews'), (int)$result['reviews']),
					'href'        => $this->url->link('product/product', 'path=59product_id=' . $result['product_id'])
				);
			}
		}

		$this->data['information_id'] = $information_id;
		
		$information_info = $this->model_catalog_information->getInformation($information_id);
   		
		if ($information_info) {
			if ($information_info['seo_title']) {
				$this->document->setTitle($information_info['seo_title']);
			} else {
				$this->document->setTitle($information_info['title']);
			}
			$this->document->setDescription($information_info['meta_description']);
			$this->document->setKeywords($information_info['meta_keyword']);
			
      		$this->data['breadcrumbs'][] = array(
        		'text'      => $information_info['title'],
				'href'      => $this->url->link('information/information', 'information_id=' .  $information_id),      		
        		'separator' => $this->language->get('text_separator')
      		);		
						
			if ($information_info['seo_h1']) {
				$this->data['heading_title'] = $information_info['seo_h1'];
			} else {
				$this->data['heading_title'] = $information_info['title'];
			}
			
			$this->data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');
			$this->data['left_description'] = html_entity_decode($information_info['left_description'], ENT_QUOTES, 'UTF-8');
			$this->data['need_left_description'] = $information_info['need_left_description'];
      		
			$this->data['continue'] = $this->url->link('common/home');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/information.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/information/information.tpl';
			} else {
				$this->template = 'default/template/information/information.tpl';
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
    	} else {
      		$this->data['breadcrumbs'][] = array(
        		'text'      => $this->language->get('text_error'),
				'href'      => $this->url->link('information/information', 'information_id=' . $information_id),
        		'separator' => $this->language->get('text_separator')
      		);
				
	  		$this->document->setTitle($this->language->get('text_error'));

      		$this->data['continue'] = $this->url->link('common/home');

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/error/not_found.tpl')) {
				$this->template = $this->config->get('config_template') . '/template/error/not_found.tpl';
			} else {
				$this->template = 'default/template/error/not_found.tpl';
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
  	}
	
	public function info() {
		$this->load->model('catalog/information');
		
		if (isset($this->request->get['information_id'])) {
			$information_id = (int)$this->request->get['information_id'];
		} else {
			$information_id = 0;
		}      
		
		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {
			$output  = '<html dir="ltr" lang="en">' . "\n";
			$output .= '<head>' . "\n";
			$output .= '  <title>' . $information_info['title'] . '</title>' . "\n";
			$output .= '  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">' . "\n";
			$output .= '  <meta name="robots" content="noindex">' . "\n";
			$output .= '</head>' . "\n";
			$output .= '<body>' . "\n";
			$output .= '  <h1>' . $information_info['title'] . '</h1>' . "\n";
			$output .= html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8') . "\n";
			$output .= '  </body>' . "\n";
			$output .= '</html>' . "\n";			

			$this->response->setOutput($output);
		}
	}

	public function request() {
		$json = array();
		//p($this->request->post);
		if (
				isset($this->request->post['name']) &&
				isset($this->request->post['phone'])
			) {
			$json['error'] = array();

			if (empty($this->request->post['name'])) {
				$json['error']['name'] = "Пожалуйста, введите свое имя";
			}
			if (empty($this->request->post['phone'])) {
				$json['error']['phone'] = "Пожалуйста, введите свой телефон";
			}
/*			if (isset($this->request->post['company']) && empty($this->request->post['company'])) {
				$json['error']['company'] = "Пожалуйста, введите название компании";
			}*/			

			if (empty($json['error'])) {

				if (isset($this->request->post['company'])) {
					$html = "<h3>Корпоративный сервис - Вам пришла заявка</h3>

					Имя заявителя: <b>". $this->request->post['name'] ."</b><br/>
					Телефон заявителя: <b>". $this->request->post['phone'] ."</b><br/>
					Компания: <b>". $this->request->post['company'] ."</b><br/>
					";
				} else {
					$html = "<h3>Персональный заказ - Вам пришла заявка</h3>

					Имя заявителя: <b>". $this->request->post['name'] ."</b><br/>
					Телефон заявителя: <b>". $this->request->post['phone'] ."</b><br/>
					";
				}

				$mail = new Mail();
				$mail->protocol = $this->config->get('config_mail_protocol');
				$mail->parameter = $this->config->get('config_mail_parameter');
				$mail->hostname = $this->config->get('config_smtp_host');
				$mail->username = $this->config->get('config_smtp_username');
				$mail->password = $this->config->get('config_smtp_password');
				$mail->port = $this->config->get('config_smtp_port');
				$mail->timeout = $this->config->get('config_smtp_timeout');
				$mail->setTo($this->config->get('config_email'));
				$mail->setFrom($this->config->get('config_email'));
				$mail->setSender($this->request->post['name']);
				if (isset($this->request->post['company'])) {
					$mail->setSubject($this->config->get('config_name') . " - Корпоративный сервис - заявка");
				} else {
					$mail->setSubject($this->config->get('config_name') . " - Персональный заказ - заявка");
				}
				$mail->setHtml($html);
				$mail->send(true);

				$json['success'] = "Ваша заявка принята! Скоро с Вами свяжется наш менеджер. Спасибо.";
			}
		}


		$this->response->setOutput(json_encode($json));
	}
}
?>