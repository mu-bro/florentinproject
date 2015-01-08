<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<div class="onecheckout-product">
	<div id="opc_opaco"></div>
	<table>
		<tbody>
			<?php foreach ($products as $product) { ?>
				<tr>
					<td class="image">
						<?php if ($product['thumb']) { ?>
							<a href="<?php echo $product['href']; ?>">
								<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
							</a>
						<?php } ?>
					</td>
					<td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
					<td class="quantity">
						<div>
							<span>X</span>
							<input type="text" class="" name="quantity[<?php echo $product['key']; ?>]" id="qty_<?php echo $product['key']; ?>" value="<?php echo $product['quantity']; ?>" onkeyup="changeProductQtyOPC('<?php echo $product['key']; ?>',this);" />
						</div>
					</td>
					<td class="total"><?php echo $product['total']; ?></td>
					<td class="remove"><img src="catalog/view/theme/florentin/image/delete.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="removeProduct('<?php echo $product['key']; ?>');" /></td>
				</tr>
			<?php } ?>
		</tbody>
		<tfoot class="tf_total">
			<?php foreach ($totals as $total) { ?>
				<tr>
					<td colspan="3" class="price total_name"><?php echo $total['title']; ?>:</td>
					<td class="total total_value"><?php echo $total['text']; ?></td>
					<td></td>
				</tr>
			<?php } ?>
		</tfoot>
	</table>
</div>
<?php echo $cartmodule; ?>
<?php if ($text_agree) { ?>
<div class="buttons">  
    <?php if ($agree) { ?>
		<input type="checkbox" name="agree" value="1" checked="checked" style="float:left;"/>
    <?php } else { ?>
		<input type="checkbox" name="agree" value="1" style="float:left;" />
    <?php } ?>
		<div class="agree_text"><?php echo $text_agree; ?></div>
		<div class="divclear">
			<a id="button-confirmorder" class="button big_b"><span><?php echo $button_confirm; ?></span></a>
		</div>
</div>
<?php } else { ?>
	<div class="buttons">
		<div class="right"><a id="button-confirmorder" class="button"><span><?php echo $button_confirm; ?></span></a></div>
	</div>
<?php } ?>
<div class="confirm_final_text">
	<?php echo $text_after_payment_button; ?>
</div>
<script type="text/javascript">
	
	function removeProduct(q_key) {
		$.ajax({
			url: 'index.php?route=checkout/cart/remove',
			type: 'post',
			data: "remove=" + q_key,
			dataType: 'json',
			beforeSend: function() {
				$('#opc_opaco').css("height", $('#confirm .onecheckout-product').height() + "px").show();
			},
			complete: function() {
				$('#opc_opaco').hide();
			},			
			success: function(json) {
				if (json['success']) {
					confirmorder();
					shippingaddresslogin();
				}
			}
		});
	}
	var canUpdate = true;
	function changeProductQtyOPC(q_key,cur_item) {
		setTimeout(function() {
			if (!canUpdate) return false;

			canUpdate = false;
			p_value_text = cur_item.value;
			p_value = ( parseInt(p_value_text) );
			if (p_value == 0 || isNaN(p_value) || p_value === undefined) return false;

			$.ajax({
				url: 'index.php?route=checkout/cart/changeQty',
				type: 'post',
				data: "key=" + q_key + "&value=" + p_value,
				dataType: 'json',
				beforeSend: function() {
					$('#opc_opaco').css("height", $('#confirm .onecheckout-product').height() + "px").show();
				},
				complete: function() {
					$('#opc_opaco').hide();
				},
				success: function(json) {
					if (json['success']) {
						confirmorder();
					}
				}
			});
		},700);
	}	
</script>
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480
});
//--></script>