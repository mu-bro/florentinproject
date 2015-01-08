	<div class="sub_header"><?php echo $text_payment_title; ?></div>
  <div>
  	<label><span class="required">*</span> <?php echo $entry_firstname; ?></label>
  	<input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field"  /><br />
  </div>
  <div style="display:none;">
  	<label><span class="required">*</span> <?php echo $entry_lastname; ?></label>
  	<input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field"  /><br />
  </div>  
  <div class="divclear">
  	<br />
  	<label><span class="required">*</span> <?php echo $entry_email; ?></label>
  	<input type="text" name="email" value="<?php echo $email; ?>" class="large-field" />
	<br />
	<div style="display:none;">
		<br />
		<?php echo $entry_company; ?></label>
		<input type="text" name="company" value="<?php echo $company; ?>" class="large-field" />
		<br />
  	</div>
	
	<?php if($version_int >= 1530) { ?>
	<div style="display: <?php echo (count($customer_groups) > 1 ? 'block' : 'none'); ?>;">
    	<br />
		<?php echo $entry_account; ?><br />
		<select name="customer_group_id" class="large-field">
      	<?php foreach ($customer_groups as $customer_group) { ?>
      	<?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
      	<option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
      	<?php } else { ?>
      	<option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
      	<?php } ?>
      	<?php } ?>
    	</select><br />    	
  	</div>
  	<div id="company-id-display">
    	<br />
		<span id="company-id-required" class="required">*</span> <?php echo $entry_company_id; ?><br />
		<input type="text" name="company_id" value="<?php echo $company_id; ?>" class="large-field" /><br />
  	</div>
  	<div id="tax-id-display">
    	<br />
		<span id="tax-id-required" class="required">*</span> <?php echo $entry_tax_id; ?><br />
		<input type="text" name="tax_id" value="<?php echo $tax_id; ?>" class="large-field" /><br />    	
  	</div>
  	<?php } ?>
  <br />  	
  <div >
  	<label><span class="required">*</span> <?php echo $entry_telephone; ?></label>
  	<input type="text" name="telephone" value="<?php echo $telephone; ?>"  class="large-field telephone_form"  /><br />
  </div>
<!--	<div style="display:none;" id="payment_addr_field">
		<br />
		<label><span class="required">*</span> <?php echo $entry_address_1; ?></label>
		<input type="text" name="address_1" value="<?php echo $address_1; ?>" class="large-field" />
		<br />
		<br />
		<div class="date_block">
			<label><span class="required">*</span> <?php echo $entry_delivery_time; ?></label>
			<input type="text" name="delivery_time" value="<?php echo $delivery_time; ?>" class="large-field date_form" style="width:190px;"/>
			<div></div>
		</div>
		<br />
  	</div>-->
			
  	<div style="display:none;">
		<br />
		<?php echo $entry_address_2; ?><br />
		<input type="text" name="address_2" value="<?php echo $address_2; ?>" class="large-field" />
		<br />
	</div>
  </div>
  <div style="display:none;">
  	<?php echo $entry_fax; ?><br />
  	<input type="text" name="fax" value="<?php echo $fax; ?>" class="small-field" /><br />
  </div>
  <br />
  <div class="divclear"></div>
  	<div style="display:none;">
		<br />
		<label><span class="required">*</span> <?php echo $entry_city; ?></label>
		<input type="text" name="city" value="<?php echo $city; ?>" class="large-field" /><br />
	</div>
  <div style="display:none;">
  	<span id="payment-postcode-required" class="required">*</span> <?php echo $entry_postcode; ?><br />
  	<input type="text" name="postcode" value="<?php echo $postcode; ?>" class="small-field" /><br />
  </div>
  
	<div class="divclear" style="display:none;">
		<br />
		<label><span class="required">*</span> <?php echo $entry_country; ?></label>
		<select name="country_id" class="large-field">
			<option value=""><?php echo $text_select; ?></option>
			<?php foreach ($countries as $country) { ?>
			<?php if ($country['country_id'] == $country_id) { ?>
			<option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
			<?php } else { ?>
			<option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
			<?php } ?>
			<?php } ?>
		</select>
		<br />
		<br />
		<label><span class="required">*</span> <?php echo $entry_zone; ?></label>
		<select name="zone_id" class="large-field">
		</select>
		<br />
	</div>
  	<br />
	<?php if ($guest_checkout) { ?>
		<div style="margin-bottom:5px;height:26px;">
			<input style="float:left;" type="checkbox" name="account" value="1" id="account"<?php if ($this->config->get('onecheckout_check_register')) { ?> checked="checked"<?php } ?> />
			<label style="float:left;margin-top: 5px;" for="account"><?php echo $text_reg; ?></label>
		</div>
	<?php } else { ?>
		<input type="checkbox" name="account" value="1" id="account" checked="checked" style="display:none;" />
	<?php } ?>
	<div class="clear"></div>
