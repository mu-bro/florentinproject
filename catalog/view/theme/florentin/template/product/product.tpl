<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="no_margin"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <div class="product-info">
		<?php if ($thumb || $images) { ?>
			<div class="left">
				<?php if ($thumb) { ?>
					<div class="image"><a href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" id="image" /></a></div>
				<?php } ?>
				<?php if ($images) { ?>
					<div class="image-additional">
						<?php foreach ($images as $image) { ?>
							<a href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>" class="colorbox"><img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
						<?php } ?>
					</div>
				<?php } ?>
			</div>
		<?php } ?>
    <div class="right">
		<h1><?php echo $heading_title; ?></h1>
		<?php echo $description; ?>
	</div>
	<div class="right">
      <?php if ($price) { ?>
		<div class="price">
			<?php if (!$special) { ?>
				<?php echo $price; ?>
			<?php } else { ?>
				<span class="price-new"><?php echo $special; ?></span>
				<span class="price-old"><?php echo $price; ?></span>				
			<?php } ?>
			<br />
			<?php if ($points) { ?>
				<span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span><br />
			<?php } ?>
			<?php if ($discounts) { ?>
				<br />
				<div class="discount">
					<?php foreach ($discounts as $discount) { ?>
						<?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?><br />
					<?php } ?>
				</div>
			<?php } ?>
		</div>
      <?php } ?>      
      <div class="description">
        <?php if ($reward) { ?>
        <span class="product_special_text"><?php echo $text_reward; ?></span> <?php echo $reward; ?><br />
        <?php } ?>
        <span class="product_special_text"><?php echo $text_stock; ?></span> <?php echo $stock; ?></div>
      <?php if ($options) { ?>
      <div class="options" style="display:none;">
        <?php foreach ($options as $option) { ?>
        <?php if ($option['type'] == 'select') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
			<span class="required">*</span>
          <?php } ?>
          <div class="product_special_text"><?php echo $option['name']; ?>:</div>
          <select name="option[<?php echo $option['product_option_id']; ?>]">
            <option value=""><?php echo $text_select; ?></option>
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
            </option>
            <?php } ?>
          </select>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'radio') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <div class="product_special_text"><?php echo $option['name']; ?>:</div>
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'checkbox') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <div class="product_special_text"><?php echo $option['name']; ?>:</div>
          <?php foreach ($option['option_value'] as $option_value) { ?>
          <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" />
          <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
            <?php if ($option_value['price']) { ?>
            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
            <?php } ?>
          </label>
          <br />
          <?php } ?>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'image') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <div class="product_special_text"><?php echo $option['name']; ?>:</div>
          <table class="option-image">
            <?php foreach ($option['option_value'] as $option_value) { ?>
            <tr>
              <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
              <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </label></td>
            </tr>
            <?php } ?>
          </table>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'text') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <div class="product_special_text"><?php echo $option['name']; ?>:</div>
			<?php if ($option['option_id'] == 17) { ?>
				<input class="phone_mask" type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
			<?php } else { ?>
				<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" />
			<?php } ?>                    
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'textarea') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <div class="product_special_text">
				<?php echo $option['name']; ?>
				<?php if ($option['option_id'] == 14) echo "<span class='sub'>(200 символов)</span>"; ?>
          :</div>

          
			<?php if ($option['option_id'] == 14) { ?>
				<textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="20" rows="5" placeholder="Оставьте послание для получателя" maxlength="200"><?php echo $option['option_value']; ?></textarea>
			<?php } else { ?>
				<textarea name="option[<?php echo $option['product_option_id']; ?>]" cols="20" rows="5"><?php echo $option['option_value']; ?></textarea>
			<?php } ?>
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'file') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <div class="product_special_text"><?php echo $option['name']; ?>:</div>
          <input type="button" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" class="button">
          <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'date') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <div class="product_special_text"><?php echo $option['name']; ?>:</div>
			<div class="date_block">
				<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="date" />
				<div></div>
			</div>          
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'datetime') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <div class="product_special_text"><?php echo $option['name']; ?>:</div>
			<div class="date_block">
				<input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="datetime" />
				<div></div>
			</div>
			
        </div>
        
        <?php } ?>
        <?php if ($option['type'] == 'time') { ?>
        <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
          <?php if ($option['required']) { ?>
          <span class="required">*</span>
          <?php } ?>
          <div class="product_special_text"><?php echo $option['name']; ?>:</div>
          <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['option_value']; ?>" class="time" />
        </div>
        
        <?php } ?>
        
        <?php } ?>
      </div>
      <?php } ?>
      <div class="cart">
        <div>
			<div class="product_special_text"><?php echo $text_qty; ?></div>
			<input type="text" name="quantity" size="2" value="<?php echo $minimum; ?>" />        
			<input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" style="width:20px;text-align:center;"/>
			<div class="cart_button">
				<input type="button" value="<?php echo $button_cart; ?>" onclick="func_add2cart(true);" id="button-cart" class="button big_b" />
				<input type="button" value="<?php echo $button_add2cart; ?>" onclick="func_add2cart(false);" class="button big_b" />
				
				<a href="#quick_order_box" id="quick_order" class="button big_b blue_b" style="margin-top:30px;" ><?php echo $button_quick_order; ?></a>
			</div>
        </div>
        <?php if ($minimum > 1) { ?>
        <div class="minimum"><?php echo $text_minimum; ?></div>
        <?php } ?>
      </div>
      <?php if ($review_status) { ?>
      <div class="review">
        <div><img src="catalog/view/theme/default/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a></div>
        <div class="share">
		<!-- AddThis Button BEGIN -->
			<div class="share42init" data-image="<?php echo $thumb; ?>"></div>
			<script type="text/javascript" src="catalog/view/javascript/jquery/share42/share42.js"></script> 
		<!-- AddThis Button END --> 
        </div>
      </div>
      <?php } ?>
    </div>
    <div class="clear"></div>
  </div>

  <div class="product_special_text central"><?php echo $text_flowers_list; ?></div>
  <?php if ($products) { ?>
  <div class="product-grid">
    <?php foreach ($products as $product) { ?>
    <div>
		<div class="image_block">
			<?php if ($product['thumb']) { ?>
				<div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
			<?php } ?>
			<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
			<?php if ($product['price']) { ?>
				<div class="price">
					<?php if (!$product['special']) { ?>
						<?php echo $product['price']; ?>
					<?php } else { ?>
						<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
					<?php } ?>
						<?php if ($product['tax']) { ?>
						<br />
						<span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
					<?php } ?>
				</div>
			<?php } ?>
			<div class="cart">
				<input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button big_b" />
			</div>			
		</div>
		<div class="description"><?php echo $product['short_descr']; ?></div>
    </div>
    <?php } ?>
  </div>
  <div class="pagination hidden"><?php echo $pagination; ?></div>
  <?php } ?>  

			 
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		overlayClose: true,
		opacity: 0.5,
		rel: "colorbox"
	});
});
//--></script> 
<script type="text/javascript"><!--
<?php if ($options) { ?>
	first_time = true;
<?php } else { ?>
	first_time = false;
<?php } ?>  
function func_add2cart(is_redirect) {
	if (first_time) {
		$('.options').slideDown('slow');
		first_time = false;
	} else {
		$.ajax({
			url: 'index.php?route=checkout/cart/add',
			type: 'post',
			data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
			dataType: 'json',
			success: function(json) {
				$('.success, .warning, .attention, information, .error').remove();

				if (json['error']) {
					if (json['error']['option']) {
						for (i in json['error']['option']) {
							$('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
						}
					}
				}

				if (json['success']) {
					if (is_redirect) {
						location = '<?php echo $this->url->link("checkout/checkout"); ?>';
					} else {
						$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
						$('.success').fadeIn('slow');
						$('#cart-total').html(json['total']);
						$('html, body').animate({ scrollTop: 0 }, 'slow');
					}
				}
			}
		});
	}
}
//--></script>
<?php if ($options) { ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/ajaxupload.js"></script>
<?php foreach ($options as $option) { ?>
<?php if ($option['type'] == 'file') { ?>
<script type="text/javascript"><!--
new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
	action: 'index.php?route=product/product/upload',
	name: 'file',
	autoSubmit: true,
	responseType: 'json',
	onSubmit: function(file, extension) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/default/image/loading.gif" class="loading" style="padding-left: 5px;" />');
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
	},
	onComplete: function(file, json) {
		$('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
		
		$('.error').remove();
		
		if (json['success']) {
			alert(json['success']);
			
			$('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
		}
		
		if (json['error']) {
			$('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
		}
		
		$('.loading').remove();	
	}
});
//--></script>
<?php } ?>
<?php } ?>
<?php } ?>
<script type="text/javascript"><!--
$('#review .pagination a').live('click', function() {
	$('#review').fadeOut('slow');
		
	$('#review').load(this.href);
	
	$('#review').fadeIn('slow');
	
	return false;
});			

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').bind('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-review').attr('disabled', true);
			$('#review-title').after('<div class="attention"><img src="catalog/view/theme/default/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-review').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(data) {
			if (data['error']) {
				$('#review-title').after('<div class="warning">' + data['error'] + '</div>');
			}
			
			if (data['success']) {
				$('#review-title').after('<div class="success">' + data['success'] + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
	$('#quick_order').fancybox();
//--></script> 
<div style="display:none;">
	<div id="quick_order_box">
		<h1>Быстрый заказ</h1>
		<p class="sub_text">
			Заполните форму! Наш менеджер свяжется с Вами и уточнит все детали заказа!
		</p>
		<table class="form">
			<tr>
			<td>
				<input type="text" name="name" value="<?php echo $this->customer->getFirstName(); ?>" placeholder="Ваше имя" />
			</td>
			<td id="for_name"></td>
			</tr>
			<tr>
			<td>				
				<input type="text" class="phone_mask" name="phone" value="<?php echo $this->customer->getTelephone(); ?>" placeholder="Ваш телефон" />
			</td>
			<td id="for_phone"></td>
			</tr>
        </table>
		<p class="sub_text">
			Перед отправкой внимательно проверьте номер Вашего телефона!
		</p>
		<a id="quick_order_send" class="button big_b blue_b" >Заказать</a>
	</div>
</div>
<script type="text/javascript"><!--
$(document).ready(function() {
	jQuery('.date').datetimepicker({
		onGenerate:function( ct ){
			jQuery(this).find('.xdsoft_date.disableDates')
			.addClass('xdsoft_disabled');
		},
		defaultSelect: false,
		closeOnWithoutClick :false,
		timepicker:false,
		todayButton: false,
		disableDates:['<?php echo implode("','",$weekends); ?>'],
		minDate:'<?php echo $min_date; ?>',
		format:'d.m.Y'
	});
	$('.datetime').datetimepicker({
		format:'d.m.Y H:i'
	});
	$('.time').datetimepicker({
		timeFormat: 'h:m',
		datepicker:false
	});

	$('.date_block div').bind('click',function() {
		$(this).parent().find('input').datetimepicker('show');
	});

	$('#quick_order_send').bind('click', function() {
		name = $('#quick_order_box input[name="name"]').val();
		phone = $('#quick_order_box input[name="phone"]').val();
		qty = $('.cart input[name="quantity"]').val();
		$.ajax({
			url: 'index.php?route=checkout/cart/quick_order&product_id=<?php echo $product_id; ?>',
			type: 'post',
			dataType: 'json',
			data: 'name=' + name + '&phone=' + phone + '&qty=' + qty,
			beforeSend: function() {
				$('.success, .warning, .error, .wait').remove();
				$('#quick_order_send').attr('disabled', true);
				$('#quick_order_send').after('<img class="wait" src="catalog/view/theme/default/image/loading.gif" alt="" />');
			},
			complete: function() {
				$('#button-review').attr('disabled', false);
				$('.wait').remove();
			},
			success: function(json) {
				if (json['error']) {
					if (json['error']) {
						for (i in json['error']) {
							
							$('#quick_order_box td#for_' + i).html('<span class="error">' + json['error'][i] + '</span>');
						}
					}
				}

				if (json['success']) {
					$("#quick_order_box").prepend('<div class="success">' + json['success'] + '</div>');
					$('.fancybox-close').trigger('click');

					$('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/default/image/close.png" alt="" class="close" /></div>');
					$('.success').fadeIn('slow');
					$('html, body').animate({ scrollTop: 0 }, 'slow');
				}
			}
		});
	});

	$(function(){
		$.mask.definitions['x'] = '[0-9]';
	});
	$(function(){
		$('.phone_mask').mask("+7 (xxx) xxx xxxx", {placeholder:"_"});
	});


});
//--></script>
<?php echo $footer; ?>