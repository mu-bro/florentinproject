<div class="sub_header">Доставка</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($shipping_methods) { ?>
<table class="form">
	<?php foreach ($shipping_methods as $shipping_method) { ?>
		<?php if (!$shipping_method['error']) { ?>
			<?php foreach ($shipping_method['quote'] as $quote) { ?>
				<tr>
					<td style="width: 1px;">
						<?php if ($quote['code'] == $code || !$code) { ?>
							<?php $code = $quote['code']; ?>
							<input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
						<?php } else { ?>
							<input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" />
						<?php } ?>
					</td>
					<td>
						<label for="<?php echo $quote['code']; ?>"><?php echo $quote['title']; ?></label>
						<?php if (isset(${str_replace(".","_",$quote['code']) . "_help"})) { ?>
							<span class="help"><?php echo ${str_replace(".","_",$quote['code']) . "_help"}; ?></span>
						<?php } ?>
					</td>
					<td style="text-align: right;white-space:nowrap;">
						<label for="<?php echo $quote['code']; ?>"><?php echo $quote['text']; ?></label>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<div class="shipping_delivery" id="<?php echo str_replace(".","_",$quote['code']); ?>_sd" <?php if ($quote['code'] == $code || !$code) echo 'style="display:block;"'; ?> >
							<?php if ($quote['code'] != "pickup.pickup") { ?>
								<label><span class="required">*</span> <?php echo $entry_address_1; ?></label>
								<input type="text" name="address_1" value="<?php echo $address_1; ?>" class="large-field" />
								<br />
								<br />
							<?php } ?>
							<div class="date_block">
								<label><span class="required">*</span> <?php echo $entry_delivery_time; ?></label>

								<div style="float:left;width:130px;">
									<input type="text" name="delivery_time[<?php echo $quote['code']; ?>]" value="<?php echo $delivery_time; ?>" class="large-field ship_form" style="width:60px;"/>
									<div></div>
								</div>
								<select name="delivery_interval[<?php echo $quote['code']; ?>]" style="float:right;width:100px;">
									<?php foreach ($delivery_intervals as $interval) { ?>
									<option value="<?php echo $interval; ?>" <?php if ($interval == $delivery_interval) echo 'selected="selected"'; ?> ><?php echo $interval; ?></option>
									<?php } ?>
								</select>
							</div>
							<span class="help" style="color:red;">
								<?php echo $warningText; ?>
							</span>
						</div>
					</td>
				</tr>
			<?php } ?>
		<?php } else { ?>
			<tr>
				<td colspan="3"><div class="error"><?php echo $shipping_method['error']; ?></div></td>
			</tr>
		<?php } ?>
	<?php } ?>
</table>
<?php } ?>

<script type="text/javascript">
	$('#shipping-method input[name=\'address_1\']').live('blur', function() {
		vname = "address_1";
		$.ajax({
			url: 'index.php?route=onecheckout/form/validate',
			type: 'post',
			data: $('#shipping-method input[name=\''+vname+'\']'),
			dataType: 'json',
			success: function(json) {
				if (json['error'][vname]) {
					if($('#shipping-method #error_'+vname)){
						$('#shipping-method #error_'+vname).remove();
					}
					$('#shipping-method input[name=\''+vname+'\'] + br').after('<span id="error_'+vname+'" class="error">' + json['error'][vname] + '</span>');
				} else {
					if($('#shipping-method #error_'+vname)){
						$('#shipping-method #error_'+vname).remove();
					}
				}
			}
		});
	});
	$('.ship_form').datetimepicker({
		onGenerate:function( ct ){
			jQuery(this).find('.xdsoft_date.disableDates')
			.addClass('xdsoft_disabled');
		},
		defaultSelect: false,
		closeOnWithoutClick :true,
		todayButton: false,
		<?php  if (empty($delivery_time)) echo 'value: "' .  date("d.m.Y",strtotime('+2 day')) . '",'; ?>
		disableDates:['<?php echo implode("','",$weekends); ?>'],
		minDate:'<?php echo $min_date; ?>',
		allowTimes:['<?php echo implode("','",$allowTimes); ?>'],
		timepicker:false,
		format:'d.m.Y'
	}).attr('readonly','readonly');
</script>