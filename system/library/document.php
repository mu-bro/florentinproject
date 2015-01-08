<?php
class Document {

	public function __construct($registry) {
		$this->config = $registry->get('config');
		$this->cart = $registry->get('cart');
		$this->db = $registry->get('db');
  	}
  	
	private $title;
	private $description;
	private $keywords;	
	private $links = array();		
	private $styles = array();
	private $scripts = array();
	private $og_image;

	public function setTitle($title) {
		$this->title = $title;
	}
	
	public function getTitle() {
		return $this->title;
	}
	
	public function setDescription($description) {
		$this->description = $description;
	}
	
	public function getDescription() {
		return $this->description;
	}
	
	public function setKeywords($keywords) {
		$this->keywords = $keywords;
	}
	
	public function getKeywords() {
		return $this->keywords;
	}
	
	public function addLink($href, $rel) {
		$this->links[md5($href)] = array(
			'href' => $href,
			'rel'  => $rel
		);			
	}
	
	public function getLinks() {
		return $this->links;
	}	
	
	public function addStyle($href, $rel = 'stylesheet', $media = 'screen') {
		$this->styles[md5($href)] = array(
			'href'  => $href,
			'rel'   => $rel,
			'media' => $media
		);
	}
	
	public function getStyles() {
		return $this->styles;
	}	
	
	public function addScript($script) {
		$this->scripts[md5($script)] = $script;			
	}
	
	public function getScripts() {
		return $this->scripts;
	}

	public function setOgImage($image) {
		$this->og_image = $image;
}

	public function getOgImage() {
		return $this->og_image;
	}

	public function getPossibleTime() {
		$allowTimes = array();
		for ($i=0;$i<=23;$i++) {
			for ($j=0;$j<60;$j ++) {
				$allowTimes[] = sprintf("%02d", $i) . ":" . sprintf("%02d", $j);
			}
		}
		return $allowTimes;
	}
	public function convert2unix($time) {
		$t = explode(':',$time);		
		$unix = $t[0] * 60 + $t[1];
		return $unix;
	}
	public function getHours($time) {
		$t = explode(':',$time);		
		return $t[0];
	}	
	public function calendarInit() {
		$weekends_tmp = $this->db->query("SELECT * FROM dates ORDER BY date")->rows;
		$weekends = array();
		foreach ($weekends_tmp as $date) {
			$weekends[] = $date['date'];
		}
		$cur_hour = date('H');
		
		$addingDay = ($cur_hour < $this->config->get("config_next_day_time")) ? 1 : 2;		
		foreach ($this->cart->getProducts() as $product) {
			if ($product['isTwoDaysDelivery']) {
				$addingDay += 1;
			}
		}
		$min_date = ($cur_hour < $this->config->get("config_next_day_time")) ? date("Y/m/d",strtotime("+$addingDay day")) : date("Y/m/d",strtotime("+$addingDay day"));
		
		$start_interval = $this->convert2unix( $this->config->get("config_start_interval") );
		//$strt_hours = 
		$end_interval = $this->convert2unix( $this->config->get("config_end_interval") );

		$allowTimes = array();
		//p($this->getHours($this->config->get("config_start_interval")),$this->config->get("config_minute_interval"));

		if ($this->config->get("config_minute_interval") > 60) {
			$hours = (int) floor($this->config->get("config_minute_interval") / 60);
			$minutes = $this->config->get("config_minute_interval") % 60;
		} else {
			$hours = 1;
			$minutes = $this->config->get("config_minute_interval");
		}
		

		for ($i=$this->getHours($this->config->get("config_start_interval"));$i<=23;$i++) {
			if ($minutes) {
				for ($j=0;$j<60;$j += $minutes) {
					$curr_date = sprintf("%02d", $i) . ":" . sprintf("%02d", $j);
					$curr_date_unix = $this->convert2unix( $curr_date );
					if ($start_interval <= $curr_date_unix && $end_interval >= $curr_date_unix) {
						$allowTimes[] = $curr_date;
					}
				}
			} else {
				$curr_date = sprintf("%02d", $i) . ":" . sprintf("%02d", 0);
				$curr_date_unix = $this->convert2unix( $curr_date );
				if ($start_interval <= $curr_date_unix && $end_interval >= $curr_date_unix) {
					$allowTimes[] = $curr_date;
				}
			}
			$i += $hours-1;
		}
	//	p($allowTimes);
		return array($weekends,$min_date,$allowTimes);
	}
}
?>