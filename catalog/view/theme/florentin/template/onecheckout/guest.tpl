<div id="guest-cpanle" class="divclear">
<?php if ($shipping_required) { ?>
	<div class="sub_header"><?php echo $text_recipient; ?></div>
  <?php if ($shipping_type == 1) { ?>
		<table class="form">
			<tbody>
				<tr>
					<td style="width: 1px;">
						<input type="radio" name="shipping_address" value="1" checked="checked" id="for_me" />
					</td>
					<td>
						<label for="for_me">Мне</label>
					</td>
				</tr>
				<tr>
					<td style="width: 1px;">
						<input type="radio" name="shipping_address" value="0" id="for_smb" />
					</td>
					<td>
						<label for="for_smb">Другому получателю</label>
					</td>
				</tr>
			</tbody>
		</table>
  <?php } else { ?>
		<table class="form">
			<tbody>
				<tr>
					<td style="width: 1px;">
						<input type="radio" name="shipping_address" value="1" id="for_me" />
					</td>
					<td>
						<label for="for_me">Мне</label>
					</td>
				</tr>
				<tr>
					<td style="width: 1px;">
						<input type="radio" name="shipping_address" value="0" id="for_smb" checked="checked" />
					</td>
					<td>
						<label for="for_smb">Другому получателю</label>
					</td>
				</tr>
			</tbody>
		</table>
  <?php } ?>
<?php } else { ?>
  <input type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" style="display:none;" />
<?php } ?>
</div>

<script type="text/javascript"><!--
		
	if ($('#payment-address input[name=\'shipping_address\']:checked').attr('value') == 1) {
		$('#payment_addr_field').show();
		$('#shipping-address').hide();
	} else {
		$('#payment_addr_field').hide();
		$('#shipping-address').slideDown('slow');
	}
	setTimeout(function() {
		$('#payment-address input[name=\'shipping_address\']:checked').trigger('click');
	},500);
</script>