<?php if($version_int >= 1530) { ?>
<script type="text/javascript"><!--
$('#payment-address select[name=\'customer_group_id\']').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('#payment-address select[name=\'customer_group_id\']').trigger('change');
//--></script> 
<?php } ?>	
<script type="text/javascript">
$('#payment-address select[name=\'country_id\']').bind('change', function() {
	getzone('payment','<?php echo $zone_id; ?>');
});
getzone('payment','<?php echo $zone_id; ?>');

$('#payment-address select[name=\'zone_id\']').live('change', function() {
	if($('#payment-address input[name=\'shipping_address\']:checked').attr('value') == 1){
		shippingmethod($('#payment-address select[name=\'country_id\']').val(), $('#payment-address select[name=\'zone_id\']').val(), 1 , $('#payment-address input[name=\'city\']').val(),$('#payment-address input[name=\'postcode\']').val(),
		$('#payment-address input[name=\'shipping_address\']:checked').attr('value')	
		);		
	}
	paymentmethod($('#payment-address select[name=\'country_id\']').val(), $('#payment-address select[name=\'zone_id\']').val(), 1 , $('#payment-address input[name=\'city\']').val(),$('#payment-address input[name=\'postcode\']').val());
});

$('#shipping-address select[name=\'zone_id\']').live('change', function() {
	shippingmethod($('#shipping-address select[name=\'country_id\']').val(), $('#shipping-address select[name=\'zone_id\']').val(), 1 , $('#shipping-address input[name=\'city\']').val(),$('#shipping-address input[name=\'postcode\']').val(),
	$('#payment-address input[name=\'shipping_address\']:checked').attr('value')	
	);
});

$('#payment-address input[name=\'firstname\']').live('blur', function() {
	valiform("payment","firstname","");
});

$('#payment-address input[name=\'firstname\']').live('focus', function() {
	errorremove("payment","firstname");
});

// $('#payment-address input[name=\'lastname\']').live('blur', function() {
// 	valiform("payment","lastname","");
// });

$('#payment-address input[name=\'lastname\']').live('focus', function() {
	errorremove("payment","lastname");
});

$('#payment-address input[name=\'email\']').live('blur', function() {
	valiform("payment","email","");
});

$('#payment-address input[name=\'email\']').live('focus', function() {
	errorremove("payment","email");
});

$('#payment-address input[name=\'company_id\']').live('blur', function() {
	valiform("payment","company_id",", #payment-address select");
});

$('#payment-address input[name=\'company_id\']').live('focus', function() {
	errorremove("payment","company_id");
});

$('#payment-address input[name=\'tax_id\']').live('blur', function() {
	valiform("payment","tax_id",", #payment-address select");
});

$('#payment-address input[name=\'tax_id\']').live('focus', function() {
	errorremove("payment","tax_id");
});

// $('#payment-address input[name=\'address_1\']').live('blur', function() {
// 	valiform("payment","address_1","");
// });
// 
// $('#payment-address input[name=\'address_1\']').live('focus', function() {
// 	errorremove("payment","address_1");
// });

$('#payment-address input[name=\'telephone\']').live('blur', function() {
	valiform("payment","telephone","");
});

$('#payment-address input[name=\'telephone\']').live('focus', function() {
	errorremove("payment","telephone");
});

$('#payment-address input[name=\'city\']').live('blur', function() {
	valiform("payment","city","");
<?php if($this->config->get('onecheckout_refresh_city')){ ?>
	if($('#payment-address input[name=\'shipping_address\']:checked').attr('value')){
		shippingmethod($('#payment-address select[name=\'country_id\']').val(), $('#payment-address select[name=\'zone_id\']').val(), 1 , $('#payment-address input[name=\'city\']').val(),$('#payment-address input[name=\'postcode\']').val());		
	}
	paymentmethod($('#payment-address select[name=\'country_id\']').val(), $('#payment-address select[name=\'zone_id\']').val(), 1 , $('#payment-address input[name=\'city\']').val(),$('#payment-address input[name=\'postcode\']').val());
<?php } ?>
});

$('#payment-address input[name=\'city\']').live('focus', function() {
	errorremove("payment","city");
});

$('#payment-address input[name=\'postcode\']').live('blur', function() {
	valiform("payment","postcode",", #payment-address select");
<?php if($this->config->get('onecheckout_refresh_postcode')){ ?>
	if($('#payment-address input[name=\'shipping_address\']:checked').attr('value')){
		shippingmethod($('#payment-address select[name=\'country_id\']').val(), $('#payment-address select[name=\'zone_id\']').val(), 1 , $('#payment-address input[name=\'city\']').val(),$('#payment-address input[name=\'postcode\']').val());		
	}
	paymentmethod($('#payment-address select[name=\'country_id\']').val(), $('#payment-address select[name=\'zone_id\']').val(), 1 , $('#payment-address input[name=\'city\']').val(),$('#payment-address input[name=\'postcode\']').val());
<?php } ?>
});

