<?php
class ControllerSettingSmsSending extends Controller {
	public function index() {
		$row = 1;
		$file = DIR_DOWNLOAD . "sms.csv";
		if (($handle = fopen($file, "r")) !== FALSE) {
			while (($data = fgetcsv($handle, 10000, ",")) !== FALSE) {
				
				$row++;
			}
			fclose($handle);
		}
	}


}
?>