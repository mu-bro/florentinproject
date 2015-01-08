<?php

function p() {
	$args = func_get_args();
	$flag = '';
	echo "<pre>";
	foreach ($args as $arg) {
		if ($arg == '00') {
			$flag = 'no-exit';
		} else {
			echo "<br/><br/><b>Debug:</b><br/>";
			print_r($arg);
		}
	}
	echo "</pre>";
	if ($flag != 'no-exit')
		die;
}

require_once("transport.php");
$api = new Transport();

$params = array(
	"text" => "Привет от сайта флорентин!",
	"source" => "florentinproject",
	"onlydelivery" => 1,
	
	
);



$phones = array("89084768744");
$send = $api->send($params,$phones);

$balance = $api->balance();
p($params,$balance,$send);