$('#payment-address #payment_addr_field input[name=\'address_1\']').live('focus', function() {
	errorremove("payment","address_1");
});
$('#payment-address #payment_addr_field input[name=\'address_1\']').live('blur', function() {
	if($('#payment-address input[name=\'shipping_address\']:checked').attr('value') == 1) {
		valiform("payment","address_1","");
	}
});
$('#payment-address input[name=\'delivery_time\']').live('blur', function() {
	if($('#payment-address input[name=\'shipping_address\']:checked').attr('value') == 1) {
		valiform("payment","delivery_time","");
	}
});

$('#payment-address input[name=\'delivery_time\']').live('focus', function() {
	errorremove("payment","delivery_time");
});

$('#payment-address input[name=\'postcode\']').live('focus', function() {
	errorremove("payment","postcode");
});

$('#payment-address select[name=\'zone_id\']').live('focus', function() {
	errorremove("payment","zone_id");
});

$('#payment-address select[name=\'country_id\']').live('focus', function() {
	errorremove("payment","country_id");
});

$('#shipping-address input[name=\'firstname\']').live('blur', function() {
	valiform("shipping","firstname","");
});

$('#shipping-address input[name=\'firstname\']').live('focus', function() {
	errorremove("shipping","firstname");
});

// $('#shipping-address input[name=\'lastname\']').live('blur', function() {
// 	valiform("shipping","lastname","");
// });

$('#shipping-address input[name=\'lastname\']').live('focus', function() {
	errorremove("shipping","lastname");
});

$('#payment-address input[name=\'company\']').live('blur', function() {
	valiform("payment","company","");
});

$('#shipping-address input[name=\'company\']').live('blur', function() {
	valiform("shipping","company","");
});

// $('#shipping-address input[name=\'address_1\']').live('blur', function() {
// 	valiform("shipping","address_1","");
// });
// 
// $('#shipping-address input[name=\'address_1\']').live('focus', function() {
// 	errorremove("shipping","address_1");
// });

$('#shipping-address input[name=\'city\']').live('blur', function() {
	valiform("shipping","city","");
<?php if($this->config->get('onecheckout_refresh_city')){ ?>
	shippingmethod($('#shipping-address select[name=\'country_id\']').val(), $('#shipping-address select[name=\'zone_id\']').val(), 1 , $('#shipping-address input[name=\'city\']').val(),$('#shipping-address input[name=\'postcode\']').val());
<?php } ?>
});

$('#shipping-address input[name=\'city\']').live('focus', function() {
	errorremove("shipping","city");
});

$('#shipping-address input[name=\'postcode\']').live('blur', function() {
	valiform("shipping","postcode",", #shipping-address select");
<?php if($this->config->get('onecheckout_refresh_postcode')){ ?>
	shippingmethod($('#shipping-address select[name=\'country_id\']').val(), $('#shipping-address select[name=\'zone_id\']').val(), 1 , $('#shipping-address input[name=\'city\']').val(),$('#shipping-address input[name=\'postcode\']').val());
<?php } ?>
});

$('#shipping-address input[name=\'postcode\']').live('focus', function() {
	errorremove("shipping","postcode");
});

$('#shipping-address select[name=\'zone_id\']').live('focus', function() {
	errorremove("shipping","zone_id");
});

$('#shipping-address select[name=\'country_id\']').live('focus', function() {
	errorremove("shipping","country_id");
});

function valiform(layout, vname, othername){
	$.ajax({
		url: 'index.php?route=onecheckout/form/validate',
		type: 'post',
		data: $('#'+layout+'-address input[name=\''+vname+'\']'+othername),
		dataType: 'json',
		success: function(json) {						
			if (json['error'][vname]) {
				errorremove(layout, vname);
				$('#'+layout+'-address input[name=\''+vname+'\'] + br').after('<span id="error_'+vname+'" class="error">' + json['error'][vname] + '</span>');
			}
		}
	});	
}

function errorremove(layout, vname) {
	if($('#'+layout+'-address #error_'+vname)){
		$('#'+layout+'-address #error_'+vname).remove();
	}
}

$('.date_block div').bind('click',function() {
	$(this).parent().find('input').datetimepicker('show');
});
	
$('.date_form').datetimepicker({
	onGenerate:function( ct ){
		jQuery(this).find('.xdsoft_date.disableDates')
		.addClass('xdsoft_disabled');
	},
	defaultSelect: false,
	closeOnWithoutClick :false,
	todayButton: false,
	<?php  if (empty($delivery_time)) echo 'value: "' .  date("d.m.Y H:i",strtotime('+2 day')) . '",'; ?>
	disableDates:['<?php echo implode("','",$weekends); ?>'],
	minDate:'<?php echo $min_date; ?>',
	allowTimes:['<?php echo implode("','",$allowTimes); ?>'],
	format:'d.m.Y H:i'
}).attr('readonly','readonly');
$(function(){
	$.mask.definitions['x'] = '[0-9]';
});
$(function(){
	$('.telephone_form').mask("+7 (xxx) xxx xxxx", {placeholder:"_"});
});
</script>
