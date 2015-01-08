<?php
    require_once 'geoip/driver.php';
    require_once 'geoip/driver/sypexgeo.php';

    /**
     * Определение региона по IP-адресу пользователя.
     * @author Roman Shipilov r.shipilov@gmail.com
     */

    class GeoIP {

        /**
         * @var Registry;
         */
        private $registry;

        /**
         * @var Config
         */
        private $config;

        private $country_id;

        private $zone_id;

        private $country_name;

        private $zone_name;

        private $postcode;

        // Название населенного пункта + район, если он есть
        private $city_name;

        // Название населенного пункта
        private $short_city_name;

        private $fias_country_id;

        private $fias_zone_id;

        private $fias_id;

        private $fias_id_cookie_key = 'geoip_fias_id';

        private $session_key = 'geoip';

        private $settings;

        private $rules;

        private $redirects;

        private $cookie_domain;

        /**
         * @var ModelModuleGeoip
         */
        private $model_module_geoip;

        //<editor-fold desc="Public methods">

        /**
         * @param Registry $registry
         */
        public function __construct($registry) {

            $this->cookie_domain = rtrim(preg_replace('#^http://(www\.)?#', '', HTTP_SERVER, 1), '/');

            $this->registry = $registry;
            $this->config = $registry->get('config');

            $registry->get('load')->model('module/geoip');
            $this->model_module_geoip = $this->registry->get('model_module_geoip');

            $this->settings = $this->config->get('geoip_setting');

            $this->setFields($this->getFields());
            $this->setCurrency();
            $this->setRules();

            $this->redirects = $this->model_module_geoip->getRedirects();

            if (empty($registry->get('request')->cookie['geoip_redirect'])) {
                $this->geoRedirect();
            }

            $registry->get('document')->addStyle('catalog/view/theme/florentin/stylesheet/geoip.css');
        }

        public function search($term) {

            return $this->model_module_geoip->findFiasByName($term);
        }

        public function save($fias_id) {

            $data = $this->getAllFields(array('fias_id' => $fias_id));

            if ($data) {

                $this->setFields($data);
                $this->setCookieRedirect('');

                return true;
            }

            return false;
        }

        public function getZoneName() {

            return $this->zone_name;
        }

        public function getZoneId() {

            return $this->zone_id;
        }

        public function getCountryId() {

            return $this->country_id;
        }

        public function getCountryName() {

            return $this->country_name;
        }

        public function getPostcode() {

            return $this->postcode;
        }

        public function getCityName() {

            return $this->city_name;
        }

        public function getShortCityName() {

            return $this->short_city_name;
        }

        public function setCurrency($force = false) {

            $request = $this->registry->get('request');

            if ($force || !isset($request->cookie['geoip_currency'])) {

                $currency = $this->registry->get('currency');
                $currency_code = $currency->getCode();

                $code = $this->model_module_geoip->getCurrencyForCountry($this->country_id);

                if ($code && $currency_code != $code) {
                    $currency->set($code);
                    setcookie('geoip_currency', $code, time() + 60 * 60 * 24 * 30, '/', $this->cookie_domain);
                }
            }
        }

        public function getRule($key, $default = '') {

            return isset($this->rules[$key]) ? $this->rules[$key] : $default;
        }

        /**
         * @return array
         */
        public function getRedirects() {

            return $this->redirects;
        }


        //</editor-fold>

        //<editor-fold desc="Private methods">

        /**
         * Инициализация полей.
         * @param array $data Значения для инициализации.
         */
        private function setFields($data = array()) {

            if (!$data) {
                return;
            }

            $session = $this->registry->get('session');

            $fields = array('country_id', 'country_name', 'zone_id', 'zone_name', 'postcode', 'city_name',
                            'short_city_name', 'fias_country_id', 'fias_zone_id',  'fias_id');

            foreach ($fields as $field) {

                $value = isset($data[$field]) && $data[$field] ? $data[$field] : null;

                $this->$field = $session->data[$this->session_key][$field] = trim($value);
            }

            if ($this->fias_id) {
                setcookie($this->fias_id_cookie_key, $this->fias_id, time() + 3600 * 24 * 30, '/', $this->cookie_domain);
            }
        }

        private function getFields() {

            $sources = array('Session', 'Cookie', 'Drivers', 'Config');

            foreach ($sources as $source) {

                $data = call_user_func(array($this, 'getFrom' . $source));

                if ($data) {

                    return $data;
                }
            }

            return false;
        }

        private function getFromSession() {

            $session = $this->registry->get('session');

            if (isset($session->data[$this->session_key]) && !empty($session->data[$this->session_key])) {

                return $session->data[$this->session_key];
            }

            return false;
        }

        private function getFromCookie() {

            $cookie = $this->registry->get('request')->cookie;

            if (!empty($cookie[$this->fias_id_cookie_key])) {

                $data = $this->getAllFields(array('fias_id' => $cookie[$this->fias_id_cookie_key]));

                if ($data) {

                    return $data;
                }
            }

            return false;
        }

        private function getFromDrivers() {

            foreach ($this->getDrivers() as $driver) {

                $data = $driver->getGeoFilter();

                if ($data) {

                    return $this->getAllFields($data);
                }
            }

            return false;
        }

        private function getFromConfig() {

            if (!$this->setting('set_zone')) {
                return false;
            }

            $zone_id = $this->config->get('config_zone_id');

            if (!$zone_id) {
                return false;
            }

            $country_id = $this->config->get('config_country_id');

            return $this->getAllFields(array('zone_id' => $zone_id, 'country_id' => $country_id));
        }

        /**
         * @return GeoIP_Driver[]
         */
        private function getDrivers() {

            $drivers = array();

            $drivers[] = new GeoIP_Driver_SypexGeo($this->registry);

            return $drivers;
        }

        /**
         * По имеющимся полям вычисляет недостающие
         * @param $fields
         * @return array|bool
         */
        private function getAllFields($fields) {

            $fias = false;

            if (!empty($fields['fias_id'])) {
                $fias = $this->model_module_geoip->getFiasById($fields['fias_id']);
            }
            elseif (!empty($fields['country_name'])) {
                $fias = $this->model_module_geoip->getFias($fields);
            }

            if ($fias) {

                if ($fias['f1_level'] == 0) {

                    $fiasData = array('fias_country_id' => $fias['f1_fias_id']);
                    $countryAndZone = $this->model_module_geoip->findCountryAndZone(array('country_id' => $this->model_module_geoip->getCountryIdByFiasId($fiasData['fias_country_id'])));
                }
                else {
                    $fiasData = array('fias_id' => $fias['f1_fias_id']);
                    $fiasData['postcode'] = $fias['f1_postalcode'] ? $fias['f1_postalcode'] : '';

                    // Регионы
                    if ($fias['f1_level'] == 1) {

                        $fiasData['fias_zone_id'] = $fias['f1_fias_id'];
                        $fiasData['fias_country_id'] = $fias['f2_fias_id'];
                        $fiasData['city_name'] = $fiasData['short_city_name'] = '';

                        if ($fias['f1_shortname'] == 'г.') {
                            $fiasData['city_name'] = $fias['f1_name'];
                        }
                    }
                    // Города
                    elseif ($fias['f2_level'] == 1) {

                        $fiasData['fias_zone_id'] = $fias['f2_fias_id'];
                        $fiasData['fias_country_id'] = $fias['f3_fias_id'];
                        $fiasData['city_name'] = $fiasData['short_city_name'] = $fias['f1_name'];
                    }
                    // Населенные пункты в районах
                    elseif ($fias['f3_level'] == 1) {

                        $fiasData['fias_zone_id'] = $fias['f3_fias_id'];
                        $fiasData['fias_country_id'] = $fias['f4_fias_id'];
                        $fiasData['city_name'] = $fias['f2_name'] . ', ' . $fias['f1_name'];
                        $fiasData['short_city_name'] = $fias['f1_name'];
                    }
                    else {
                        return false;
                    }

                    $countryAndZone = $this->model_module_geoip->findCountryAndZone(array('zone_id' => $this->model_module_geoip->getZoneIdByFiasId($fiasData['fias_zone_id'])));
                }

                $fields = array_merge($countryAndZone, $fiasData);
            }
            else {

                if (!empty($fields['country_id'])) {

                    $fields['fias_country_id'] = $this->model_module_geoip->getFiasCountryIdByCountryId($fields['country_id']);

                    if (!empty($fields['zone_id'])) {
                        $fields['fias_zone_id'] = $this->model_module_geoip->getFiasZoneIdByZoneId($fields['zone_id']);
                        $countryAndZone = $this->model_module_geoip->findCountryAndZone(array('zone_id' => $fields['zone_id']));
                    }
                    else {
                        $countryAndZone = $this->model_module_geoip->getCountryById($fields['country_id']);
                    }

                    $fields = array_merge($fields, $countryAndZone);
                }
                elseif (!empty($fields['iso_code_2'])) {

                    $country = $this->model_module_geoip->getCountryByIsoCode($fields['iso_code_2']);

                    if ($country) {
                        $fields['country_id'] = $country['country_id'];
                        $fields['country_name'] = $country['name'];
                    }
                }
            }

            return $fields;
        }

        private function setting($key) {

            return (isset($this->settings[$key]) ? $this->settings[$key] : null);
        }

        private function setRules() {

            $rules = $this->model_module_geoip->getRules();

            if (is_array($rules)) {

                $group_rules = array();

                foreach ($rules as $rule) {
                    $group_rules[$rule['key']][] = $rule;
                }

                foreach ($group_rules as $key => $group) {

                    foreach ($group as $rule) {

                        // Для города имеет приоритет над остальными
                        if ($rule['fias_id'] == $this->fias_id) {
                            $this->rules[$key] = $rule['value'];
                            break;
                        }

                        // Для региона может быть переписан
                        if ($rule['fias_id'] == $this->fias_zone_id) {
                            $this->rules[$key] = $rule['value'];
                        }

                        // Для страны устанавливаем, если не было определено ранее
                        else if ($rule['fias_id'] == $this->fias_country_id && !isset($this->rules[$key])) {
                            $this->rules[$key] = $rule['value'];
                        }
                    }
                }
            }
        }

        private function geoRedirect() {

            $request = $this->registry->get('request');

            if (empty($request->server['HTTP_HOST']) || empty($this->redirects)) {
                return;
            }

            $redirect_url = false;

            foreach ($this->redirects as $redirect) {

                // Для города имеет приоритет над остальными
                if ($redirect['fias_id'] == $this->fias_id) {
                    $redirect_url = $redirect['url'];
                    break;
                }

                // Для региона может быть переписан
                if ($redirect['fias_id'] == $this->fias_zone_id) {
                    $redirect_url = $redirect['url'];
                }

                // Для страны устанавливаем, если не было определено ранее
                else if (!$redirect_url && $redirect['fias_id'] == $this->fias_country_id) {
                    $redirect_url = $redirect['url'];
                }
            }

            if (!$redirect_url) {
                $redirect_url = HTTP_SERVER;
            }

            $current_host = $this->getCurrentHttpServer();

            if ($redirect_url && $redirect_url != $current_host) {

                $request_uri = ltrim($request->server['REQUEST_URI'], '/');

                $this->setCookieRedirect(1);

                header('Status: 302');
                header('Location: ' . str_replace(array('&amp;', "\n", "\r"), array('&', '', ''), $redirect_url . $request_uri));
                exit();
            }
        }

        private function setCookieRedirect($value) {

            setcookie('geoip_redirect', $value, time() + 60 * 60 * 24, '/', $this->cookie_domain);
        }

        public function getCurrentHttpServer() {

            $request = $this->registry->get('request');

            if (empty($request->server['HTTP_HOST'])) {
                return '';
            }

            $www = strpos($request->server['HTTP_HOST'], 'www.') === 0 ? 'www.' : '';

            $http_domain = str_replace('www.', '', $request->server['HTTP_HOST']);

            if (preg_match('#^http://(www\.)?([^/]*)(.*)#', HTTP_SERVER, $matches)) {
                $domain = $matches[2];
                $url = $matches[3];
            }
            else {
                return '';
            }

            $subdomain = rtrim(str_replace($domain, '', $http_domain), '.');

            if ($subdomain) {

                return 'http://' . $subdomain . '.' . $domain . $url;
            }
            else {

                return 'http://' . $www . $domain . $url;
            }
        }

        /**
         * Если для текущего города определено название в попапе городов,
         * возвращает его название (как оно записано в таблице)
         * @return string
         */
        public function getPopupCityName() {

            $cities = $this->model_module_geoip->getCities();

            $fias_id = $this->fias_id ? $this->fias_id : ($this->fias_zone_id ? $this->fias_zone_id : $this->fias_country_id);

            foreach ($cities as $city) {

                if ($city['fias_id'] == $fias_id) {
                    return $city['name'];
                }
            }

            return '';
        }

        //</editor-fold>
    }