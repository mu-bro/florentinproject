<?php echo $header; ?>
<?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"  class="no_margin"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1 class="cart_title no_border"><?php echo $heading_title; ?>
    <?php if ($weight) { ?>
    &nbsp;(<?php echo $weight; ?>)
    <?php } ?>
  </h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="main_form">
    <div class="cart-info">
      <table>
        <thead>
          <tr>
            <td class="image"></td>
            <td class="name"><?php echo $column_name; ?></td>
            <td class="price"><?php echo $column_price; ?></td>
            <td class="model"><?php echo $column_qty; ?></td>
            <td class="quantity"><?php echo $column_quantity; ?></td>            
            <td class="total"><?php echo $column_total; ?></td>
            <td class="remove"></td>
          </tr>
        </thead>
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
				<td class="name">
					<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
					<?php if (!$product['stock']) { ?>
						<span class="stock">***</span>
					<?php } ?>
					<div>
							<?php foreach ($product['option'] as $option) { ?>
								<div class="option_name">
									<?php echo $option['name']; ?>:
								</div>
								<div class="option_value <?php if ($option['option_id'] == 14) echo 'text'; ?>"  >
									<?php echo $option['value']; ?>
								</div>
							<?php } ?>
					</div>
					<?php if ($product['reward']) { ?>
						<small><?php echo $product['reward']; ?></small>
					<?php } ?>
				</td>
				<td class="price"><?php echo $product['price']; ?></td>
				<td class="model"><?php echo $product['stock_amount']; ?></td>
				<td class="quantity">
					<input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" />
					&nbsp;

				</td>            
            <td class="total"><?php echo $product['total']; ?></td>
            <td class="remove">
				<a href="<?php echo $product['remove']; ?>">
						<img src="catalog/view/theme/default/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" />
				</a>
			</td>
          </tr>
          <?php } ?>
          <tr>
				<td colspan="7" style="padding:7px	0px;">
					<div class="buttons" style="margin:0px;">
						<div class="left"><a href="<?php echo $continue; ?>" class="button light" style="padding-left:0px;"><div class="triangle-left"></div><?php echo $button_shopping; ?></a></div>
						<div class="right"><a class="button light" onclick="$('#main_form').submit();" style="padding-right:0px;"><?php echo $text_update_cart; ?></a></div>
					</div>
				</td>
          </tr>
        </tbody>
      </table>
    </div>
  </form>
  
		<div class="after_cart_block" >
			<div class="left_side" style="display:none;">
				<?php if ($this->config->get('config_coupon_status')) { ?>
					<div id="coupon" class="coupon" style="margin-bottom:15px;">
						<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
							<div class="product_special_text"><?php echo $entry_coupon; ?></div>
							<input type="text" name="coupon" value="<?php echo $coupon; ?>" placeholder="Введите код для получения скидки" />
							<input type="hidden" name="next" value="coupon" />
							<div class="coupon_button_block">
								<input type="submit" value="<?php echo $button_coupon; ?>" class="button big_b grey" />
							</div>
						</form>
					</div>
				<?php } ?>
				<?php if ($this->config->get('config_reward_points') && $this->customer->isLogged()) { ?>
					<div id="reward" class="coupon" style="clear:both;">
					<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
						<div class="product_special_text"><?php echo $entry_reward; ?></div>
						<input type="text" name="reward" value="<?php echo $reward; ?>" />
						<input type="hidden" name="next" value="reward" />
						<div class="coupon_button_block">
							<input type="submit" value="<?php echo $button_reward; ?>" class="button big_b grey" />
						</div>
					</form>
					</div>
				<?php } ?>
			</div>
			<div class="cart-total">
				<table id="total">
				<?php foreach ($totals as $total) { ?>
				<tr>
					<td class="right name"><?php echo $total['title']; ?>:</td>
					<td class="right value"><?php echo $total['text']; ?></td>
				</tr>
				<?php } ?>
				</table>
				<div class="right"><a href="<?php echo $checkout; ?>" class="button big_b"><?php echo $button_checkout; ?></a></div>
			</div>
			<div class="clear"></div>
		</div>



    
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
	$('.cart-module > div').hide();
	
	$('#' + this.value).show();
});
//--></script>
<?php if ($shipping_status) { ?>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <table class="radio">';
				
				for (i in json['shipping_method']) {
					html += '<tr>';
					html += '  <td colspan="3"><b>' + json['shipping_method'][i]['title'] + '</b></td>';
					html += '</tr>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<tr class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></td>';
							} else {
								html += '<td><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></td>';
							}
								
							html += '  <td><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></td>';
							html += '  <td style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></td>';
							html += '</tr>';
						}		
					} else {
						html += '<tr>';
						html += '  <td colspan="3"><div class="error">' + json['shipping_method'][i]['error'] + '</div></td>';
						html += '</tr>';						
					}
				}
				
				html += '  </table>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#postcode-required').show();
			} else {
				$('#postcode-required').hide();
			}
			
			html = '<option value=""><?php echo $text_select; ?></option>';
			
			if (json['zone'] != '') {
				for (i = 0; i < json['zone'].length; i++) {
        			html += '<option value="' + json['zone'][i]['zone_id'] + '"';
	    			
					if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
	      				html += ' selected="selected"';
	    			}
	
	    			html += '>' + json['zone'][i]['name'] + '</option>';
				}
			} else {
				html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
			}
			
			$('select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>
