<div id="cart">
  <div class="heading">
    <a title="<?php echo $heading_title; ?>"><span id="cart-total"><?php echo $text_items; ?></span></a></div>
  <div class="content">
	<div id="c_opaco"></div>
    <?php if ($products || $vouchers) { ?>
    <div class="mini-cart-info">
      <table>
		<tr>
			<td colspan="5" class="no_border">
				<div class="min_title">Список покупок</div>
			</td>
		</tr>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
			<td class="quantity">
				<input type="text" name="quantity[<?php echo $product['key']; ?>]" id="qty_<?php echo $product['key']; ?>" value="<?php echo $product['quantity']; ?>" onkeyup="changeProductQty('<?php echo $product['key']; ?>',this);" />
			</td>
          <td class="total"><?php echo $product['total']; ?></td>
          <td class="remove"><img src="catalog/view/theme/florentin/image/delete.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');" /></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="image"></td>
          <td class="name"><?php echo $voucher['description']; ?></td>
          <td class="quantity"><div>1</div></td>
          <td class="total"><?php echo $voucher['amount']; ?></td>
          <td class="remove"><img src="catalog/view/theme/florentin/image/delete.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" /></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="mini-cart-total">
      <table width="100%">
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td class="right name"><b><?php echo $total['title']; ?>:</b></td>
          <td class="right value"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="checkout">
			<a class="button" href="<?php echo $cart; ?>"><?php echo $text_checkout; ?></a>
	</div>
    <?php } else { ?>
    <div class="empty"><?php echo $text_empty; ?></div>
    <?php } ?>
  </div>
</div>

<script>
	var canUpdate = true;
	function changeProductQty(q_key,cur_item) {
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
					$('#c_opaco').css("height", $('#header #cart .content .mini-cart-info').height() + "px").show();
				},
				complete: function() {
					$('#c_opaco').hide();
				},
				success: function(json) {
					if (json['success']) {
						$('#cart').load('index.php?route=module/cart #cart > *',function(){
							if (getURLVar('route') == 'checkout/checkout') {
								location = "<?php echo $this->url->link('checkout/checkout'); ?>";
							}
							$("#qty_" + q_key).focus();
							canUpdate = true;
						});
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		},700);
	}
</script>
