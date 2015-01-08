<?php
class User {
	private $user_id;
	private $username;
	private $user_group_id;
	private $store_id;
  	private $permission = array();

  	public function __construct($registry) {
		$this->db = $registry->get('db');
		$this->request = $registry->get('request');
		$this->session = $registry->get('session');
		
    	if (isset($this->session->data['user_id'])) {
			$user_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "user WHERE user_id = '" . (int)$this->session->data['user_id'] . "' AND status = '1'");
			
			if ($user_query->num_rows) {
				$this->user_id = $user_query->row['user_id'];
				$this->username = $user_query->row['username'];
				$this->user_group_id = $user_query->row['user_group_id'];
				$this->store_id = $user_query->row['store_id'];
				
      			$this->db->query("UPDATE " . DB_PREFIX . "user SET ip = '" . $this->db->escape($this->request->server['REMOTE_ADDR']) . "' WHERE user_id = '" . (int)$this->session->data['user_id'] . "'");

      			$user_group_query = $this->db->query("SELECT permission FROM " . DB_PREFIX . "user_group WHERE user_group_id = '" . (int)$user_query->row['user_group_id'] . "'");
				
	  			$permissions = unserialize($user_group_query->row['permission']);

				if (is_array($permissions)) {
	  				foreach ($permissions as $key => $value) {
	    				$this->permission[$key] = $value;
	  				}
				}
			} else {
				$this->logout();
			}
    	}
  	}
		
  	public function login($username, $password) {
    	$user_query = $this->db->query("SELECT * FROM " . DB_PREFIX . "user WHERE username = '" . $this->db->escape($username) . "' AND (password = SHA1(CONCAT(salt, SHA1(CONCAT(salt, SHA1('" . $this->db->escape($password) . "'))))) OR password = '" . $this->db->escape(md5($password)) . "') AND status = '1'");

    	if ($user_query->num_rows) {
			$this->session->data['user_id'] = $user_query->row['user_id'];
			$this->session->data['user_store_id'] = $user_query->row['store_id'];
			$this->session->data['user_group_id'] = $user_query->row['user_group_id'];
			
			$store = $this->getStore($this->session->data['user_store_id']);
			$this->session->data['user_store'] = $store['config_name'] . " ( $store[country] - $store[zone] ) ";
			
			$this->user_id = $user_query->row['user_id'];
			$this->username = $user_query->row['username'];
			$this->store_id = $user_query->row['store_id'];

      		$user_group_query = $this->db->query("SELECT permission FROM " . DB_PREFIX . "user_group WHERE user_group_id = '" . (int)$user_query->row['user_group_id'] . "'");

	  		$permissions = unserialize($user_group_query->row['permission']);

			if (is_array($permissions)) {
				foreach ($permissions as $key => $value) {
					$this->permission[$key] = $value;
				}
			}
		
      		return true;
    	} else {
      		return false;
    	}
  	}

  	public function getStores() {
		$stores = $this->db->query("SELECT value, store_id,`key`  FROM " . DB_PREFIX . "setting WHERE `key` IN ('config_name','config_country_id','config_zone_id')")->rows;
		foreach($stores as $k => $v) {
			$store_sities[$v['store_id']][$v['key']] = $v['value'];
			if ($v['key'] == "config_country_id") {
				$store_sities[$v['store_id']]['country'] = $this->db->query("SELECT name FROM " . DB_PREFIX . "country WHERE country_id = '" . (int)$v['value'] . "'")->row['name'];
			}
			if ($v['key'] == "config_zone_id") {
				$store_sities[$v['store_id']]['zone'] = $this->db->query("SELECT name FROM " . DB_PREFIX . "zone WHERE zone_id = '" . (int)$v['value'] . "'")->row['name'];
			}
		}
		return $store_sities;
	}

  	public function getStore($store_id) {
		$stores = $this->db->query("SELECT value, store_id,`key`  FROM " . DB_PREFIX . "setting WHERE `key` IN ('config_name','config_country_id','config_zone_id') AND store_id = $store_id")->rows;
		foreach($stores as $k => $v) {
			$store_sities[$v['store_id']][$v['key']] = $v['value'];
			if ($v['key'] == "config_country_id") {
				$store_sities[$v['store_id']]['country'] = $this->db->query("SELECT name FROM " . DB_PREFIX . "country WHERE country_id = '" . (int)$v['value'] . "'")->row['name'];
			}
			if ($v['key'] == "config_zone_id") {
				$store_sities[$v['store_id']]['zone'] = $this->db->query("SELECT name FROM " . DB_PREFIX . "zone WHERE zone_id = '" . (int)$v['value'] . "'")->row['name'];
			}
		}
		return $store_sities[$store_id];
	}	

  	public function logout() {
		unset($this->session->data['user_id']);
	
		$this->user_id = '';
		$this->username = '';
		$this->user_group_id = '';
		$this->store_id = '';
		
		session_destroy();
  	}

  	public function hasPermission($key, $value) {
    	if (isset($this->permission[$key])) {
	  		return in_array($value, $this->permission[$key]);
		} else {
	  		return false;
		}
  	}

  	public function getStoreId() {
    	return $this->store_id;
  	}  	

  	public function isManager() {
		return $this->user_group_id == 11;
	}
  
  	public function isLogged() {
    	return $this->user_id;
  	}
  
  	public function getId() {
    	return $this->user_id;
  	}
	
  	public function getUserName() {
    	return $this->username;
  	}	
}
?>