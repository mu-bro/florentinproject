<div id="reg-cpanle" class="divclear">
	<div style="display:none;" id="payment_addr_acc_field">
		<label><span class="required">*</span> <?php echo $entry_address_1; ?></label>
		<input type="text" name="address_2" value="<?php echo $address_1; ?>" class="large-field" />
  	</div>
  	<br />
	<div class="">
		<label><span class="required">*</span> <?php echo $entry_password; ?></label>
		<input type="password" name="password" value="" class="small-field" /><br />
	</div>
  <br />
	<div class="">
		<label><span class="required">*</span> <?php echo $entry_confirm; ?></label>
		<input type="password" name="confirm" value="" class="small-field" /><br />
	</div>
  <div style="clear: both; padding-top: 15px; border-top: 1px solid #EEEEEE;">
	<input style="float:left;" type="checkbox" name="newsletter" value="1" id="newsletter"<?php if ($this->config->get('onecheckout_check_newsletter')) { ?> checked="checked"<?php } ?> />
	<label  class="small" style="float:left;margin-top:4px;width:222px;"  for="newsletter"><?php echo $entry_newsletter; ?></label>
		<div style="display:none;">
			<br />
			<?php if ($shipping_required) { ?>
				<input type="checkbox" name="shipping_address" value="1" id="shipping"<?php if ($this->config->get('onecheckout_check_deliveryaddress')) { ?> checked="checked"<?php } ?> />
				<label for="shipping"><?php echo $entry_shipping; ?></label>
				<br />
			<?php } else { ?>
				<input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" style="display:none;" />
			<?php } ?>
			<br />
		</div>  
  </div>
	<div class="clear"></div>
<?php if ($text_agree) { ?>
<div class="buttons">  
    <input style="float:left;" type="checkbox" name="agree" value="1" />
    <label class="small" style="float:left;margin-top:4px;width:222px;"><?php echo $text_agree; ?></label>
</div>
<?php } ?>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480
});

$('#payment-address input[name=\'password\']').live('blur', function() {
	valiform("payment","password","");
});

$('#payment-address input[name=\'password\']').live('focus', function() {
	errorremove("payment","password");
});

$('#payment-address input[name=\'confirm\']').live('blur', function() {
	valiform("payment","confirm",", #payment-address input[name=\'password\']");
});

$('#payment-address input[name=\'confirm\']').live('focus', function() {
	errorremove("payment","confirm");
});
//alert($('#payment-address input[name=\'shipping_address\']:checked').attr('value'));
if ($('#payment-address input[name=\'shipping_address\']:checked').attr('value') == 0) {
	$('#payment_addr_acc_field').show();
	$('#payment-address input[name=\'address_2\']').live('blur', function() {
		valiform("payment","address_2","");
	});
}
//--></script> 
</div>